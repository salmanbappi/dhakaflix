import os
import re
import sys

def check_smali(file_path):
    print(f"Checking {file_path} for common errors...")
    if not os.path.exists(file_path):
        print("File not found!")
        return False
    
    with open(file_path, 'r') as f:
        lines = f.readlines()
    
    labels = set()
    jumps = []
    
    # 1. Collect all labels and jump instructions
    for i, line in enumerate(lines):
        line = line.strip()
        # Label definition: :label_name
        label_match = re.match(r'^:(\w+)', line)
        if label_match:
            labels.add(label_match.group(1))
        
        # Jump instruction: goto/if-... :label_name
        jump_match = re.search(r'(goto|if-\w+)\s+(/16\s+)?(?::)(\w+)', line)
        if jump_match:
            target = jump_match.group(3)
            jumps.append((i + 1, target, line))

    # 2. Check for missing labels
    errors = 0
    for line_num, target, content in jumps:
        if target not in labels:
            print(f"ERROR: Line {line_num} jumps to missing label ':{target}' -> {content}")
            errors += 1
            
    # 3. Check for basic Smali structure
    if not any(line.strip().startswith('.method') for line in lines):
        print("ERROR: No methods found in Smali file!")
        errors += 1

    if errors == 0:
        print("Smali check passed!")
        return True
    else:
        print(f"Smali check failed with {errors} errors.")
        return False

if __name__ == "__main__":
    smali_file = "smali/eu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix.smali"
    if not check_smali(smali_file):
        sys.exit(1)
    sys.exit(0)
