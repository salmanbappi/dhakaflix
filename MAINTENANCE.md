# DhakaFlix Technical Maintenance Guide

This document tracks the actual technical root causes of failures found during the Dec 2025 maintenance session. Follow these rules to prevent regressions.

## 1. Absolute URL Handling (Critical)
**Culprit:** Using `src` or `href` instead of `abs:src` or `abs:href`.
**Finding:** DhakaFlix servers use relative paths (e.g., `/img/poster.jpg`). JSoup `attr("src")` returns exactly that, which causes 404s in the app.
**Rule:** ALWAYS use the `abs:` prefix when extracting URLs from HTML attributes in Smali.
*   Correct: `const-string v2, "abs:src"`
*   Incorrect: `const-string v2, "src"`

## 2. Smali Register Management
**Culprit:** Overwriting registers (especially `v0`) containing critical data.
**Finding:** Logic like thumbnail prediction failed because `v0` (storing the Base URL) was being overwritten by subsequent `if-nez` or method return values.
**Rule:** When building strings or performing conditional logic, use higher-indexed registers (e.g., `v6`, `v7`, `v8`) for variables that need to persist throughout the method. Keep `v0-v3` for temporary/disposable operations.

## 3. Media Type Branching (Movies vs Series)
**Culprit:** `episodeListParse` failing to handle the "m" (movie) media type.
**Finding:** The extension used `getMediaType` to check for "s" (series). If it wasn't "s", it defaulted to directory listing. Since movies are "m", they fell into directory listing and returned "No results found."
**Rule:** `episodeListParse` must have explicit branches for both media types:
1.  Check if type == "s" -> call `extractEpisode` / `sortEpisodes`.
2.  Check if type == "m" -> call `getMovieMedia`.
3.  Fallback -> call `parseDirectoryRecursive`.

## 4. CSS Selector Robustness
**Culprit:** Using overly specific "Deep" selectors.
**Finding:** Selectors like `div.container > div > div.card` broke when the site removed a single wrapper div. 
**Rule:** Use "Shallow" class-based selectors. Instead of the full path, use `div.card`. For images, use comma-separated lists to handle different CMS layouts:
*   `"figure.movie-detail-banner img, .movie-detail-banner img, .poster img, .col-md-3 img"`

## 5. Version Synchronization
**Culprit:** `apktool.yml` and `AndroidManifest.xml` becoming desynchronized.
**Finding:** Anikku/Aniyomi uses the version from the repo index (sourced from `apktool.yml`) to detect updates, but checks the version in `AndroidManifest.xml` of the installed APK. If they don't match, the app enters an infinite update loop or fails to detect the extension.
**Rule:** Every build MUST update the `versionCode` and `versionName` in BOTH files to the exact same values.

## 6. Directory Thumbnail Prediction
**Finding:** Servers use different filenames for thumbnails in raw directory listings.
*   `.7` servers -> `a_AL_.jpg`
*   `.12` servers -> `a_VL_.jpg`
*   `.14` servers -> `a11.jpg`
**Rule:** Always check the IP/Hostname of the URL before assigning a fallback thumbnail.
