#!/bin/bash
set -euC
cd "$(dirname "$0")"

source ./search.sh

function main() {
  # if you use shell script, please comment in here.
  # search
  # if you use python, please comment out above and comment in here.
  python ./search.py
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  main "$@"
fi
