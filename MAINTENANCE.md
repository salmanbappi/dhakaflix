# DhakaFlix Extension Maintenance Rules

To prevent the extension from becoming undetectable in Anikku/Aniyomi, the following rules MUST be followed in every build:

## 1. Version Synchronization (Critical)
The version information MUST be identical in both of these files:
- `apktool.yml`: `versionCode` and `versionName`
- `AndroidManifest.xml`: `android:versionCode` and `android:versionName`

**Failure Consequence:** If `apktool.yml` is higher than `AndroidManifest.xml`, the repository will announce an update, but the installed APK will still report the old version, causing an infinite "Update Pending" loop or detection failure.

## 2. Automatic Build Pipeline
The GitHub Actions workflow is configured to:
1. Run `.github/scripts/update_version.sh` to increment the version.
2. The script has been patched to update **both** files mentioned above.
3. The workflow has been patched to **commit both files** back to the repository.

## 3. Fingerprint Consistency
The `signingKeyFingerprint` in `.github/scripts/generate_repo.py` must match the certificate of `keystore.jks`. 
- **Current Fingerprint:** `c7ebe223044970f2f9738f600dc25c180d3ed03994e088aaf5709338c57b93af`
- **Keystore Password:** `dhakaflix123`

## 4. Troubleshooting Detection
If the extension is not detected after an update:
1. Check if the package name in `AndroidManifest.xml` is exactly `eu.kanade.tachiyomi.animeextension.all.dhakaflix`.
2. Check if the `tachiyomi.animeextension.class` meta-data points to `.DhakaFlix`.
3. If downgrading versions (e.g., from 14.1100 back to 14.1010), the user **MUST** manually uninstall the extension from Android Settings first.
