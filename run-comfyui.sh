#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
. .venv/bin/activate
mkdir -p ../jcn-asset-studio/comfyui/{input,output}
exec python main.py \
  --listen 127.0.0.1 \
  --port 8188 \
  --base-directory ../jcn-asset-studio/comfyui \
  --output-directory ../jcn-asset-studio/comfyui/output \
  --input-directory ../jcn-asset-studio/comfyui/input
