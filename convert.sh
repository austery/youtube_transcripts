#!/bin/bash

# --- Robust script to convert HTML to Markdown with custom YAML front matter (v7) ---

# 1. Check for input file
if [ -z "$1" ];  then
    echo "Usage: ./convert.sh <input_file.html>"
    exit 1
fi

HTML_FILE="$1"
OUTPUT_FILE="${HTML_FILE%.html}.md"

# --- 2. Extract Metadata from the HTML file ---

# Extract the main title from the <title> tag
TITLE=$(grep -o '<title>.*</title>' "$HTML_FILE" | sed -e 's/<title>//' -e 's/<\/title>//')

# Robust function to extract metadata values
extract_metadata() {
    local file="$1"
    shift
    local keys=("$@")
    for key in "${keys[@]}"; do
        local result=$(grep "<strong>${key}[：:]<\/strong>" "$file" | sed -e "s/.*<strong>${key}[：:]<\/strong> *//" -e 's/<\/p>//' | awk '{$1=$1};1')
        if [ -n "$result" ]; then
            echo "$result"
            return
        fi
        result=$(grep "<p>${key}[：:]" "$file" | sed -e "s/<p>${key}[：:] *//" -e 's/<\/p>//' | awk '{$1=$1};1')
        if [ -n "$result" ]; then
            echo "$result"
            return
        fi
    done
}

# Extract source URL
SOURCE_URL=$(grep -o 'href="[^"]*"' "$HTML_FILE" | head -n 1 | sed -e 's/href="//' -e 's/"//')

# FIX: If the extracted URL is the placeholder text, set it to an empty string.
if [ "$SOURCE_URL" == "[视频URL未提供]" ]; then
    SOURCE_URL=""
fi

# Extract other metadata
PODCAST_PROGRAM=$(extract_metadata "$HTML_FILE" "播客节目")
SPEAKER=$(extract_metadata "$HTML_FILE" "主讲人" "主持人" "speaker")
GUEST=$(extract_metadata "$HTML_FILE" "嘉宾" "guest")

# --- 3. Create the YAML Front Matter ---

# Get the file's creation date on macOS
FILE_CREATION_DATE=$(stat -f "%SB" -t "%Y-%m-%d" "$HTML_FILE")

# Generate the YAML header
YAML_HEADER=$(cat <<EOF
---
title: "$TITLE"
layout: "post.njk"  
date: "$FILE_CREATION_DATE"
tags:
  - "视频笔记"
data:
  author: "Lei"
  podcast_program: "$PODCAST_PROGRAM"
  speaker: "$SPEAKER"
  guest: "$GUEST" 
  source: "$SOURCE_URL"
---
EOF
)

# --- 4. Convert HTML body to Markdown and Clean Up ---

# Pre-process the HTML to remove the "action-buttons" div before Pandoc conversion.
CLEANED_HTML=$(sed '/<div class="action-buttons"[^>]*>/,/<\/div>/d' "$HTML_FILE")

# Convert the cleaned HTML body using Pandoc.
MARKDOWN_BODY=$(echo "$CLEANED_HTML" | pandoc --from html --to gfm)

# Post-process the markdown to remove any leftover container div tags
MARKDOWN_BODY=$(echo "$MARKDOWN_BODY" | sed 's/<div id="content-body" class="main-content" role="main">//g' | sed 's/<\/div>//g')

# --- 5. Combine Header and Body into the Final Markdown File ---

# Use the robust `printf` command to write the final file
printf "%s\n\n%s\n" "$YAML_HEADER" "$MARKDOWN_BODY" > "$OUTPUT_FILE"

echo "✅ Successfully converted '$HTML_FILE' to '$OUTPUT_FILE'"