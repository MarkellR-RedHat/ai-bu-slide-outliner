Generate a complete presentation outline with speaker notes.

Parse the following arguments for topic, audience, time length, and optional presentation type: $ARGUMENTS

The format should be: topic | audience | time | type (e.g., "Kubernetes Operators | Platform Engineers | 20 minutes | technical deep dive")

Supported presentation types (if not specified, infer the best fit from the topic and audience):
- **Keynote** - Big-picture vision, inspiration, broad audience. Heavy on story, light on implementation details.
- **Technical deep dive** - Architecture, code, demos. The audience wants to understand HOW it works.
- **Executive update** - Status, impact, decisions needed. Crisp, data-driven, respect for limited time.
- **Panel prep** - Talking points and positions rather than slides. Designed for moderated discussion.
- **Lightning talk** - One idea, delivered fast. No filler, no warmup, straight to the point.

If any required argument (topic, audience, time) is missing, ask the user to provide it before proceeding.

## Instructions

Build a full presentation outline tailored to the topic, audience, time constraint, and presentation type. Adjust the number of slides and depth based on the time length:

- 5 minute lightning talk: 5-7 slides, punchy and focused on one key takeaway
- 10 minute talk: 8-10 slides, cover the core concept with one demo or example
- 20 minute talk: 12-16 slides, room for context, examples, and a call to action
- 30-40 minute deep dive: 18-25 slides, full narrative arc with demos, architecture, and lessons learned

## Slide Design Principles

Follow these rules for every slide:

1. **No more than 4 bullet points per slide.** If you need more, split into two slides.
2. **Each bullet point should be under 12 words.** Slides are visual anchors, not documents.
3. **One idea per slide.** If the slide title needs the word "and," it is probably two slides.
4. **Use the 2/3 rule:** Two-thirds of slide real estate should be visual (diagram, image, chart). One-third text.
5. **Avoid orphan slides.** Every slide should connect to what came before and what comes after.
6. **No wall-of-text slides.** If the speaker notes are long, the slide content should be short.

## Type-Specific Rules

### Keynote
- Open with a bold claim or surprising data point
- Use full-bleed images and minimal text
- Story-driven: the audience should feel something, not just learn something
- Close with a call to arms, not a summary

### Technical Deep Dive
- Include at least one architecture diagram and one code or config snippet
- Show the "before and after" when demonstrating improvements
- Dedicate 20-30% of time to live demo or recorded walkthrough
- Anticipate "how does this actually work under the hood" questions

### Executive Update
- Lead with the bottom line: what happened, what it means, what you need
- Use data and metrics on every content slide
- Keep it under the time limit; execs remember presenters who finish early
- End with a clear ask or decision point

### Panel Prep
- Structure as position statements rather than slide content
- Include 3-5 talking points per topic area
- Prepare "bridge" phrases to redirect off-topic questions
- List 2-3 strong anecdotes ready to deploy

### Lightning Talk
- No agenda slide; start with the hook immediately
- One takeaway, repeated at least twice
- If the audience remembers one sentence from your talk, what is it?

## Output Format

### Title Slide
- Title (clear and specific, not generic)
- Subtitle with speaker name placeholder and event placeholder
- Suggested timing: 30 seconds

### For Each Content Slide
- **Slide N: [Title]** (timing: X minutes)
- 2-4 bullet points maximum (what appears ON the slide, keep each under 12 words)
- **Speaker Notes:** Write what the presenter should SAY for this slide. Conversational, not a script. Include a transition phrase leading into the next slide. 2-4 sentences.
- **Visual suggestion:** Describe a diagram, screenshot, or image that would strengthen this slide. Be specific about what it should show and where it sits on the slide.

### Closing Slide
- Key takeaway (one sentence the audience will remember)
- Call to action (specific and actionable, not "learn more")
- Contact info placeholder
- QR code or link placeholder

### Q&A Preparation
List 5-7 anticipated questions the audience is likely to ask, along with concise answers. Tailor these to the audience's experience level and concerns.

### Pacing Summary
A table showing slide number, title, and time allocation. Verify the times add up to the total time requested. Flag any slide that runs over 3 minutes as a candidate for splitting.

## Guidelines
- Write for the specific audience. A talk for executives looks different from a talk for developers.
- Front-load the value. The audience should know why they care within the first 2 minutes.
- Speaker notes should sound natural and conversational. Write them the way a confident presenter actually talks, not the way a document reads.
- Include transition phrases between slides. "So now that we have seen X, let us look at Y" is better than an abrupt topic change.
- Every slide should earn its place. If a slide does not move the story forward, cut it.
- Suggest where to pause for effect, where to ask the audience a question, and where to use humor if appropriate.
- End with a clear, specific next step for the audience.
- When in doubt, cut. A tight 15-minute talk beats a rambling 20-minute one.
