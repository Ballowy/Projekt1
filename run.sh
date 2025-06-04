#!/usr/bin/env bash
set -euo pipefail

if command -v dotnet > /dev/null; then
    dotnet run Program.cs
elif command -v csc > /dev/null && command -v mono > /dev/null; then
    csc Program.cs && mono Program.exe
else
    echo "Neither 'dotnet' nor 'csc' with 'mono' found. Skipping run."
fi
