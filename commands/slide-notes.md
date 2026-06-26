Generate presenter cue card notes for an existing presentation outline. These are NOT a script. They are quick-glance notes for a confident presenter who already knows the material cold.

The user will provide an existing slide deck outline or slide titles. Use the following input: $ARGUMENTS

If no outline is provided in the arguments, ask the user to paste their slide outline or provide a file path.

## Notes Philosophy

Speaker notes are cue cards, not a teleprompter. The presenter knows this material. Your job is to give them:

- Confidence anchors (the stat, the story, the punchline they might blank on under lights)
- Pacing signals (when to breathe, when to push, when to let silence do the work)
- Rescue ramps (if something goes sideways, here is the exit)

## For Each Slide, Generate

### 1. Reminder Phrases (2-3 max)

Short, punchy, glanceable. Not sentences. Think sticky notes, not paragraphs.

Bad: "At this point you should explain to the audience that Kubernetes orchestration has evolved significantly over the past three years and that the traditional approach is no longer sufficient for modern workloads."

Good:
- "K8s orchestration: old way is broken"
- "3 years of band-aids, time to rethink"
- "This is where the pain lives for every platform team"

### 2. One Concrete Anchor

Every slide gets exactly ONE of these:
- A specific number ("73% of platform teams hit this wall by month 6")
- A real-world example ("When the SRE team at [company] tried this, they burned two sprints just on config drift")
- A short anecdote ("I was pair debugging at 2am when it hit me...")

This is what the audience will remember. Make it count.

### 3. Emotional Beat

Tag the energy the presenter should bring to this slide. Use these markers inline:

- `[BUILD TENSION]` before revealing a problem
- `[PAUSE, LET IT LAND]` after a key insight or surprising stat
- `[ENERGY UP]` when shifting to a solution or demo
- `[CONSPIRATORIAL TONE]` when sharing an insider truth
- `[SLOW DOWN]` for complex technical content
- `[CONVICTION]` for the core thesis

### 4. Transition Hook

Not a generic bridge sentence. A hook that pulls the audience forward, makes them curious about what is next. The audience should feel a small "oh, tell me more" tug.

Bad: "Now let us move on to the architecture."
Good: "So that is the problem. Now let me show you why everyone is solving it wrong."

### 5. Timing Marker

Tag every slide with one of these:
- `[30 SEC]` for title cards, transitions, simple points
- `[60 SEC]` for standard content slides
- `[90 SEC]` for slides with a story or demo setup
- `[2 MIN]` for anchor slides (flag these: "THIS IS YOUR ANCHOR SLIDE")
- `[3 MIN+]` should trigger a warning: "This slide is overloaded. Consider splitting."

### 6. Stage Direction

Include specific physical cues where they matter:
- `[CLICK: BUILD ANIMATION]` or `[CLICK: REVEAL NEXT POINT]`
- `[MOVE TO CENTER STAGE]`
- `[LOOK AT THE AUDIENCE, NOT THE SCREEN]`
- `[ASK: Show of hands, who has dealt with this?]`
- `[GESTURE TO THE DIAGRAM]`
- `[WATER BREAK: YOU HAVE BEEN TALKING FOR 10 MINUTES]`

Do not overload every slide with stage direction. Use it where it changes the energy or prevents a common mistake (like reading off the screen during a dense diagram).

## Rescue Notes

For any slide that is complex, controversial, or high-risk, add a rescue block:

**If they look confused:** A fallback analogy or simpler framing (one sentence max).

**If you are running long:** The 15-second version that hits the single key point and moves on.

**If this sparks a question:** One pre-loaded response the presenter can deploy without fumbling.

Not every slide needs rescue notes. Use your judgment. Title slides do not need them. The slide where you explain your novel architecture definitely does.

## Opening Slide: Special Treatment

The first 90 seconds set the entire talk. Be more detailed here than anywhere else:

- Write the exact first sentence. It must NOT start with "Today I am going to talk about..." or any variant. Open with a question, a provocation, a story, or a surprising fact.
- Include a `[BEAT]` marker showing where the presenter should pause after the hook lands.
- Note the body language: `[STAND STILL, NO FIDGETING, MAKE EYE CONTACT WITH THREE PEOPLE]`
- Provide the bridge from the hook into the talk structure.

## Closing Slide: Special Treatment

- Include a callback to the opening (audiences love when a talk comes full circle).
- Write the final sentence. Make it land.
- Include the call to action (what should the audience DO after they leave this room?).
- Add: `[PAUSE BEFORE "THANK YOU." DO NOT RUSH THE ENDING.]`

## What Notes Must Never Do

- Repeat what is already on the slide. The audience can read.
- Read like a teleprompter script. If a presenter could read these notes verbatim and sound natural, you wrote too much.
- Be so long the presenter cannot process them in a quick glance down.
- Skip the transition to the next slide. Every slide ends with forward momentum.
- Use generic filler: "This slide is important because..." or "As you can see on this slide..."

## Timing Reference Card

After all slide notes are complete, generate a timing reference card as a table:

| Slide | Title | Target Time | Cumulative | Notes |
|-------|-------|------------|------------|-------|

Include:
- Checkpoint markers every 5 minutes: "At minute 5 you should be on slide X"
- Buffer zones: identify 1-2 slides that can be cut or shortened if the presenter is running behind
- Total talk time estimate with a warning if it exceeds the expected slot length

## Voice and Style

- Red Hat engineering voice: direct, technically credible, practical. No corporate fluff, no marketing speak.
- Write the way an experienced engineer talks to peers, not the way a press release reads.
- If something is hard, say it is hard. If a tradeoff exists, name it.
- No emojis. No em dashes. Use colons, commas, semicolons, periods, or parentheses for punctuation variety.
- Keep it tight. Every word in the notes should earn its place.
