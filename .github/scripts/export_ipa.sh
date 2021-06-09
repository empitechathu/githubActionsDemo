#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/Calculator.xcarchive \
            -exportOptionsPlist githubActionsDemo-iOS/githubActionsDemo\ iOS/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
