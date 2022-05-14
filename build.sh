#!/usr/bin/env bash

set -xe

rm -fr out/
mkdir out/
cat config/Sources.toml | yj -t >out/sources.json

cat config/assets/*.toml | yj -t >out/assets.json
