#!/bin/bash
# Generate all proto code (Go backend + Dart frontend) using Buf CLI
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$SCRIPT_DIR/proto"
PATH="$HOME/.pub-cache/bin:$PATH" buf generate
echo "Proto code generated."
echo "  Go:   $SCRIPT_DIR/echovault-server/api/grpc/generated/"
echo "  Dart: $SCRIPT_DIR/echo_vault_app/lib/models/generated/"
