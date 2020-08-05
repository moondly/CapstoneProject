#!/bin/sh

# Build omni file
echo -e "[$OS_NAME]\n{\n\tPrimary: $OS_SVC_NAME $OS_SVC_PORT\n}\n" \
	> $NCHOME/etc/omni.dat

# Generate interfaces
$NCHOME/bin/nco_igen


