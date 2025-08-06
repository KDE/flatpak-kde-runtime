import json
import sys

def convert_to_master_build(json_file):
    # Load the JSON data
    with open(json_file, 'r') as f:
        data = json.load(f)
    
    # Update top-level version info
    data['branch'] = 'master'
    data['sdk'] = 'org.kde.Sdk//master'
    data['runtime'] = 'org.kde.Platform//master'
    
    # Update extensions
    for ext in data['add-extensions'].values():
        if 'version' in ext:
            ext['version'] = 'master'
    
    # Update modules
    for module in data['modules']:
        if 'sources' in module:
            for source in module['sources']:
                if source['type'] == 'git':
                    if 'tag' in source:
                        del source['tag']
                    if 'commit' in source:
                        del source['commit']
                    source['branch'] = 'master'
    
    # Save the modified JSON
    output_file = json_file.replace('.json', '-master.json')
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=2)
    
    print(f"Converted file saved as {output_file}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python convert_to_master.py <input_json_file>")
        sys.exit(1)
    
    convert_to_master_build(sys.argv[1])
