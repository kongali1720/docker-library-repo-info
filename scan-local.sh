#!/usr/bin/env bash
set -Eeuo pipefail

image="$1"
output_dir="repos/${image//[:\/]/_}"

mkdir -p "$output_dir"

docker inspect "$image" > "$output_dir/inspect.json"

echo "Informasi tentang image $image telah disimpan di $output_dir."
