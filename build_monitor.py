import subprocess
import time
import sys
import json

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return result

def monitor_build():
    print("Pushing changes to GitHub...")
    push = run_cmd("git push origin master --force")
    if push.returncode != 0:
        print(f"Push failed: {push.stderr}")
        return False

    print("Monitoring GitHub Action...")
    time.sleep(10) # Give it a moment to start
    
    start_time = time.time()
    while True:
        # Get the latest run
        run_info = run_cmd("gh run list --limit 1 --json status,conclusion,url,databaseId")
        if run_info.returncode != 0:
            print("Failed to get run list.")
            time.sleep(10)
            continue
            
        runs = json.loads(run_info.stdout)
        if not runs:
            print("No runs found.")
            time.sleep(10)
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
                logs = run_cmd(f"gh run view {run['databaseId']} --log")
                with open("failed_build_log.txt", "w") as f:
                    f.write(logs.stdout)
                return False
        
        # Timeout after 15 minutes
        if elapsed > 900:
            print("Build monitoring timed out.")
            return False
            
        time.sleep(30) # Poll every 30 seconds

if __name__ == "__main__":
    if monitor_build():
        sys.exit(0)
    else:
        sys.exit(1)
