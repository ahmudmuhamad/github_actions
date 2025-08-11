#!/bin/bash

# Fail immediately if any command fails
set -e

# Test input
NAME="World"
EXPECTED="Hello $NAME"

# Run the script and capture the output
OUTPUT=$(node app.js "$NAME")

# Check if output matches expected
if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "✅ Test passed: '$OUTPUT'"
    exit 0
else
    echo "❌ Test failed"
    echo "Expected: '$EXPECTED'"
    echo "Got:      '$OUTPUT'"
    exit 1
fi
