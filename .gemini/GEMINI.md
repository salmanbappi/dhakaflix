# DhakaFlix Extension Maintenance Log

This document serves as a persistent context for Gemini CLI or other LLMs maintaining the DhakaFlix Aniyomi extension.

## Project Context
- **Project Name:** DhakaFlix
- **Type:** Aniyomi/Anikku Extension (Android)
- **Status:** Patched to support new BDIX IP-based website infrastructure.
- **Base URL:** `http://172.16.50.9`
- **Build System:** GitHub Actions using Apktool & apksigner.

## Major Updates (Dec 24, 2025)

### 1. Website Infrastructure Shift
- The source website migrated from `dhakaflix.discoveryftp.net` to a direct IP-based portal (`http://172.16.50.9`).
- The new site uses an **H5AI / FTP-style directory listing** instead of a rendered web portal.
- Logic in `DhakaFlix.smali` was refactored to parse `<a>` tags for folders (as `SAnime`) and files (as `SEpisode`).

### 2. Critical Fixes
- **Interface Crash Fix:** Fixed a runtime crash where `SEpisode` methods were called using `invoke-virtual`. Since `SEpisode` is an interface, it must use `invoke-interface`.
- **Cleartext Traffic:** Added `android:usesCleartextTraffic="true"` to `AndroidManifest.xml` to allow the playback of HTTP video streams from the BDIX server.
- **Header Injection:** Updated `getVideoList` to inject global headers (User-Agent, Referer) into the `Video` object constructor to prevent server-side request rejection.
- **Thumbnail Logic:** Since the new site is a directory listing, cover images are now consistently mapped to `a_AL_.jpg` located within each movie/series folder.

### 3. Filter System
- Updated `Filters.smali` and `FilterData.smali` to include 19 categories based on the current directory structure of the BDIX server (including Hindi 2025, 1080p sections, and various TV Series subfolders).

## Known Architecture
- **CookieManager.smali:** Handles dummy login to prevent logout loops, though currently pointing to `http://172.16.50.9/`.
- **DhakaFlix.smali:** Contains core parsing logic. Uses `getGlobalHeaders()` via lazy delegates (`globalHeaders$delegate`).

## Deployment
- Builds are triggered automatically on push to the `master` branch via GitHub Actions.
- Successful builds generate a signed APK, create a GitHub Release, and push the artifact to the `extensions-repo`.