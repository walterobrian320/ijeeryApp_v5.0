#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script pour ajouter family="Segoe UI" à tous les CTkFont dans les fichiers Python
"""

import os
import re
from pathlib import Path

def process_file(file_path):
    """Process a single Python file to add family="Segoe UI" to all CTkFont instances"""
    
    try:
        # Read file content
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"  ❌ Erreur de lecture {file_path}: {e}")
        return 0
    
    original_content = content
    replacements = 0
    
    # Pattern 1: ctk.CTkFont(family="Segoe UI", size=
    if re.search(r'ctk\.CTkFont\(size=', content):
        content = re.sub(
            r'ctk\.CTkFont\(size=',
            'ctk.CTkFont(family="Segoe UI", size=',
            content
        )
        count = len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", size=', content))
        old_count = len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", size=', original_content))
        replacements += count - old_count
    
    # Pattern 2: customtkinter.CTkFont(family="Segoe UI", size=
    if re.search(r'customtkinter\.CTkFont\(size=', content):
        content = re.sub(
            r'customtkinter\.CTkFont\(size=',
            'customtkinter.CTkFont(family="Segoe UI", size=',
            content
        )
        replacements += len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", size=', content)) - len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", size=', original_content))
    
    # Pattern 3: ctk.CTkFont(family="Segoe UI", weight=
    if re.search(r'ctk\.CTkFont\(weight=', content):
        content = re.sub(
            r'ctk\.CTkFont\(weight=',
            'ctk.CTkFont(family="Segoe UI", weight=',
            content
        )
        replacements += len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", weight=', content)) - len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", weight=', original_content))
    
    # Pattern 4: customtkinter.CTkFont(family="Segoe UI", weight=
    if re.search(r'customtkinter\.CTkFont\(weight=', content):
        content = re.sub(
            r'customtkinter\.CTkFont\(weight=',
            'customtkinter.CTkFont(family="Segoe UI", weight=',
            content
        )
        replacements += len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", weight=', content)) - len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", weight=', original_content))
    
    # Pattern 5: ctk.CTkFont(family="Segoe UI", slant=
    if re.search(r'ctk\.CTkFont\(slant=', content):
        content = re.sub(
            r'ctk\.CTkFont\(slant=',
            'ctk.CTkFont(family="Segoe UI", slant=',
            content
        )
        replacements += len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", slant=', content)) - len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", slant=', original_content))
    
    # Pattern 6: customtkinter.CTkFont(family="Segoe UI", slant=
    if re.search(r'customtkinter\.CTkFont\(slant=', content):
        content = re.sub(
            r'customtkinter\.CTkFont\(slant=',
            'customtkinter.CTkFont(family="Segoe UI", slant=',
            content
        )
        replacements += len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", slant=', content)) - len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", slant=', original_content))
    
    # Pattern 7: ctk.CTkFont(family="Segoe UI", size=10) - empty
    if re.search(r'ctk\.CTkFont\(\)', content):
        content = re.sub(
            r'ctk\.CTkFont\(\)',
            'ctk.CTkFont(family="Segoe UI", size=10)',
            content
        )
        replacements += len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", size=10\)', content)) - len(re.findall(r'ctk\.CTkFont\(family="Segoe UI", size=10\)', original_content))
    
    # Pattern 8: customtkinter.CTkFont(family="Segoe UI", size=10) - empty
    if re.search(r'customtkinter\.CTkFont\(\)', content):
        content = re.sub(
            r'customtkinter\.CTkFont\(\)',
            'customtkinter.CTkFont(family="Segoe UI", size=10)',
            content
        )
        replacements += len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", size=10\)', content)) - len(re.findall(r'customtkinter\.CTkFont\(family="Segoe UI", size=10\)', original_content))
    
    # Write back if changed
    if content != original_content:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            return len(re.findall(r'family="Segoe UI"', content)) - len(re.findall(r'family="Segoe UI"', original_content))
        except Exception as e:
            print(f"  ❌ Erreur d'écriture {file_path}: {e}")
            return 0
    
    return 0

def main():
    workspace_root = r"d:\Sidebar\Downloads\wetransfer_ijeery_v5-0-rar_2026-02-06_1238\IJEERY_V5.0\IJEERY_V5.0 (v1.0)"
    
    # Find all Python files
    py_files = list(Path(workspace_root).rglob('*.py'))
    
    print(f"🔍 Scanning {len(py_files)} fichiers Python...")
    print("=" * 80)
    
    modified_files = []
    total_replacements = 0
    
    for py_file in sorted(py_files):
        replacements = process_file(str(py_file))
        if replacements > 0:
            modified_files.append((py_file.relative_to(workspace_root), replacements))
            total_replacements += replacements
            print(f"✅ {py_file.relative_to(workspace_root)}: {replacements} replacements")
    
    print("=" * 80)
    print(f"\n📊 RÉSUMÉ:")
    print(f"   Fichiers modifiés: {len(modified_files)}")
    print(f"   Replacements totaux: {total_replacements}")
    print(f"\n📝 Fichiers traités:")
    for file_path, count in modified_files:
        print(f"   - {file_path} ({count} replacements)")

if __name__ == '__main__':
    main()
