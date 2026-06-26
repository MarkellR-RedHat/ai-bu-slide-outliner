# ai-bu-slide-outliner

Your talk is in two weeks. You have 47 slides and no idea which ones to cut. You know it is too long but everything feels important. Your speaker notes are three paragraphs per slide because you are afraid of forgetting something on stage. Your opening slide says "Agenda."

This is fixable.

These are Claude Code commands that coach you through building a talk. They will not generate slides for you. They will force you to find the ONE message your talk is building toward, cut everything that does not serve it, and replace your teleprompter scripts with cue cards that let you actually look at the audience.

## Before and After

**Before:** A 20-minute talk outline with 22 slides

```
Slide 1:  Agenda
Slide 2:  About Me
Slide 3:  Overview of the Problem Space
Slide 4:  Background and Context
Slide 5:  Related Work
Slide 6:  Architecture Overview (8 bullet points)
Slide 7:  Component Deep Dive: Service A
Slide 8:  Component Deep Dive: Service B
Slide 9:  Component Deep Dive: Service C
Slide 10: Component Deep Dive: Service D
Slide 11: Integration Points
Slide 12: Demo Setup
Slide 13: Demo
Slide 14: Results Summary
Slide 15: Detailed Metrics Table
Slide 16: More Metrics
Slide 17: Comparison With Alternatives
Slide 18: Lessons Learned
Slide 19: Future Work
Slide 20: Roadmap
Slide 21: Thank You
Slide 22: Questions?
```

Speaker notes: 3-paragraph scripts per slide. The presenter reads them word for word and never looks up.

**After:** The same talk, 14 slides, one argument

```
ONE MESSAGE: "Disaggregated serving doubles GPU utilization
              because it matches hardware to workload."

Slide 1:  "Your GPUs are 60% idle" (hook with a stat that stings)
Slide 2:  Why scaling inference is not like scaling web apps
Slide 3:  What disaggregated serving changes (single diagram)
Slide 4:  How requests flow through the system (sequence diagram)
Slide 5:  The routing decision that makes it work
Slide 6:  [BREATHER] Demo setup (30 seconds, context only)
Slide 7:  Live demo: deploy, send traffic, watch utilization climb
Slide 8:  [SIGNATURE SLIDE] "2x GPU utilization. 40% faster TTFT."
Slide 9:  The tradeoffs we are honest about
Slide 10: What is next (3 items, grounded, not aspirational)
Slide 11: "If your GPU utilization is below 50%, this is worth trying"
          (call to action + QR code + callback to slide 1)
```

Speaker notes: 2-3 cue phrases per slide. "Tell the 3 AM story." "Mention the 73% stat." "Pause after the number lands."

What changed: the agenda, about me, overview, thank you, and questions slides are gone. Four component deep-dives collapsed into one diagram. Two metrics slides merged into one signature slide. The talk now has a single argument, and every slide advances it.

## Commands

### `/slides`

Generates a complete presentation outline from scratch, built around one core message.

**Usage:**
```
/slides Kubernetes Operators | Platform Engineers | 20 minutes
/slides AI Strategy Update | VP Engineering | 15 minutes | executive update
/slides KV Cache Routing | ML Engineers | 5 minutes | lightning talk
```

**What you get:**
- Pre-work section identifying the ONE message, call to action, and signature slide
- Slide-by-slide breakdown with 2-4 bullet points each (never more)
- Speaker notes as cue cards (reminders, not scripts)
- Transition hooks between every slide
- Visual suggestions for key slides
- Pacing summary with energy levels
- Q&A preparation with anticipated questions

The command enforces the ONE MESSAGE rule: before generating any slides, it identifies the single sentence the entire talk is building toward. Every slide must advance that argument. Any slide that does not gets cut.

### `/slide-notes`

Takes an existing slide deck outline and generates presenter cue cards.

**Usage:**
```
/slide-notes [paste or reference your outline]
```

Useful when you already have slides but your speaker notes are three-paragraph scripts. The generated notes include reminder phrases (not sentences), emotional beat markers like `[BUILD TENSION]` and `[LET IT BREATHE]`, timing markers, stage directions, and transition hooks. For complex slides, it adds rescue notes: what to say if the audience looks confused, if you are running long, or if a question derails you.

### `/slide-review`

Reviews a presentation outline with zero tolerance for filler.

