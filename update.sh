#!/bin/bash

# Check if at least one file is provided
if [ "$#" -eq 0 ]; then
  echo "Usage: $0 <file1> [file2] ..."
  exit 1
fi

for path in "$@"; do
  out="${path%.json}-zed.json"
  theme_importer "$path" --output "$out"

  # Check if the file path contains "light"
  if [[ "$path" == *"light"* ]]; then
    appearance="light"
  else
    appearance="dark"
  fi

  # Update the theme name and appearance
  jq --arg name "$(basename "$path" .json)" --arg appearance "$appearance" '.name = $name | .appearance = $appearance' "$out" > "$out.tmp" && mv "$out.tmp" "$out"
done
