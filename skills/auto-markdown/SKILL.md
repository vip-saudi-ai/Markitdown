---
name: auto-markdown
description: Automatically convert every file the user uploads (PDF, Word, Excel, PowerPoint, HTML, CSV, JSON, XML, EPUB, ZIP, images, audio) into a Markdown (.md) file using Microsoft MarkItDown. Use this whenever a file is attached or uploaded in any conversation, even if the user did not ask for a conversion, in addition to answering what they asked.
---

# Auto Markdown

Whenever the user uploads or attaches a file, convert it to Markdown and give them the `.md` file, then carry on with whatever they asked.

## Steps

1. Install MarkItDown if it is missing:
   `pip install 'markitdown[all]'`
   (if that fails, try `pip install 'markitdown[all] @ git+https://github.com/microsoft/markitdown.git#subdirectory=packages/markitdown'`).
2. Convert: `markitdown "<file>" -o "<name>.md"`.
3. Check the output. Designed files (slide decks, brochures, scanned PDFs) often come out messy:
   letters split by spaces, fake tables, mixed columns. If so, write a cleaned version from the same
   text: headings per page/slide, real tables, no added or removed information. Mention any place
   where the cleanup had to interpret the layout.
4. Give the user the `.md` file (cleaned version first if there is one) with a one-line summary of the file.

## If MarkItDown cannot run

If there is no code execution or the install fails (no network), read the file directly and write the
Markdown yourself following the same rules, and tell the user it was done without MarkItDown.

## Language

Reply in Arabic unless the user asks otherwise. Keep the file content in its original language.
