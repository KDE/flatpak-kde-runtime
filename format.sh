#!/bin/bash

set -eu -o pipefail
# set -x

main() {
    for m in ./*.json.in; do
        cat "${m}" | python -m json.tool > tmp || echo "Failed on app: ${m}"
        mv tmp "${m}"
    done
}

main "${@}"
