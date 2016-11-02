#!/usr/bin/env bash

# Shell script to check dependencies before install the project
git --version >/dev/null 2>&1 || { echo "I require git but it's not installed.  Aborting." >&2; exit 1; }

mkdir -p bin/devel
cd bin/devel
git clone --recursive --branch devel https://github.com/geodynamics/specfem3d.git .
rm -rf .git
rm .gitattributes
rm .gitignore
rm .gitmodules
