#!/bin/bash
APKTOOL_YML="apktool.yml"

if [ ! -f "$APKTOOL_YML" ]; then
    echo "Error: $APKTOOL_YML not found!"
    exit 1
fi

# Extract current versionCode
CURRENT_CODE=$(grep "versionCode:" "$APKTOOL_YML" | awk '{print $2}' | tr -d "'\""")
if [ -z "$CURRENT_CODE" ]; then
    CURRENT_CODE=0
fi

# We want a very high version code to ensure it's always an upgrade
# Base it on a high number + run number
if [ -n "$1" ]; then
    # Add 1000 to run number to stay away from old version codes
    NEW_CODE=$((1000 + $1))
else
    NEW_CODE=$((CURRENT_CODE + 1))
fi

# Ensure it never goes backwards
if [ "$NEW_CODE" -le "$CURRENT_CODE" ]; then
    NEW_CODE=$((CURRENT_CODE + 1))
fi

# HARDCODE version to 14.1 as requested
NEW_VERSION="14.1"

# Update apktool.yml
sed -i "s/versionCode:[[:space:]]*$CURRENT_CODE/versionCode: $NEW_CODE/" "$APKTOOL_YML"
sed -i "s/versionName:[[:space:]]*[0-9.]*/versionName: $NEW_VERSION/" "$APKTOOL_YML"

echo "Bumped versionCode to $NEW_CODE and versionName to $NEW_VERSION"