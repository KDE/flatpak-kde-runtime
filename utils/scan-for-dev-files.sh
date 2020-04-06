#!/bin/bash

# This scans for symbolic link .so libraries that have a SONAME which
# is not the name of the symbolic link. Those files should not appear in
# platform runtimes, only in SDKs.

command -v objdump > /dev/null || { echo >&2 "objdump not found"; exit 1; }

find "$1" -type l -name "lib*.so" -print0 |
while IFS= read -r -d '' file; do
    dirname="$(dirname "${file}")"
    if [ "$(basename "${dirname}")" = vdpau ]; then
	continue
    fi
    basename="$(basename "${file}")"
    soname="$(objdump -p "${file}" | sed "/ *SONAME */{;s///;q;};d")"
    if [ -n "${soname}" ] && [ "x${soname}" != "x${basename}" ]; then
        realpath -s --relative-to="$1" "${file}"
    fi
done

# This scans for pkgconfig files left in the platform. This happens when an
# element installs them in the wrong directory (e.g !488)

find "$1" -type f -name "*.pc"
find "${1}/usr/bin" -type f -name "*-config"

# This scans for C/C++ library headers left in the platform. This happens when
# an element incorrectly modifies its split-rules (e.g !502)

find "${1}/usr/include"
find "$1" -not \( -path */usr/lib/debug/* -prune \) -not \( -path */usr/share/runtime/docs/doc/* -prune \) -name "*.h"

# This scans for miscellaneous development files spread all over the runtime

find "$1" -not \( -path */usr/lib/debug/* -prune \) -not \( -path */usr/share/runtime/docs/doc/* -prune \) -name "*.o"
find "$1" -not \( -path */usr/lib/debug/* -prune \) -not \( -path */usr/share/runtime/docs/doc/* -prune \) -name "*.c"
find "$1" -not \( -path */usr/lib/debug/* -prune \) -not \( -path */usr/share/runtime/docs/doc/* -prune \) -name "*.spec"
find "$1" -not \( -path */usr/lib/debug/* -prune \) -not \( -path */usr/share/runtime/docs/doc/* -prune \) -name "*.cmake"
