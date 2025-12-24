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
    
    # Find the versioned APK
    version_suffix = f"v{version_name}"
    apk_name = f"dflix-{version_suffix}.apk"
    apk_path = apk_name
    
    item = {
        "name": "Aniyomi: Dflix",
        "pkg": "eu.kanade.tachiyomi.animeextension.all.dflix",
        "apk": apk_name,
        "lang": "all",
        "code": int(version_code),
        "version": str(version_name),
        "nsfw": 0,
        "hasReadme": 0,
        "hasChangelog": 0,
        "icon": "https://raw.githubusercontent.com/salmanbappi/dflix/master/res/mipmap-xxxhdpi/ic_launcher.png"
    }
    
    if os.path.exists(apk_path):
        item["size"] = get_apk_size(apk_path)
        item["sha256"] = get_file_sha256(apk_path)

    # index.min.json
    repo_data = [item]
    with open("index.min.json", "w") as f:
        json.dump(repo_data, f, separators=(',', ':'))

    # repo.json
    repo_info = {
        "meta": {
            "name": "SalmanBappi Extensions",
            "shortName": "salmanbappi",
            "website": "https://github.com/salmanbappi/dflix",
            "signingKeyFingerprint": "c7ebe223044970f2f9738f600dc25c180d3ed03994e088aaf5709338c57b93af"
        }
    }
    with open("repo.json", "w") as f:
        json.dump(repo_info, f, indent=2)

if __name__ == "__main__":
    generate()
