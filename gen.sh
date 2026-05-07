#!/usr/bin/env bash
# Regenerate the Ruby SDK from the upstream RIXL OpenAPI spec.
set -euo pipefail

kiota generate \
    -l ruby \
    -c rixl \
    -n rixl \
    -d https://raw.githubusercontent.com/rixlhq/openapi/refs/heads/main/openapi.yaml \
    -o "$(dirname "$0")/sdk" \
    --clean-output \
    --exclude-backward-compatible
