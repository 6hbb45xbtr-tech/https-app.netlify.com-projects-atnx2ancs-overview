#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [ ! -x "./.venv/bin/python" ]; then
  echo "No virtual environment found. Run ./install.sh first."
  exit 1
fi
"./.venv/bin/python" "mp3_downloader_gui.py"
