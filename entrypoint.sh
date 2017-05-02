#!/bin/bash
if [ "$SMB_USERNAME" = "" ]; then
    echo "SMB_USERNAME not defined!"
    exit 1
fi
if [ "$SMB_PASSWORD" = "" ]; then
    echo "SMB_PASSWORD not defined!"
    exit 1
fi

useradd "$SMB_USERNAME"
echo "$SMB_USERNAME:$SMB_PASSWORD" | chpasswd
smbpasswd -a "$SMB_USERNAME" <<EOF
$SMB_PASSWORD
$SMB_PASSWORD
EOF

smbd -F
