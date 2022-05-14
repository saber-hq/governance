#!/usr/bin/env bash

set -xe

rm -fr out/
cp -R public/ out/
cat config/Sources.toml | yj -t >out/sources.json

cat config/assets/*.toml | yj -t >out/assets.json
cat config/pools/*.toml | yj -t >out/pools.json

jsonschema schema/sources.schema.json -i ./out/sources.json
