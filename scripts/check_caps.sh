#!/usr/bin/env bash
set -e

FILE="site/names.txt"

echo "🔍 Validating names in $FILE"
echo "--------------------------------"

# Check if file exists
if [ ! -f "$FILE" ]; then
  echo "❌ names.txt not found!"
  exit 1
fi

LINE_NO=0
ERROR=0

while IFS= read -r line || [ -n "$line" ]; do
  LINE_NO=$((LINE_NO + 1))

  # Skip empty lines
  if [ -z "$line" ]; then
    continue
  fi

  # Validate: only A-Z
  if ! echo "$line" | grep -qE '^[A-Z]+$'; then
    echo "❌ Invalid name at line $LINE_NO: '$line'"
    echo "   Only CAPITAL letters (A-Z) are allowed."
    ERROR=1
  else
    echo "✅ Valid name at line $LINE_NO: '$line'"
  fi
done <"$FILE"

echo "--------------------------------"

if [ "$ERROR" -eq 1 ]; then
  echo "❌ Validation FAILED"
  exit 1
else
  echo "✅ Validation PASSED"
  exit 0
fi
