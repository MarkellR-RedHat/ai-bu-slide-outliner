Review a presentation outline for flow, pacing, audience fit, and slide design.

The user will provide an existing presentation outline. Use the following input: $ARGUMENTS

If no outline is provided in the arguments, ask the user to paste their slide outline or provide a file path.

## Instructions

Evaluate the presentation outline across these dimensions:

### 1. Story Arc and Flow
- Does the presentation have a clear beginning, middle, and end?
- Is there a logical progression from one slide to the next?
- Does the audience understand "why should I care" within the first two slides?
- Is there a single, memorable takeaway?
- Are there transition phrases connecting each slide to the next?

### 2. Pacing
- Are any sections too rushed or too slow for the time allotted?
- Is the balance right between setup, content, and conclusion?
- Are there enough breathing room slides (visuals, demos, audience interaction) to prevent fatigue?
- Flag any individual slide that exceeds 3 minutes; it likely needs to be split.

### 3. Audience Fit
- Is the technical depth appropriate for the stated audience?
- Are there terms or concepts that need more context for this audience?
- Will this audience find the examples relevant to their work?
- Is the tone right? (Executives want data and decisions. Engineers want architecture and tradeoffs. Mixed audiences need layered depth.)

### 4. Slide Design Check
For each slide, verify:
- No more than 4 bullet points. If a slide has more, flag it.
- Each bullet point is under 12 words. Flag any that read like paragraphs.
- The slide communicates one idea, not two or three.
- There is a visual suggestion or the slide is not just a wall of text.

### 5. Slide-Level Feedback
For each slide, provide one of these ratings:
- **Keep as-is** - This slide works well.
- **Strengthen** - The slide belongs, but needs more substance or clarity. Explain what to add.
- **Cut or merge** - This slide does not earn its place. Suggest what to do with it.
- **Add a slide** - There is a gap in the narrative. Suggest what is missing and where it should go.

### 6. Suggested Cuts
If the presentation is running long, rank slides from most to least essential and recommend specific cuts to hit the time target.

### 7. Suggested Additions
If the presentation is running short or missing key elements, suggest specific slides to add and where they fit in the flow.

### 8. Speaker Notes Quality
- Are the notes conversational, or do they read like a script?
- Do the notes add value beyond what is on the slide?
- Are transition phrases included between slides?
- Flag any slide where the notes just repeat the bullet points.

## Output Format

Start with a one-paragraph overall assessment. Then provide the detailed section-by-section review. End with a prioritized list of the top 3 changes that would most improve the presentation.
