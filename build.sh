#!/bin/bash

# Build script for BRE_Casual mod

echo "Building BRE_Casual mod..."

# Check if BANNERLORD_GAME_DIR is set
if [ -z "$BANNERLORD_GAME_DIR" ]; then
    echo "Warning: BANNERLORD_GAME_DIR environment variable is not set."
    echo "Please set it to your Mount & Blade II: Bannerlord installation directory."
    echo "Example: export BANNERLORD_GAME_DIR=\"/path/to/Mount & Blade II Bannerlord\""
    echo ""
    echo "Continuing with build anyway..."
fi

# Navigate to source directory
cd "$(dirname "$0")/src"

# Build the project
dotnet build -c Release

if [ $? -eq 0 ]; then
    echo "Build successful!"
    echo "Output: ../bin/Win64_Shipping_Client/BRE_Casual.dll"
else
    echo "Build failed!"
    exit 1
fi
