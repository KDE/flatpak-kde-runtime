#!/usr/bin/env python3

import json
import sys

def main():
    manifest = json.load(sys.stdin)
    target_property = sys.argv[1]
    new_items = sys.argv[2:]
    for new_item in new_items:
        manifest[target_property].append(new_item)
    json.dump(manifest, sys.stdout, indent=4)

if __name__ == "__main__":
    main()
