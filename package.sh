#!/usr/bin/env sh

set -e

mkdir -p dist

if [ ! -d target/aarch64-unknown-linux-musl ]; then
  ./musl-build cargo build --release
fi

# TODO: use vars for arch folder and binary name
cp target/aarch64-unknown-linux-musl/release/bootstrap dist/
cd dist && zip package.zip bootstrap && cd ..

