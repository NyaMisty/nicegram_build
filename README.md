# nicegram_build

## What's in this repo
1. telegram-configuration.json is copied from build-system/appstore-configuration.json, adapted with Nicegram's parameter
2. telegram-ngenv.json is extracted from decrypted Nicegram app, goes to TelegramUIFramework and search for `tz_offset`, the base64 next to it is the `ng_env`
3. provision folder contains fakesign mobileprovision adapted with Nicegram's team identifier

## How to use

```
python3 build-system/Make/Make.py --cacheDir ~/telegram-bazel-cache build --configurationPath ~/Desktop/nicegram_build/telegram-configuration.json --configuration release_arm64 --buildNumber=0 --codesigningInformationPath ~/Desktop/nicegram_build/provision
```
