#!/bin/bash
LOG_FILE="build_log.txt"
MAX_RETRIES=3
RETRY_COUNT=0
build_apk() {
    apktool b . -o dhakaflix-unsigned.apk > "$LOG_FILE" 2>&1
}
fix_manifest() {
    sed -i 's/>>/ >/g' AndroidManifest.xml
    sed -i 's/platformBuildVersionCode="[^"]*"//g' AndroidManifest.xml
    sed -i 's/platformBuildVersionName="[^"]*"//g' AndroidManifest.xml
}
while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    if build_apk; then
        exit 0
    else
        if grep -q "AndroidManifest.xml" "$LOG_FILE"; then fix_manifest; fi
        RETRY_COUNT=$((RETRY_COUNT + 1))
    fi
done
exit 1
