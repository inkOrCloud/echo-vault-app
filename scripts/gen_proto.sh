#!/bin/bash
# Generate Dart proto code using protoc_plugin 20.0.1
# (compatible with protobuf 4.x and grpc-4.1.0)
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
PROTO_DIR="$SCRIPT_DIR/proto"
OUT_DIR="$SCRIPT_DIR/echo_vault_app/lib/models/generated"

# Ensure protoc_plugin 20.0.1 is installed
if ! protoc-gen-dart --version 2>/dev/null; then
  dart pub global activate protoc_plugin 20.0.1
fi

mkdir -p "$OUT_DIR"

# First generate well-known types (timestamp.proto)
# The plugin needs the proto definition to generate Dart code for Timestamp
# Copy from protobuf package's bundled proto
PROTOBUF_DIR="$HOME/.pub-cache/hosted/pub.dev"
TIMESTAMP_PROTO=$(find "$PROTOBUF_DIR" -name "timestamp.proto" -path "*/protobuf-*/google/protobuf/timestamp.proto" 2>/dev/null | head -1)

if [ -z "$TIMESTAMP_PROTO" ]; then
  # Generate without timestamp fields if no source proto available
  echo "Warning: timestamp.proto not found, generating without well-known types"
  protoc --proto_path="$PROTO_DIR" --dart_out="$OUT_DIR" \
    "$PROTO_DIR"/echo_vault/common/v1/types.proto \
    "$PROTO_DIR"/echo_vault/song/v1/song_service.proto
else
  protoc --proto_path="$PROTO_DIR" --proto_path="$(dirname "$TIMESTAMP_PROTO")/../../.." \
    --dart_out="$OUT_DIR" \
    "$(dirname "$TIMESTAMP_PROTO")/timestamp.proto" \
    "$PROTO_DIR"/echo_vault/common/v1/types.proto \
    "$PROTO_DIR"/echo_vault/song/v1/song_service.proto
fi

echo "Dart proto code generated to $OUT_DIR"
