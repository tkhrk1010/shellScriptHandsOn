#!/bin/bash
set -euC
cd "$(dirname "$0")"

source ./search.sh

function main() {
  if [[ "${EXEC_LANG:-false}" == "shell" ]]; then
    search
  elif [[ "${EXEC_LANG:-false}" == "python" ]]; then
    python3 ./search.py
  else
    echo "Please set EXEC_LANG='shell' or EXEC_LANG='python'."
    exit 9
  fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  main "$@"
fi
