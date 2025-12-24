#!/bin/bash

# This script attempts to fix common Apktool build errors automatically
LOG_FILE="build_log.txt"
MAX_RETRIES=3
RETRY_COUNT=0

build_apk() {
    echo "Attempting build (Attempt $((RETRY_COUNT + 1))...)"
    apktool b . -o dhakaflix-unsigned.apk > "$LOG_FILE" 2>&1
    return $?
}

fix_manifest() {
    echo "Common failure detected in AndroidManifest.xml. Attempting to sanitize..."
    # Remove double brackets, trailing junk, or invalid attributes often introduced by automated renaming
    sed -i 's/>>/ >/g' AndroidManifest.xml
    sed -i 's/platformBuildVersionCode="[^"]*"//g' AndroidManifest.xml
    sed -i 's/platformBuildVersionName="[^"]*"//g' AndroidManifest.xml
    # Ensure the manifest tag ends correctly
    sed -i 's/<manifest[^>]*>/& /' AndroidManifest.xml
}

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    if build_apk; then
        echo "Build successful!"
        exit 0
    else
        echo "Build failed. Analyzing logs..."
        if grep -q "AndroidManifest.xml" "$LOG_FILE"; then
            fix_manifest
        elif grep -q "resource" "$LOG_FILE"; then
            echo "Resource conflict detected. Removing forcedPackageId if present..."
            sed -i '/forcedPackageId/d' apktool.yml
        fi
        RETRY_COUNT=$((RETRY_COUNT + 1))
    fi
done

echo "Failed to fix build after $MAX_RETRIES attempts."
cat "$LOG_FILE"
exit 1
