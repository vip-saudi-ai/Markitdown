#!/bin/bash
# Installs MarkItDown (all extras) at session start if missing.
set -e
if ! command -v markitdown >/dev/null 2>&1; then
  pip install --quiet 'markitdown[all] @ git+https://github.com/microsoft/markitdown.git#subdirectory=packages/markitdown'
fi
