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
- **Keystore Verification:** Verified `keystore.jks` integrity and password (`dhakaflix123`).

### 2. Filter and Search Enhancements
- **Search Integration:** Fixed the filter system by implementing search query handling in `Filters.smali`. When a search query is provided, it now correctly targets `http://172.16.50.9/search?term=<query>&types=movies`.
- **Logic Stabilization:** Standardized `getUrl` logic to gracefully handle null or empty filter lists, defaulting to the latest Hindi Movies (2025) category.

### 3. Parsing and Image Fixes (v14.1019 - v14.1020)
- **Image Loading:** Updated `popularAnimeParse` in `DhakaFlix.smali` to use `a11.jpg` as the fallback thumbnail for directory listings. In **v14.1020**, transitioned to dynamic image selectors in `getMovieDetails` and `getSeriesDetails` (using broad CSS selectors) to automatically pick the first available poster/banner image if standard locations change.
- **Search Fix:** Modified `Filters.smali` to use `&types=movies` instead of `&types=movies,series`, which was reported to return no results.
- **Episode Parsing:** Relaxed the CSS selector in `extractEpisode` from `div.container > div > div.card` to `div.card` to prevent "No results found" errors due to HTML structure changes.

### 4. Filter and Image Loader Overhaul (v14.1128)
- **Filter Fixes:**
    - Appended `&types=movies` to the search URL in `Filters.smali` to ensure correct content filtering during searches.
    - Enabled the "Year / Folder" filter for **all** applicable categories (Hindi, English, 1080p, South Indian, Kolkata Bangla, Animation, Foreign, Korean, Documentary, WWE, Awards, IMDb, 3D, and Trending) by fully implementing `getYearPath` across the switch logic.
- **Image Loading:**
    - Refined the image selector in `popularAnimeParse` (`DhakaFlix.smali`) to explicitly target valid poster/banner filenames (matching `a11`, `poster`, `banner`, `thumb`) and exclude icons/back buttons.
    - **Server Specifics:** Implemented logic to prioritize `a11.jpg` for Server 9 (Anime) and `a_AL_.jpg` for Servers 12 (TV) and 14 (Movies), as they use different naming conventions for folder thumbnails.
- **Versioning:** Bumped version to **v14.1128** (Code: `1128`).

### 5. Regression Fixes (v14.1143)
- **Critical Fix:** Reverted URL encoding in `Filters.smali` and `DhakaFlix.smali` (v14.1140-1142) which broke filters like "English Movies (1080p)", "South Indian Movies", and Anime image loading. The server expects raw spaces and parentheses in directory paths.
- **Search Fix:** Reverted search logic to use `POST` (as in v14.1138) because the `GET` implementation returning "No results".
- **Versioning:** Bumped to **v14.1143** (Code: `1143`).

## Known Architecture
- **CookieManager.smali:** Handles dummy login to prevent logout loops, though currently pointing to `http://172.16.50.9/`.
- **DhakaFlix.smali:** Contains core parsing logic. Uses lazy delegates for CookieManager and headers.

## Deployment
- Builds are triggered automatically on push to the `master` branch via GitHub Actions.
- Successful builds generate a signed APK, create a GitHub Release, and push the artifact to the `extensions-repo`.
