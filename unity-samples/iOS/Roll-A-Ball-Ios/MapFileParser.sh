#!/bin/sh
if [ "$UNITY_SCRIPTING_BACKEND" = "il2cpp" ]
then
    if [ -f "$PROJECT_DIR/MapFileParser" ]
    then
        if [[ $ARCHS == *"armv7"* ]]
        then
            "$PROJECT_DIR/MapFileParser" -format=Clang "$TARGET_TEMP_DIR/$PRODUCT_NAME-LinkMap-$CURRENT_VARIANT-armv7.txt" "$BUILD_DIR/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/$PRODUCT_NAME.app/Data/Managed/SymbolMap-32"
        fi
        if [[ $ARCHS == *"arm64"* ]]
        then
            "$PROJECT_DIR/MapFileParser" -format=Clang "$TARGET_TEMP_DIR/$PRODUCT_NAME-LinkMap-$CURRENT_VARIANT-arm64.txt" "$BUILD_DIR/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/$PRODUCT_NAME.app/Data/Managed/SymbolMap-64"
        fi
        if [[ $ARCHS == *"x86_64"* ]]
        then
            "$PROJECT_DIR/MapFileParser" -format=Clang "$TARGET_TEMP_DIR/$PRODUCT_NAME-LinkMap-$CURRENT_VARIANT-x86_64.txt" "$BUILD_DIR/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/$PRODUCT_NAME.app/Data/Managed/SymbolMap-64"
        fi
    else
        echo "The MapFileParser utility was not found in the directory '$PROJECT_DIR'. Managed stack traces may not be reported correctly. This usually happens when the Unity project is built with a Windows editor, then the Xcode project is copied to OSX to build for the target device. You can work around this issue by manually copying the MapFileParser executable from an OSX installation of the Unity editor into the '$PROJECT_DIR' directory."
    fi
fi