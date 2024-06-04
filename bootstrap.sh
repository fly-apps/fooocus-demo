#!/bin/bash

repo_url="https://github.com/lllyasviel/Fooocus/archive/refs/tags/"
fooocus_version="v2.4.1"
fooocus_tar="/app/Fooocus/Fooocus-${fooocus_version}.tar.gz"

if [ ! -d "/app/Fooocus" ]; then
    mkdir -p /app/Fooocus
fi

if ! curl -fSL "${repo_url}${fooocus_version}.tar.gz" -o "${fooocus_tar}"; then
    echo "Failed to download Fooocus"
    exit 1
fi

if ! virtualenv /app/venv; then
    echo "Failed to create venv"
    exit 1
fi

cd /app/Fooocus
tar -xvf "${fooocus_tar}" --strip-components=1
rm -f "${fooocus_tar}"

source /app/venv/bin/activate
pip install -r /app/Fooocus/requirements_versions.txt
python launch.py "$@"
