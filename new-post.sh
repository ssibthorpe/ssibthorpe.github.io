#!/bin/bash

TITLE="$*"
DATE=$(date +"%Y-%m-%d")
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g' | sed -E 's/-$//')
FILENAME="_posts/$DATE-$SLUG.md"

cat <<EOF > "$FILENAME"
---
layout: post
title: "$TITLE"
date: $DATE
---
EOF

code "$FILENAME"
echo "New post created: $FILENAME"