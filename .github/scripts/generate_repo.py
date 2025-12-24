import json
import yaml
import os
import hashlib

def get_apk_size(file_path):
    return os.path.getsize(file_path)

def get_file_sha256(file_path):
    with open(file_path, "rb") as f:
        return hashlib.sha256(f.read()).hexdigest()

def generate():
    with open("apktool.yml", "r") as f:
        apktool = yaml.safe_load(f)
    
    version_info = apktool.get("versionInfo", {})
    version_name = version_info.get("versionName")
    version_code = version_info.get("versionCode")
    
    apks = [f for f in os.listdir(".") if f.startswith("dhakadev") and f.endswith(".apk")]
    if not apks:
        print("No APK found!")
        return
        
    apk_file = apks[0]
    
    branch = os.environ.get("GITHUB_REF_NAME", "master")
    
    item = {
        "name": "Dhakadev",
        "pkg": "eu.kanade.tachiyomi.animeextension.all.dhakaflix",
        "apk": apk_file,
        "lang": "all",
        "code": int(version_code),
        "version": str(version_name),
        "nsfw": 0,
        "hasReadme": 0,
        "hasChangelog": 0,
        "icon": f"https://raw.githubusercontent.com/salmanbappi/dhakaflix/{branch}/res/mipmap-xxxhdpi/ic_launcher.png",
        "size": get_apk_size(apk_file),
        "sha256": get_file_sha256(apk_file)
    }

    repo_data = [item]

    with open("index.min.json", "w") as f:
        json.dump(repo_data, f, separators=(',', ':'))

    repo_info = {
        "meta": {
            "name": "SalmanBappi Extensions",
            "shortName": "salmanbappi",
            "website": "https://github.com/salmanbappi/dhakaflix",
            "signingKeyFingerprint": "c7ebe223044970f2f9738f600dc25c180d3ed03994e088aaf5709338c57b93af"
        }
    }
    with open("repo.json", "w") as f:
        json.dump(repo_info, f, indent=2)

if __name__ == "__main__":
    generate()