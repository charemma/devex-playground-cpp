#!/bin/bash
# workarround to support installing extension in coder.com workspaces
# https://github.com/coder/envbuilder/issues/43

if ! which code-server > /dev/null; then
  curl -fsSL https://code-server.dev/install.sh | sh | tee code-server-install.log
fi

CODE_CLI=code
if code-server -v > /dev/null; then
  CODE_CLI=code-server
fi

mkdir -p ~/.vscode-server/extensions

set +e
extensions=( $(sed 's/\/\/.*$//g' .devcontainer/devcontainer.json | jq -r -M '[.customizations.vscode.extensions[]?, .extensions[]?] | .[]' ) )

if [ "${extensions[0]}" != "" ] && [ "${extensions[0]}" != "null" ]; then
  for extension in "${extensions[@]}"; do
    $CODE_CLI --extensions-dir ~/.vscode-server/extensions --install-extension "$extension"
  done
fi
