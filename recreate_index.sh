#!/bin/zsh

# Script to create index.html from scratch with all current HTML files
# Author: GitHub Copilot
# Date: May 24, 2025

# Directory where transcripts are stored
TRANSCRIPT_DIR="/Users/pengl/Documents/Transcripts-youtube"
INDEX_FILE="${TRANSCRIPT_DIR}/index.html"

# Get current date for the last updated field
CURRENT_DATE=$(date "+%B %d, %Y")

# Find all HTML files in the directory (excluding index.html) and create JavaScript array directly
JS_ARRAY=$(find "$TRANSCRIPT_DIR" -maxdepth 1 -name "*.html" | grep -v "index.html" | sort | while read file; do
    filename=$(basename "$file")
    echo "                \"$filename\","
done | sed '$ s/,$//')

# Count the HTML files for reporting
HTML_FILE_COUNT=$(find "$TRANSCRIPT_DIR" -maxdepth 1 -name "*.html" | grep -v "index.html" | wc -l | xargs)
echo "Found $HTML_FILE_COUNT HTML files to include in index"

# Create the complete index.html file
cat > "$INDEX_FILE" << EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouTube Transcript Collection</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            line-height: 1.6;
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            color: #333;
        }
        h1 {
            color: #cc0000;
            border-bottom: 2px solid #cc0000;
            padding-bottom: 10px;
        }
        .description {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .transcript-list {
            list-style-type: none;
            padding: 0;
        }
        .transcript-item {
            border-bottom: 1px solid #eee;
            padding: 10px 0;
        }
        .transcript-item a {
            text-decoration: none;
            color: #0366d6;
            font-weight: 500;
        }
        .transcript-item a:hover {
            color: #cc0000;
            text-decoration: underline;
        }
        .last-updated {
            font-style: italic;
            color: #666;
            font-size: 0.9em;
            margin-top: 40px;
        }
        .search-container {
            margin: 20px 0;
        }
        #searchInput {
            padding: 10px;
            width: 100%;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h1>YouTube Transcript Collection</h1>
    
    <div class="description">
        <p>This is a collection of YouTube video transcripts that are worth rewatching and reflecting on. Reading these transcripts allows for extended periods of thoughtful consideration compared to watching videos.</p>
    </div>

    <div class="search-container">
        <input type="text" id="searchInput" placeholder="Search transcripts...">
    </div>
    
    <ul class="transcript-list" id="transcriptList">
        <!-- Transcripts will be populated here by JavaScript -->
    </ul>

    <div class="last-updated">
        Last updated: <span id="lastUpdated"></span>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Get the last updated date from the automation script
            document.getElementById('lastUpdated').textContent = '${CURRENT_DATE}';
            
            // List of transcript files (will be populated automatically)
            const transcripts = [
${JS_ARRAY}
            ];
            
            // Function to display transcripts
            function displayTranscripts(transcripts) {
                const transcriptList = document.getElementById('transcriptList');
                transcriptList.innerHTML = '';
                
                transcripts.forEach(transcript => {
                    if (transcript !== 'index.html' && transcript !== 'readme.md') {
                        const li = document.createElement('li');
                        li.className = 'transcript-item';
                        
                        const link = document.createElement('a');
                        link.href = transcript;
                        link.textContent = transcript.replace('.html', '').replace(/-/g, ' ');
                        
                        li.appendChild(link);
                        transcriptList.appendChild(li);
                    }
                });
            }
            
            // Initial display
            displayTranscripts(transcripts);
            
            // Search functionality
            const searchInput = document.getElementById('searchInput');
            searchInput.addEventListener('input', function() {
                const searchTerm = this.value.toLowerCase();
                const filteredTranscripts = transcripts.filter(transcript => 
                    transcript.toLowerCase().includes(searchTerm)
                );
                displayTranscripts(filteredTranscripts);
            });
        });
    </script>
</body>
</html>
EOL

echo "Index.html completely recreated successfully with $HTML_FILE_COUNT transcript files."
echo "Last updated: $CURRENT_DATE"
