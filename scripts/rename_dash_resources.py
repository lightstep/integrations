#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
A script to rename Terraform resources based on directory structure.
This uses directory structure to align to {platform}_{service}.
Code expects it is run within platform directories such as collector or azure.

Give a specific structure:
    1. {service}/dashboards/{x}/main.tf: Resource anmed as "{cwd}_{service}_{x}".
    2. {service}/dashboards/main.tf: Resource named as "{cwd}_{service}".

Where {cwd} is the name of te current working directory.
"""

import os
import re

def rename_resources_in_file(filepath: str, prefix: str):
    """Renames resources in given Terraform file.

    Args:
        filepath (str): The path to the Terraform file.
        prefix (str): Prefix to use in the new resource name.

    Returns:
        None
    """
    with open(filepath, 'r') as file:
        content = file.read()

    # extract attributes from path
    parts = os.path.normpath(filepath).split(os.sep)

    # id the service
    service = parts[-4] if len(parts) >= 4 else ''
    x = parts[-2] if len(parts) >= 3 and parts[-1] == "main.tf" and parts[-2] != "dashboards" else ''

    new_resource_name = f"{prefix}_{service}_{x}" if x else f"{prefix}_{service}"

    # replace resource name in content with regex
    content = re.sub(
            r'resource \"lightstep_dashboard\" \"(.*?)\" {',
            f'resource "lightstep_dashboard" "{new_resource_name}" {{',
            content
    )

    # write modified content back to file
    with open(filepath,'w') as file:
        file.write(content)

def main():
    """Main function."""
    root_directory = '.' # start in current
    prefix = os.path.basename(os.getcwd())

    # iterate directories and files
    for subdir, _, files in os.walk(root_directory):
        for file in files:
            if file == 'main.tf':
                full_path = os.path.join(subdir, file)
                rename_resources_in_file(full_path, prefix)

if __name__ == "__main__":
    main()

