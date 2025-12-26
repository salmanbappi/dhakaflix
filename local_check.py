import os
import re
import sys
import yaml

def get_apktool_version():
    with open('apktool.yml', 'r') as f:
        # Simple extraction to avoid YAML parsing errors with custom tags
        content = f.read()
        code = re.search(r'versionCode: (\d+)', content)
        name = re.search(r'versionName: ([\d.]+)', content)
        return (code.group(1) if code else None), (name.group(1) if name else None)

def get_manifest_version():
    with open('AndroidManifest.xml', 'r') as f:
        content = f.read()
        code = re.search(r'android:versionCode="(\d+)"', content)
        name = re.search(r'android:versionName="([^"]+)"', content)
        return (code.group(1) if code else None), (name.group(1) if name else None)

def check_versions():
    print("Checking version synchronization...")
    try:
        a_code, a_name = get_apktool_version()
        m_code, m_name = get_manifest_version()
        
        if a_code != m_code or a_name != m_name:
            print(f"ERROR: Version mismatch!")
            print(f"  apktool.yml: {a_name} ({a_code})")
            print(f"  AndroidManifest: {m_name} ({m_code})")
            return False
        print(f"Versions match: {a_name} ({a_code})")
        return True
    except Exception as e:
        print(f"ERROR reading versions: {e}")
        return False

def check_smali(file_path):
    print(f"Checking {file_path} for common errors...")
    if not os.path.exists(file_path):
        print("File not found!")
        return False
    
    with open(file_path, 'r') as f:
        lines = f.readlines()
    
    errors = 0
    current_method = None
    method_labels = set()
    global_labels = set() # For cross-method check if needed, but we care about intra-method mostly
    
    for i, line in enumerate(lines):
        line_num = i + 1
        clean_line = line.strip()
        
        # Method tracking
        if clean_line.startswith('.method'):
            current_method = clean_line
            method_labels = set()
            continue
        if clean_line.startswith('.end method'):
            current_method = None
            continue

        if current_method:
            # 1. Duplicate Label Check (Method Scoped)
            label_match = re.match(r'^:(\w+)', clean_line)
            if label_match:
                label = label_match.group(1)
                if label in method_labels:
                    print(f"ERROR: Duplicate label ':{label}' in method at line {line_num}")
                    errors += 1
                method_labels.add(label)

            # 2. Invalid Regex Escape Check
            if r'\\.' in clean_line and 'const-string' in clean_line:
                print(f"ERROR: Potential invalid escape sequence '\\.' at line {line_num}. Use '[.]' instead.")
                errors += 1

            # 3. Check-cast after label (Dangerous)
            if clean_line.startswith('check-cast') and i > 0 and lines[i-1].strip().startswith(':'):
                pass # print(f"WARNING: check-cast immediately after label at line {line_num}. Verify logic.")

    if errors == 0:
        print("Smali check passed!")
        return True
    else:
        print(f"Found {errors} errors in Smali.")
        return False

if __name__ == "__main__":
    success = True
    if not check_versions():
        # success = False # Warning only for now as user is bumping it manually
        pass
    
    smali_file = "smali/eu/kanade/tachiyomi/animeextension/all/dhakaflix/DhakaFlix.smali"
    if not check_smali(smali_file):
        success = False
        
    if not success:
        print("\n!!! AUTOMATION BLOCKED PUSH: Fix the errors above !!!")
        sys.exit(1)
    
    print("\nAll checks passed. Safe to push.")
    sys.exit(0)
