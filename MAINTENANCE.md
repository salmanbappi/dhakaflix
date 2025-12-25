# DhakaFlix Extension Maintenance Rules

## 1. App Explanation
DhakaFlix is an Aniyomi/Anikku extension specifically built to support Bangladeshi BDIX IP-based streaming infrastructure. It parses dynamic IP directories (e.g., `172.16.50.x`) and CMS pages to provide movies and TV series.

## 2. How to Push Updates
1.  **Modify Code:** Make changes to Smali files or Filters.
2.  **Commit:** Stage and commit your changes.
3.  **Push:** Push to the `master` branch: `git push origin master`.
4.  **Automatic Build:** A GitHub Action will automatically:
    *   Increment the version.
    *   Sync `apktool.yml` and `AndroidManifest.xml`.
    *   Build and Sign the APK.
    *   Create a GitHub Release.
    *   Update the Extension Repository.

## 3. Versioning Restrictions & Limits
- **Critical Synchronization:** The version information MUST be identical in both `apktool.yml` and `AndroidManifest.xml`.
- **Version Code Limit:** To prevent detection issues, if the `versionCode` reaches `1049`, the build script is configured to automatically reset it back to `1010`.
- **Downgrading:** If you manually push a version lower than what is currently installed, you **must** uninstall the old app from your phone first.

## 4. Technical Details
- **Signing Fingerprint:** `c7ebe223044970f2f9738f600dc25c180d3ed03994e088aaf5709338c57b93af`
- **Keystore Pass:** `dhakaflix123`
- **Package:** `eu.kanade.tachiyomi.animeextension.all.dhakaflix`

## 5. Troubleshooting
If the extension disappears:
1. Verify package name consistency.
2. Check `git log` to ensure the automation bot successfully committed the synchronized version files.