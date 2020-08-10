#!/bin/sh

# Build omni file
echo -e "[$OS_NAME]\n{\n\tPrimary: 0.0.0.0 $OS_PORT\n}\n" \
  > $NCHOME/etc/omni.dat

# Generate interfaces
$NCHOME/bin/nco_igen

# Initialize db (or skip in case of existing db)
if [ ! -d "$NCHOME/omnibus/db/$OS_NAME" ]; then
  echo "Will create OS!"
  $NCHOME/omnibus/bin/nco_dbinit -server $OS_NAME
else
  echo "$OS_NAME already exists!"
fi


