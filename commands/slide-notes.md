Generate speaker notes for an existing presentation outline.

The user will provide an existing slide deck outline or slide titles. Use the following input: $ARGUMENTS

If no outline is provided in the arguments, ask the user to paste their slide outline or provide a file path.

## Instructions

For each slide in the provided outline, generate speaker notes that cover:

1. **What to say:** Conversational talking points the presenter should deliver. Not a word-for-word script, but structured enough to keep the presenter on track. 3-5 sentences per slide. Write the way a confident presenter actually talks to a room, not the way a document reads.

2. **Transition phrase:** A specific bridge sentence leading into the next slide. Examples: "So now that we have seen how X works, let us talk about why that matters for Y." or "That covers the architecture. Next, let me show you what this looks like in practice." Every slide needs one.

3. **Audience cues:** Note where to pause for effect, ask the audience a question, reference a demo, or check for understanding. Be specific: "[PAUSE 2 seconds]" or "[ASK: How many of you have hit this problem?]"

4. **Timing guidance:** Suggest how long to spend on this slide. Flag any slide that would take more than 3 minutes; it probably needs to be split.

## Guidelines

- Write in a natural speaking voice. These notes are meant to be glanced at, not read word for word.
- **Never repeat what is on the slide.** The notes should ADD context, stories, or explanations the audience cannot get by reading the slide themselves.
- If a slide has technical content, include a brief analogy or plain-language explanation the presenter can use to make it accessible.
- Include at least one concrete example, anecdote, or data point per slide. "This matters because..." is always stronger than restating the bullet.
- Flag any slides that feel thin (not enough to talk about for the allotted time) or overloaded (too many points to cover smoothly).
- If the outline is missing a title slide or closing slide, note that and suggest what to add.
- For the opening slide, suggest a strong hook: a surprising stat, a question, or a short story. Never open with "Today I am going to talk about..."
- For the closing slide, the notes should reinforce the single key takeaway and deliver a clear call to action.
