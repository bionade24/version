#! /bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script as root. Aborting."
    exit 1
else
    rm /usr/local/bin/version && \
    rm /usr/local/share/man/man1/version.1.gz && \
    echo "Program uninstalled." && \
    exit 0
fi
echo "Program deinstallation failed."
exit 1
