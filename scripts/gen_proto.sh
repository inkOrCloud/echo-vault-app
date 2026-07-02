#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
PROTO_DIR="$SCRIPT_DIR/proto"
OUT_DIR="$SCRIPT_DIR/echo_vault_app/lib/models/generated"

if ! command -v protoc-gen-dart &>/dev/null; then
  echo "Installing protoc-gen-dart..."
  dart pub global activate protoc_plugin
fi

mkdir -p "$OUT_DIR"

protoc \
  --proto_path="$PROTO_DIR" \
  --dart_out="$OUT_DIR" \
  "$PROTO_DIR"/echo_vault/common/v1/types.proto \
  "$PROTO_DIR"/echo_vault/song/v1/song_service.proto

echo "Dart proto code generated to $OUT_DIR"
