set -x

rm *.plist
cp ../Telegram_provision_plist_template/* .

function doall() {
    find . -name "*.plist" -type f -exec "$@" {} \;
}

doall gsed -i 's|ph.telegra.Telegraph|app.nicegram|g'
doall gsed -i 's|C67CF9S4VU|T8B4U4YCDJ|g'
doall plutil -replace ExpirationDate -date 2033-01-09T19:51:28Z
doall plutil -replace CreationDate -date 2023-01-10T19:51:28Z
doall plutil -replace TimeToLive -integer 3652
#CERTBODY=$(base64 < ../../fakesign-cert/cert_b64)
CERTBODY=$(cat ../../fakesign-cert/cert_b64 | tr -d '\n')
doall plutil -replace DeveloperCertificates -array
doall plutil -insert DeveloperCertificates -data $CERTBODY -append
