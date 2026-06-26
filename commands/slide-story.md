Build a narrative-driven presentation using Situation, Complication, Resolution structure.

Parse the following arguments for topic, audience, and time length: $ARGUMENTS

The format should be: topic | audience | time (e.g., "Why We Rebuilt Our CI Pipeline | Engineering Leads | 20 minutes")

If any argument is missing, ask the user to provide it before proceeding.

## Before You Write a Single Slide

Stop. Think through these questions in a chain-of-thought block before generating any output. Write your answers out explicitly.

### Emotional Journey
- Where does the audience start emotionally? (comfortable, skeptical, frustrated, curious)
- Where do I want them to end? (motivated, relieved, challenged, equipped)
- What is the single moment of highest tension in this story? Build everything toward that moment.

### Story Ownership
- What makes this story MINE to tell? What credibility, scars, or lived experience do I bring?
- If anyone could give this talk, it is not a story. It is a report. Find the angle only I have.

### The Aha Moment
- When should the audience's mental model shift?
- What do they believe walking in that they should question by the end?

### Napkin Test
- Can the entire story be told in three sentences? Write them now. If you cannot, the narrative is not clear enough yet.

### Movie Test
- If this were a movie, write the one-line description: "A [role] discovers [complication] and must [resolution] before [stakes]."
- If the movie sounds boring, the talk will be boring. Rework until the logline is compelling.

## Narrative Architecture

This command is for presentations that change how the audience thinks or feels, not just what they know. Use it for proposals, case studies, lessons learned, and persuasion talks.

### Core Technique: "The Gap"

Every great talk lives in the gap between what is and what could be. Open with reality as the audience knows it, then reveal the gap. The audience should feel pulled toward the resolution, not pushed.

### Storytelling Principles

**Specific beats general.** "We lost 14 hours of engineer time on a Saturday" lands harder than "We had reliability issues." Use names, timestamps, metrics, and places. Specifics build credibility; generalities erode it.

**Show, don't tell.** Instead of "it was frustrating," describe the Slack messages at 2 AM, the pager going off during a kid's soccer game, the dashboard turning red. Let the audience feel it.

**Stakes escalation.** Each act should raise the stakes, not just present new information. Act 1 sets the table. Act 2 lights it on fire. Act 3 shows how to build a fireproof table.

**The callback.** The closing should reference the opening, creating a satisfying loop. If you opened with a specific moment or image, return to it at the end, transformed.

## Narrative Structure

### Act 1: Situation (15-20% of total time)

Set the scene. Describe the world as the audience knows it. Establish common ground.

- What is the current state? Paint a picture the audience recognizes.
- What does the audience already believe or experience?
- Ground it in concrete details: names, dates, metrics, places.
- Open IN the action. No "let me give you some background" warmups. Start with a moment.

**Emotional target for Act 1:** Recognition. The audience should nod along, thinking "yes, that is my world too."

**Technique options for the opening:**
- In medias res: drop the audience into the middle of a real moment ("It was 2 AM on a Tuesday and the third page in an hour had just fired")
- Provocative question: challenge an assumption they hold ("What if everything you know about scaling is optimized for the wrong metric?")
- Flashback: start at the resolution, then rewind ("Today that system handles 10x the load with half the team. Eighteen months ago, it was a different story.")

Choose the opening approach that fits the topic and audience best. Generate all three as alternatives so the speaker can pick.

### Act 2: Complication (30-40% of total time)

Introduce the problem, tension, or change that disrupts the status quo. This is the heart of the story.

- What went wrong, changed, or was discovered?
- Why do existing approaches fall short? Show the attempts, not just the failure.
- Build tension through real examples: failed attempts, "we tried X and here is what happened" moments, the growing cost of inaction.
- Escalate the stakes with each slide. The audience should feel the weight of the problem before you offer any solution.

**Emotional target for Act 2:** Tension, discomfort, urgency. The audience should be thinking "something has to change."

**Key technique: "Show the struggle honestly."** No happy endings without honest struggle. If the resolution was easy, there is no story. Show the dead ends, the arguments, the moments of doubt. This is where trust is built.

### Act 3: Resolution (30-40% of total time)

Present the solution, outcome, or new understanding. Pay off the tension from Act 2.

- What did you build, change, or learn?
- Show the results with data, but frame the data as human impact. Not "latency dropped 40%" alone; "engineers stopped getting paged at dinner."
- Be honest about tradeoffs and what remains unsolved. Audiences trust speakers who show the seams.
- Do NOT list features as the resolution. Show impact on people, teams, and outcomes.

**Emotional target for Act 3:** Relief, then empowerment. The audience should feel "we can do this too."

### Closing: The Takeaway (5-10% of total time)

Land it with a single, memorable message.

- One sentence the audience will repeat to their team tomorrow.
- The callback: return to the opening image or moment, now transformed by the journey.
- A clear call to action: what should they do Monday morning?

**Emotional target for the close:** Resolve, motivation. The loop is closed. The gap from the opening is bridged.

## Anti-Patterns (Hard Rules)

