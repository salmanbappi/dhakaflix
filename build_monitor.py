import subprocess
import time
import sys
import json

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result

def monitor_build():
    print("Getting current commit hash...")
    rev_info = run_cmd("git rev-parse HEAD")
    if rev_info.returncode != 0:
        print("Failed to get commit hash.")
        return False
    commit_hash = rev_info.stdout.strip()
    print(f"Commit: {commit_hash}")

    print("Pushing changes to GitHub...")
    push = run_cmd("git push origin master --force")
    if push.returncode != 0:
        print(f"Push failed: {push.stderr}")
        return False

    # Refresh commit hash in case push included something else (unlikely here but safe)
    rev_info = run_cmd("git rev-parse HEAD")
    commit_hash = rev_info.stdout.strip()

    print("Monitoring GitHub Action for commit " + commit_hash + "...")
    time.sleep(15) # Give it a moment to start
    
    start_time = time.time()
    while True:
        # Get the run associated with this commit
        cmd = f"export GH_REPO=salmanbappi/dhakaflix && gh run list --commit {commit_hash} --limit 1 --json status,conclusion,url,databaseId"
        run_info = run_cmd(cmd)
        if run_info.returncode != 0:
            print("Failed to get run list. Error: " + run_info.stderr)
            time.sleep(10)
            continue
            
        runs = json.loads(run_info.stdout)
        if not runs:
            print("No runs found for this commit yet. Waiting...")
            time.sleep(10)
            # Timeout after 3 minutes of not even finding the run
            if int(time.time() - start_time) > 180:
                 print("Timed out waiting for run to appear.")
                 return False
            continue
            
        run = runs[0]
        status = run['status']
        conclusion = run['conclusion']
        run_url = run['url']
        
        elapsed = int(time.time() - start_time)
        print(f"Status: {status} | Conclusion: {conclusion} | Elapsed: {elapsed}s")
        
        if status == "completed":
            if conclusion == "success":
                print("BUILD SUCCESS!")
                return True
            else:
                print(f"BUILD FAILED! URL: {run_url}")
                print("Fetching logs...")
                logs = run_cmd(f"export GH_REPO=salmanbappi/dhakaflix && gh run view {run['databaseId']} --log")
                with open("failed_build_log.txt", "w") as f:
                    f.write(logs.stdout)
                return False
        
        # Timeout after 15 minutes
        if elapsed > 900:
            print("Build monitoring timed out.")
            return False
            
        time.sleep(20) # Poll every 20 seconds

if __name__ == "__main__":
    if monitor_build():
        sys.exit(0)
    else:
        sys.exit(1)
