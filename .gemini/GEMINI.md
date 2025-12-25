# DhakaFlix Extension Maintenance Log

This document serves as a persistent context for Gemini CLI or other LLMs maintaining the DhakaFlix Aniyomi extension.

## Project Context
- **Project Name:** DhakaFlix
- **Type:** Aniyomi/Anikku Extension (Android)
- **Status:** Patched to support new BDIX IP-based website infrastructure.
- **Base URL:** `http://172.16.50.9`
- **Build System:** GitHub Actions using Apktool & apksigner.

## Major Updates (Dec 25, 2025)

### 1. Build and Infrastructure Fixes
- **GitHub Actions Fix:** Resolved build failure caused by incorrect APK selection logic in `generate_repo.py` and YAML parsing issues with `!!brut.androlib.meta.MetaInfo` tag.
- **Versioning Alignment:** Synchronized `apktool.yml` and `AndroidManifest.xml` to use consistent versioning (v14.1002, code 1002) to ensure updates are recognized.
- **Keystore Verification:** Verified `keystore.jks` integrity and password (`dflix123`).

### 2. Filter and Search Enhancements
- **Search Integration:** Fixed the filter system by implementing search query handling in `Filters.smali`. When a search query is provided, it now correctly targets `http://172.16.50.9/search?term=<query>&types=movies`.
- **Logic Stabilization:** Standardized `getUrl` logic to gracefully handle null or empty filter lists, defaulting to the latest Hindi Movies (2025) category.

## Known Architecture
- **CookieManager.smali:** Handles dummy login to prevent logout loops, though currently pointing to `http://172.16.50.9/`.
- **DhakaFlix.smali:** Contains core parsing logic. Uses lazy delegates for CookieManager and headers.

## Deployment
- Builds are triggered automatically on push to the `master` branch via GitHub Actions.
- Successful builds generate a signed APK, create a GitHub Release, and push the artifact to the `extensions-repo`.
