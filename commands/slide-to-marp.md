Convert a presentation outline into Marp markdown format, ready to render as a slide deck.

The user will provide an existing presentation outline. Use the following input: $ARGUMENTS

If no outline is provided in the arguments, ask the user to paste their slide outline or provide a file path.

## Instructions

Transform the provided outline into valid Marp markdown that can be rendered directly with the Marp CLI or Marp VS Code extension.

### Marp Front Matter

Start the output with the Marp YAML front matter block. Choose the theme based on the presentation type:

```yaml
---
marp: true
theme: default
paginate: true
header: "[Presentation Title]"
footer: "[Speaker Name] | [Event Name]"
style: |
  section {
    font-family: 'Red Hat Display', 'Red Hat Text', sans-serif;
  }
  h1 {
    color: #EE0000;
  }
---
```

### Theme Suggestions

Recommend one of these themes based on content:

- **default** - Clean, minimal. Good for technical deep dives where content speaks for itself.
- **gaia** - Bold, high-contrast. Good for keynotes and big-room talks.
- **uncover** - Modern, understated. Good for executive updates and internal presentations.

If the user wants a Red Hat branded look, suggest using a custom CSS theme with Red Hat Display and Red Hat Text fonts, with `#EE0000` as the accent color.

### Slide Conversion Rules

1. **Slide separators:** Use `---` between slides.
2. **Title slide:** Use `# Title` and `## Subtitle` on the first slide. Add `<!-- _class: lead -->` for centered layout.
3. **Content slides:** Use `## Slide Title` for each slide heading.
4. **Bullet points:** Convert to standard markdown lists. Keep to 4 bullets maximum per slide.
5. **Speaker notes:** Place after `<!-- speaker notes -->` or use Marp's built-in `<!-- -->` comment syntax. Include the transition phrase.
6. **Images and visuals:** Where the outline suggests a visual, add a Marp image placeholder: `![bg right:40%](image-placeholder.png)` with a comment describing what image to add.
7. **Code blocks:** If the outline includes code or config snippets, use fenced code blocks with language hints.
8. **Two-column layouts:** Use `![bg left:50%]` or Marp's column directives for slides that compare two things.

### Formatting Guidelines

- Keep text large enough to read from the back of the room. Avoid slides with more than 50 words of visible text.
- Use `**bold**` for key terms that the audience should remember.
- Use `>` blockquotes for impactful single-line quotes or stats.
- Add `<!-- _backgroundColor: #222 -->` and `<!-- _color: #fff -->` for section divider slides.
- Number code examples if the talk walks through a sequence.

## Output Format

Output the complete Marp markdown file as a single code block. After the code block, include:

1. **Rendering instructions:** How to convert to PDF or HTML using Marp CLI (`marp deck.md --pdf` or `marp deck.md --html`).
2. **Theme recommendation:** Which theme fits this content best and why.
3. **Image checklist:** A list of all placeholder images that need to be replaced before presenting, with a description of what each one should show.
