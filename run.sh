#!/usr/bin/env bash

if command -v dotnet > /dev/null; then
    dotnet run
elif command -v csc > /dev/null && command -v mono > /dev/null; then
    csc Program.cs && mono Program.exe
else
    echo "C# runtime not found. Skipping run."
fi
