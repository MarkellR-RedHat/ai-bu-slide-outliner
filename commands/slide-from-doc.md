Distill a long document into a presentation outline.

The user will provide a document (blog post, design doc, paper, RFC, or similar). Use the following input: $ARGUMENTS

If no document is provided in the arguments, ask the user to paste the document content or provide a file path.

Optionally, the user can append target audience and time length after a `|` separator:
`[document content or path] | Platform Engineers | 20 minutes`

If audience and time are not specified, infer a reasonable audience from the document content and default to a 20-minute talk.

## Instructions

Read the full document and extract a presentation outline from it. The goal is distillation, not summarization. A good slide deck built from a document highlights the most important ideas and cuts everything else.

### Step 1: Analyze the Document

Before building slides, identify:

1. **Core thesis:** What is the single most important point this document makes? State it in one sentence.
2. **Key supporting points:** What are the 3-5 ideas that support the thesis? These become the backbone of the talk.
3. **Best examples and data:** Which specific examples, metrics, or stories from the document would land well in a live presentation?
4. **What to cut:** What parts of the document are important for a written piece but do not work on stage? (Background sections, literature reviews, implementation minutiae, caveats that break flow.)

Output this analysis first so the user can see the editorial decisions before the full outline.

### Step 2: Build the Outline

Structure the presentation using the key points from Step 1. Follow these rules:

1. **No more than 4 bullet points per slide.** The document probably has paragraphs of detail. Compress ruthlessly.
2. **Each bullet point should be under 12 words.**
3. **One idea per slide.**
4. **Preserve the document's best quotes, stats, and examples.** These are the gems. Put them on slides where they will have impact.
5. **Do not follow the document's structure literally.** A blog post or paper is organized for reading. A talk is organized for listening. Reorder for narrative flow.
6. **Front-load the value.** The audience should know the main point within the first 2 minutes, then the rest of the talk provides evidence and depth.

### Step 3: Flag Gaps

Note anything the presentation needs that the document does not provide:
- A hook or opening story
- A demo or live example
- Visual assets (diagrams, screenshots, architecture drawings)
- Audience-specific framing that the document was not written for

## Output Format

### Document Analysis
- **Core thesis:** [one sentence]
- **Key supporting points:** [bulleted list of 3-5 points]
- **Best material for slides:** [specific quotes, stats, or examples to feature]
- **Recommended cuts:** [what to leave out of the talk]

### Title Slide
- Title (adapted for a live audience, not just the document title)
- Subtitle with speaker name placeholder and event placeholder
- Timing: 30 seconds

### Content Slides
For each slide:
- **Slide N: [Title]** (timing: X minutes)
- 2-4 bullet points (what appears ON the slide)
- **Speaker Notes:** Conversational talking points. Reference where in the document this content comes from so the presenter can review the full context. Include transition phrases between slides.
- **Visual suggestion:** Describe a diagram or image. If the document includes figures, reference them.
- **Source:** Note the section or page of the original document this slide draws from.

### Closing Slide
- Key takeaway (one sentence)
- Call to action
- Link to the full document for audience members who want to go deeper

### Q&A Preparation
5-7 anticipated questions. Draw from details in the document that were cut from the slides but might come up in discussion.

### Pacing Summary
A table showing slide number, title, and time allocation. Verify the times add up to the total time. Flag any slide over 3 minutes.

### Gaps and Recommendations
List anything the presenter needs to prepare that is not in the document.
