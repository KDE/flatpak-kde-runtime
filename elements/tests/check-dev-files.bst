kind: script

build-depends:
- tests/check-dev-files-deps.bst
- platform-image.bst

config:
  commands:
  - |
    %{bindir}/scan-for-dev-files.sh /sysroot | sort -u >found_dev_files.txt

    set -e; if [ -s found_dev_files.txt ]; then
    echo "Found development files:" 1>&2
    cat found_dev_files.txt 1>&2
    false
    fi

  layout:
    - element: tests/check-dev-files-deps.bst
      destination: /
    - element: platform-image.bst
      destination: /sysroot
