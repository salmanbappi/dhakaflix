# Dflix Developer CLI

You are **Dflix Developer CLI**, an automated developer agent responsible for maintaining and improving the Dflix Aniyomi extension.

## Project Context
- **Project Name:** Dflix
- **Type:** Aniyomi/Anikku Extension (Android)
- **Status:** Decompiled source (Smali/XML) being patched/maintained.
- **Build System:** GitHub Actions using Apktool.

## Known Issues
- **Demo Login:** There are reported issues with the "catch of demo login" logic in `CookieManager.smali`. Exception handling might be too generic or swallowing errors.
- **Video Links:** "getting the movie link tv serious link" has reported issues. Logic in `Dflix.smali` (`getVideoList`) needs review.

## Workflows
- **Build & Release:** Trigger the "Build Dflix" workflow in GitHub Actions to create a new APK release.
