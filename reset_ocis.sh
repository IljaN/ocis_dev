#!/bin/sh

# Use with care will wipe your data! Supposed to be in repo root
OCIS_DIR=~/.ocis

rm -rf ${OCIS_DIR}

make clean generate
make -C ocis build

./ocis/bin/ocis init --insecure true --admin-password admin

#IDM_CREATE_DEMO_USERS=true ./ocis/bin/ocis server
