#!/bin/bash

# Downloads android FOSS mobile apps from the sources to provision a new phone
#

wget --no-check-certificate --content-disposition https://github.com/ImranR98/Obtainium/releases/download/v1.1.1/app-arm64-v8a-release.apk
wget --no-check-certificate --content-disposition https://github.com/ImranR98/Obtainium/releases/download/v1.1.1/app-arm64-v8a-release.apk.sha256
sha256sum -c app-arm64-v8a-release.apk.sha256

