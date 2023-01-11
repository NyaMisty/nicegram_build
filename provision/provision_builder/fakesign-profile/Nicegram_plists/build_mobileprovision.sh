find . -name "*.plist" -type f -exec sh -c 'security cms -S -N "iPhone Developer: Nicegram SelfSigned" -i "{}" -o ../$(basename "{}" .plist)' \;
