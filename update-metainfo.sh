#!/usr/bin/env bash

source ./scripts/semver.sh

# Create and update session metadata if it doesn't exist
[ ! -d "./dep.build/inochi-session/.git" ] && ./update-session.sh

VERSION=$(semver ./dep.build/inochi-session)
TIMESTAMP=$(date -u +%Y%m%dT%H%M%SZ)
DATE=$(date -I -u )

sed -i -E \
    "s/<release .*>/<release version=\"$VERSION.$TIMESTAMP\" date=\"$DATE\">/" \
    io.github.grillo_delmal.inochi-session.metainfo.xml