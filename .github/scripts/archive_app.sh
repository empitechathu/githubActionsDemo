#!/bin/bash

set -eo pipefail

xcodebuild -workspace githubActionsDemo.xcworkspace \
            -scheme githubActionsDemo\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/githubActionsDemo.xcarchive \
            clean archive | xcpretty
