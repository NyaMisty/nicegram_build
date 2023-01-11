# Nicegram fakesign provision profile

## Create certificate

1. extract team_id using `ldid -e`
2. create self signed certificate: https://dkimitsa.github.io/2018/01/04/ios-homemade-provision-profile/

## Create provisioning profile

Still based on https://dkimitsa.github.io/2018/01/04/ios-homemade-provision-profile/

1. copy build-system/fake-codesigning/profiles, extract the plist with `security cms -D -i`, we got plists in `Telegram_provision_plist_template`
2. copy these plist into another folder `Nicegram_plists`
3. rewrite the plist (change teamid, bundleID, certificate infos) using `bash rewrite_plist.sh`
4. rebuild mobileprovision using the plist using `security cms` command

