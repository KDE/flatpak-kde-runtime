#!/bin/bash

set -eu

CARGO_FILE=$(jq -r '
  .. | objects | select(.name? == "cxx-rust-cssparser") 
  | .sources[] | select(.type? == "git") 
  | "\(.url)/-/raw/\(.tag // .commit // .branch // "master")/rust/Cargo.lock"
' org.kde.Sdk.json.in)

# something like https://invent.kde.org/libraries/cxx-rust-cssparser/-/raw/v1.0.0/rust/Cargo.lock
wget $CARGO_FILE
wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/refs/heads/master/cargo/flatpak-cargo-generator.py

python flatpak-cargo-generator.py Cargo.lock -o cxx-rust-cssparser-generated-sources.json

sed -i -e 's/"dest": "cargo"/"dest": ".cargo"/' \
  -e 's/"dest-filename": "config"/"dest-filename": "config.toml"/' \
  cxx-rust-cssparser-generated-sources.json

rm Cargo.lock flatpak-cargo-generator.py
