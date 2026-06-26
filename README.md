# Slide Outliner

**Your talk is too long and you know it.**

You have 47 slides. Your speaker notes are three paragraphs per slide because you are afraid of forgetting something. Your opening slide says "Agenda." Your closing slide says "Questions?" You rehearse by reading your notes word for word and never looking up.

Slide Outliner is a set of Claude Code commands that coach you through building a talk worth giving. They will not generate slides for you. They will force you to find the ONE message your talk is building toward, cut everything that does not serve it, and replace your teleprompter scripts with cue cards that let you actually look at the audience.

## Before and After

**Before:** 22 slides, no argument, three-paragraph speaker notes

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

**After:** 11 slides, one argument, cue-card notes

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

Speaker notes went from paragraphs to cue phrases: "Tell the 3 AM story." "Mention the 73% stat." "Pause after the number lands."

What changed: Agenda, About Me, Overview, Thank You, and Questions slides are gone. Four component deep-dives collapsed into one diagram. Two metrics slides merged into one signature slide. The talk now has a single argument and every slide advances it.

## Quick Start

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-slide-outliner.git
cd ai-bu-slide-outliner
./install.sh
```

Then restart Claude Code and try:

```
/slides Kubernetes Operators | Platform Engineers | 20 minutes
```

## Commands

| Command | What it does | Example |
|---------|-------------|---------|
| `/slides` | Generate a full outline built around one core message | `/slides AI Strategy Update \| VP Eng \| 15 min` |
| `/slide-review` | Brutal review: kill, sharpen, or ship every slide | `/slide-review [paste your outline]` |
| `/slide-notes` | Replace script notes with cue cards | `/slide-notes [paste your outline]` |
| `/slide-pacing` | Timing analysis and audience energy mapping | `/slide-pacing [paste your outline]` |
| `/slide-hooks` | 5 alternative opening sequences for the first 60 seconds | `/slide-hooks Kubernetes Operators \| Platform Engineers` |
| `/slide-story` | Narrative structure: situation, complication, resolution | `/slide-story Why We Rebuilt CI \| Eng Leads \| 20 min` |
| `/slide-from-doc` | Distill a long document into a focused talk | `/slide-from-doc [paste doc] \| Platform Eng \| 20 min` |
| `/slide-to-marp` | Convert outline to Marp markdown with Red Hat theme | `/slide-to-marp [paste your outline]` |
| `/slide-visuals` | Visual treatment suggestions for every slide | `/slide-visuals [paste your outline]` |

### Typical workflow

1. **Start with `/slides`** to generate your first outline around one message.
2. **Run `/slide-review`** to get a brutally honest assessment of what to cut.
3. **Use `/slide-notes`** to replace paragraph scripts with cue-card notes.
4. **Check `/slide-pacing`** to find energy dead zones and timing problems.
5. **Try `/slide-hooks`** if your opening is weak.

### Command details

**`/slides`** enforces the ONE MESSAGE rule: before generating any slides, it identifies the single sentence the entire talk builds toward. Every slide must advance that argument. Anything that does not gets cut. You get a slide-by-slide breakdown with 2-4 bullet points each, transition hooks, visual suggestions, pacing summary, and Q&A prep.

**`/slide-review`** runs your outline through 8 tests: the Drunk Test (can someone explain your point after two beers?), the 4PM Friday Test (would a tired audience care about your opening?), slide-by-slide verdicts (KILL IT / SHARPEN / SHIP IT / MISSING), anti-pattern detection, pacing analysis, speaker notes audit, and structural integrity checks. Ends with the three changes that would most improve the talk.

**`/slide-notes`** takes your existing outline and generates presenter cue cards. Not sentences. Reminder phrases, emotional beat markers like `[BUILD TENSION]` and `[LET IT BREATHE]`, timing markers, stage directions, and transition hooks. For complex slides, it adds rescue notes: what to say if the audience looks confused, if you are running long, or if a question derails you.

**`/slide-story`** uses the SCR (Situation, Complication, Resolution) framework. Includes an emotional arc visualization, three alternative openings, a movie logline test, and chapter-title slides for act transitions. Best for proposals, case studies, lessons learned, and persuasion talks.

**`/slide-from-doc`** performs document surgery: it shows you exactly what it kept, what it cut, and why. Reorganizes for narrative impact (not document section order), leads with the conclusion, and converts analysis paragraphs into single compelling data points.

**`/slide-to-marp`** outputs a complete `.md` file with Marp front matter, Red Hat fonts and colors, slide separators, speaker notes in comment syntax, image placeholders, and Mermaid diagram code. Includes rendering instructions for Marp CLI and presenter tips.

## Templates

Reference templates for common formats live in `templates/`:

| Template | Duration | Slides | Best for |
|----------|----------|--------|----------|
| `technical-deep-dive.md` | 30-40 min | 18-25 | Architecture talks, demos, how-it-works sessions |
| `lightning-talk.md` | 5 min | 5-7 | Conference lightning rounds, meetup short talks |
| `executive-update.md` | 15 min | 8-12 | Status updates, decision requests, leadership reviews |
| `demo-heavy-talk.md` | 30-40 min | 10-14 | Talks where 60% of the time is live demos |
| `panel-prep.md` | 30-60 min | N/A | Panel discussion preparation (talking points, not slides) |
| `ignite-talk.md` | 5 min | 20 | Ignite format: 20 slides, 15 seconds each, auto-advancing |

## Contributing

Open an issue or PR. If a command gave you bad advice, tell us what it said and why it was wrong. If you have a template for a format we do not cover, send it.

## License

Apache-2.0
