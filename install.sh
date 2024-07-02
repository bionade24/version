#! /bin/bash

if [[ $UID != 0 ]]; then
    echo "Please run this script as root. Aborting."
    exit 1
else
    install -Dm755 ./version /usr/local/bin/version && \
    # man page
    gzip -k ./man/version.1 && \
    install -Dm644 ./man/version.1.gz /usr/local/share/man/man1/version.1.gz && \
    rm ./man/version.1.gz && \
    echo "Installation successful." && \
    exit 0
fi
echo "Program Installation failed."
exit 1
