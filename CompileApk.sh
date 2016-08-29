#!/bin/bash
export ANDROID_HOME=/android-sdk-linux
cd UrbanWithNavBar
cd android
./gradlew  assembleRelease
now=$(date +"%m_%d_%Y_%H:%M:%S")
mkdir "/var/www/html/apks/$now/"
cp  app/build/outputs/apk/app-release.apk  "/var/www/html/apks/$now/"

