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
jq --arg name "$(basename "$path" .json)" --arg appearance "$appearance" \
  '.name = $name | .appearance = $appearance' "$out" > "$out.tmp" && mv "$out.tmp" "$out"
done

# Combine the contents of all -zed.json files into a single JSON array
themes_json=$(jq -s '.' *-zed.json)

# Update the vscode-modern-themes.jsonc file in the themes folder with the new themes array
jq --argjson themes "$themes_json" '.themes = $themes' themes/vscode-modern-themes.jsonc > themes/vscode-modern-themes.tmp.jsonc && mv themes/vscode-modern-themes.tmp.jsonc themes/vscode-modern-themes.jsonc

# Ensure the file in the themes folder is formatted correctly
jq '.' themes/vscode-modern-themes.jsonc > themes/vscode-modern-themes.tmp.jsonc && mv themes/vscode-modern-themes.tmp.jsonc themes/vscode-modern-themes.jsonc