Reject these patterns in your output. If you catch yourself doing any of them, rewrite.

1. **No "background" openings.** Never start with "Let me give you some background" or "Before we begin, some context." Start in the action.
2. **No feature lists as resolution.** The resolution must show impact on people, not a feature tour.
3. **No happy endings without honest struggle.** If Act 2 does not hurt a little, the resolution will not land.
4. **No abstract problems.** "Scaling challenges" is abstract. "The site went down during our biggest product launch and 200,000 users saw an error page" is concrete and human.
5. **No momentum-killing slides.** Every slide must advance the narrative. If a slide could be cut without breaking the story, cut it.
6. **No passive voice in speaker notes.** The speaker is telling a story, not reading a report.

## Slide Design Within the Story

Follow these rules for every slide:

1. **No more than 4 bullet points per slide.** If you need more, split into two slides.
2. **Each bullet point should be under 12 words.**
3. **One idea per slide.**
4. **Story slides should be mostly visual.** A photo, a diagram, or a single powerful stat displayed large.
5. **Use "chapter title" slides** to signal transitions between acts. A single sentence on a dark background. These create breathing room and signal shifts.

## Speaker Notes for Story Presentations

Speaker notes for narrative presentations are fundamentally different from standard talks:

- Write them as if the speaker is telling the story to a friend at dinner. Conversational, not formal.
- For each slide, include:
  - **Emotional beat:** what the audience should feel at this moment (e.g., "This is where frustration peaks. Lean into it.")
  - **Technique:** how to get them there (data shock, recognition humor, shared frustration, relief, callback)
  - **Performance notes:** specific direction on pace ("slow down here, let the number sink in"), volume ("drop your voice for this part"), pauses ("pause for two full seconds after this line"), and presence ("make eye contact with someone before moving on")
- Include specific transition phrases that maintain narrative flow: "But then something changed..." or "And that is when we realized..."
- Mark the moment of highest tension explicitly: "THIS IS THE PEAK. Everything before built to this. Pause. Let it land."

## Output Format

### Emotional Arc Visualization

Before the slides, output an emotional arc showing tension rising and falling across the talk. Use a simple text visualization:

```
Tension
  high |          *  *
       |        *      *
       |      *          *
  med  |    *              *
       |  *                  *
  low  |*                      *
       +---------------------------
        Act 1    Act 2    Act 3  Close
        (recognition) (tension) (relief) (resolve)
```

Customize this arc for the specific talk. Label the peak moment. Note where the emotional shifts happen and what triggers each shift.

### Alternative Openings

Provide three opening options, one for each technique:
1. **In medias res:** Drop into the middle of a real moment
2. **Flashback:** Start at the end, then rewind
3. **Provocative question:** Challenge an assumption

Write each as a complete first slide with full speaker notes. Let the speaker choose.

### Movie Logline

One sentence: "A [role] discovers [complication] and must [resolution] before [stakes]."

### Title Slide
- Title (should hint at the story, not just state the topic; create curiosity)
- Subtitle with speaker name placeholder and event placeholder
- Suggested timing: 30 seconds

### Act 1: Situation
- 2-4 slides setting the scene
- Each slide includes: title, 2-4 bullet points, speaker notes (with emotional beat, technique, and performance notes), and visual suggestion

### Act 2: Complication
- 4-8 slides building the tension
- Each slide includes: title, 2-4 bullet points, speaker notes (with emotional beat, technique, and performance notes), and visual suggestion
- Identify which slide is the peak tension moment

### Act 3: Resolution
- 4-8 slides delivering the payoff
- Each slide includes: title, 2-4 bullet points, speaker notes (with emotional beat, technique, and performance notes), and visual suggestion
- First resolution slide should deliver immediate relief; subsequent slides build empowerment

### Closing
- Key takeaway slide (with the callback to the opening)
- Call to action slide

### Q&A Preparation
List 5-7 anticipated questions with suggested answers. For story-driven talks, expect and prepare for:
- "What would you do differently?"
- "How does this apply to our situation?"
- "What was the hardest part?"
- "What did you leave out?"

## Self-Critique Checklist

Before outputting the final version, verify each of these. If any answer is "no," revise before presenting.

- [ ] **Dinner party test:** Would this story hold attention told at a dinner party? If not, it is a report, not a story.
- [ ] **Momentum test:** Does every single slide advance the narrative? Cut any that pause the momentum.
- [ ] **Before/after test:** Is there a clear transformation? Can the audience see the "before" world and the "after" world?
- [ ] **Napkin test:** Can the story be told in 3 sentences? (Write them out to verify.)
- [ ] **Specificity test:** Are there concrete details (names, numbers, timestamps) in every act?
- [ ] **Stakes test:** Do the stakes escalate through Act 2, or does tension flatline?
- [ ] **Callback test:** Does the closing reference the opening?
- [ ] **Human impact test:** Does the resolution show impact on people, not just metrics or features?

### Pacing Summary
A table showing slide number, title, act, emotional beat, and time allocation. Verify the times add up to the total time requested. Flag any slide over 3 minutes.