**Usage:**
```
/slide-review [paste or reference your outline]
```

Runs your outline through 8 tests: the Drunk Test (can someone explain your point after two beers?), the 4PM Friday Test (would a tired audience care about your opening?), slide-by-slide verdicts (KILL IT / SHARPEN / SHIP IT / MISSING), anti-pattern detection, pacing analysis, speaker notes audit, and structural integrity checks. Ends with the three changes that would most improve the talk.

### `/slide-pacing`

Analyzes timing and audience energy across your entire talk.

**Usage:**
```
/slide-pacing [paste or reference your outline]
```

Goes beyond "is it too long" to analyze the energy rhythm. Flags danger zones where 3+ dense slides stack up without breathing room. Generates a visual energy map, a presenter timing sheet with checkpoint markers, cut recommendations if you are over time, and rehearsal priorities. Includes a "last exit marker" showing where to skip ahead if you are running behind.

### `/slide-hooks`

Generates 5 alternative opening sequences using different proven techniques.

**Usage:**
```
/slide-hooks Kubernetes Operators | Platform Engineers
/slide-hooks [paste full outline for tailored openings]
```

The first 60 seconds determine whether the audience puts down their phones. This command generates openings using: a surprising statistic, a personal failure story, a live demo gone wrong, an audience poll, and a provocative question. Each opening is written word-for-word and ready to deliver, with risk ratings, memorability scores, and recovery plans.

### `/slide-story`

Builds a presentation using narrative structure: situation, complication, resolution.

**Usage:**
```
/slide-story Why We Rebuilt Our CI Pipeline | Engineering Leads | 20 minutes
```

For when you need to tell a story, not just present facts. Uses the SCR (Situation, Complication, Resolution) framework. Includes an emotional arc visualization, three alternative openings, a movie logline test, and chapter-title slides for act transitions. Best for proposals, case studies, lessons learned, and persuasion talks.

### `/slide-from-doc`

Takes a long document and distills it into a slide deck outline.

**Usage:**
```
/slide-from-doc [paste document or provide file path]
/slide-from-doc [document] | Platform Engineers | 20 minutes
```

Distillation is destruction. A great talk built from a document keeps 20% of the content and 100% of the impact. This command performs document surgery: it shows you exactly what it kept, what it cut, and why. It reorganizes for narrative impact (not document section order), leads with the conclusion, and converts analysis paragraphs into single compelling data points.

### `/slide-to-marp`

Converts an existing outline into Marp markdown format with Red Hat visual identity.

**Usage:**
```
/slide-to-marp [paste or reference your outline]
```

Outputs a complete `.md` file with Marp front matter, Red Hat fonts and colors, slide separators, speaker notes in comment syntax, image placeholders with search terms, and Mermaid diagram code. Includes rendering instructions for Marp CLI and presenter tips.

### `/slide-visuals`

Suggests specific visual treatments for every slide in your outline.

**Usage:**
```
/slide-visuals [paste or reference your outline]
```

For each slide: visual type recommendation, specific image search terms for Unsplash and Pexels, Mermaid diagram code where applicable, layout guidance, animation suggestions, and cliche traps to avoid. Identifies the signature slide and provides extra detail on making it shareable.

## Templates

Reference templates for common presentation formats are in the `templates/` directory:

| Template | Duration | Slides | Best For |
|----------|----------|--------|----------|
| `technical-deep-dive.md` | 30-40 min | 18-25 | Architecture talks, demos, how-it-works sessions |
| `lightning-talk.md` | 5 min | 5-7 | Conference lightning rounds, meetup short talks |
| `executive-update.md` | 15 min | 8-12 | Status updates, decision requests, leadership reviews |
| `demo-heavy-talk.md` | 30-40 min | 10-14 | Talks where 60% of the time is live demos |
| `panel-prep.md` | 30-60 min | N/A | Panel discussion preparation (talking points, not slides) |
| `ignite-talk.md` | 5 min | 20 | Ignite format: 20 slides, 15 seconds each, auto-advancing |

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-slide-outliner.git
cd ai-bu-slide-outliner
chmod +x install.sh
./install.sh
```

This copies the commands to `~/.claude/commands/`. Restart Claude Code to pick them up.

## Contributing

Open an issue or PR. If a command gave you bad advice, tell us what it said and why it was wrong. If you have a template for a format we do not cover, send it.

## License

Apache-2.0
