#!/bin/bash

NAME="$1"

echo "Checking name: $NAME"

if [[ "$NAME" != "${NAME^^}" ]]; then
  echo "❌ Validation failed: Name is not in ALL CAPS"
  exit 1
else
  echo "✅ Validation passed: Name is in ALL CAPS"
fi
