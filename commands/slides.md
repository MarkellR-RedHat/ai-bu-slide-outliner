Generate a complete presentation outline with speaker notes.

Parse the following arguments for topic, audience, and time length: $ARGUMENTS

The format should be: topic | audience | time (e.g., "Kubernetes Operators | Platform Engineers | 20 minutes")

If any argument is missing, ask the user to provide it before proceeding.

## Instructions

Build a full presentation outline tailored to the topic, audience, and time constraint. Adjust the number of slides and depth based on the time length:

- 5 minute lightning talk: 5-7 slides, punchy and focused on one key takeaway
- 10 minute talk: 8-10 slides, cover the core concept with one demo or example
- 20 minute talk: 12-16 slides, room for context, examples, and a call to action
- 30-40 minute deep dive: 18-25 slides, full narrative arc with demos, architecture, and lessons learned

## Output Format

### Title Slide
- Title (clear and specific, not generic)
- Subtitle with speaker name placeholder and event placeholder
- Suggested timing: 30 seconds

### For Each Content Slide
- **Slide N: [Title]** (timing: X minutes)
- 3-4 bullet points (what appears ON the slide, keep these concise)
- **Speaker Notes:** Write out what the presenter should SAY for this slide. This is conversational, not a script. Include transitions to the next slide. 2-4 sentences.
- **Visual suggestion:** Describe a diagram, screenshot, or image that would strengthen this slide. Be specific about what it should show.

### Closing Slide
- Key takeaway (one sentence)
- Call to action
- Contact info placeholder
- QR code or link placeholder

### Q&A Preparation
List 5-7 anticipated questions the audience is likely to ask, along with concise answers. Tailor these to the audience's experience level and concerns.

### Pacing Summary
A table showing slide number, title, and time allocation. Verify the times add up to the total time requested.

## Guidelines
- Write for the specific audience. A talk for executives looks different from a talk for developers.
- Front-load the value. The audience should know why they care within the first 2 minutes.
- Speaker notes should sound natural, not like bullet points read aloud.
- Every slide should earn its place. If a slide does not move the story forward, cut it.
- Suggest where to pause, where to ask the audience a question, and where to use humor if appropriate.
- End with a clear next step for the audience.
