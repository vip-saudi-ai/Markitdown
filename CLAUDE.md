# MarkItDown workspace

This repo exists to convert files to Markdown with Microsoft MarkItDown
(https://github.com/microsoft/markitdown). A SessionStart hook installs it automatically.

When the user asks to convert a file (PDF, Word, Excel, PowerPoint, HTML, CSV, JSON, XML, EPUB, ZIP, images, audio, YouTube URL...):
1. Find the file (usually in `input/`, or a path/URL the user gives).
2. Run: `markitdown "<file>" -o "output/<name>.md"` (use `markitdown "<url>"` for URLs).
3. Show the user the result path and a short preview; send the .md file with SendUserFile.

If `markitdown` is missing, run `.claude/hooks/install-markitdown.sh`.
The user prefers replies in Arabic.
