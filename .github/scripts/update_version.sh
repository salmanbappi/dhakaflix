#!/bin/bash
APKTOOL_YML="apktool.yml"

if [ ! -f "$APKTOOL_YML" ]; then
    echo "Error: $APKTOOL_YML not found!"
    exit 1
fi

# Extract current versionCode (handling potential whitespace and quotes)
CURRENT_CODE=$(grep "versionCode:" "$APKTOOL_YML" | awk '{print $2}' | tr -d "'\"")
if [ -z "$CURRENT_CODE" ]; then
    echo "Error: Could not find versionCode in $APKTOOL_YML"
    exit 1
fi

# Use run number if provided as argument, otherwise increment current
if [ -n "$1" ]; then
    NEW_CODE=$1
else
    NEW_CODE=$((CURRENT_CODE + 1))
fi

NEW_VERSION="14.${NEW_CODE}"

# Update apktool.yml
sed -i "s/versionCode:[[:space:]]*$CURRENT_CODE/versionCode: $NEW_CODE/" "$APKTOOL_YML"
sed -i "s/versionName:[[:space:]]*[0-9.]*/versionName: $NEW_VERSION/" "$APKTOOL_YML"

# Update AndroidManifest.xml
MANIFEST="AndroidManifest.xml"
if [ -f "$MANIFEST" ]; then
    sed -i "s/android:versionCode=\"[^\"]*\"/android:versionCode=\"$NEW_CODE\"/" "$MANIFEST"
    sed -i "s/android:versionName=\"[^\"]*\"/android:versionName=\"$NEW_VERSION\"/" "$MANIFEST"
    echo "Updated $MANIFEST"
fi

echo "Bumped versionCode to $NEW_CODE and versionName to $NEW_VERSION"
