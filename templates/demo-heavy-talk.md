# Demo-Heavy Talk Template

Talks where 60% of the time is live demos. High-risk, high-reward. The demos are the talk; slides are anchors between them.

**Duration:** 30-40 minutes
**Slides:** 10-14
**Audience:** Engineers, developers, technical practitioners

---

## Structure

### Slide 1: The Hook (1 min)
- One slide that sets up why the demo matters
- No context slides, no architecture overview before the first demo
- Get to the point: what problem are you solving and why should they care?

### Slide 2: Demo Context (30 sec)
- What the audience is about to see
- Brief. "Watch for X."
- Set expectations so they know what to look for

### Demo 1: The "Wow" Demo (5-7 min)
- Show the end result first
- Make them want to know how it works
- This is your hook; if this demo does not land, the rest of the talk is uphill

### Slides 3-4: How It Works (3 min)
- Architecture or flow diagram
- Now that they have seen the result, they have context for the explanation
- Keep it to two slides max; do not over-explain

### Slide 5: Demo Context (30 sec)
- "Now let me show you how to build this yourself"
- Transition from "impressive" to "practical"

### Demo 2: The "Build It" Demo (8-10 min)
- Step by step, showing setup and configuration
- This is the teaching demo; go at a pace the audience can follow
- Narrate every decision: "I am choosing X here because Y"

### Slides 6-7: Under the Hood (3 min)
- The interesting technical details
- Patterns and tradeoffs worth discussing
- Things that surprised you during implementation

### Slide 8: Demo Context (30 sec)
- "What happens when things go wrong?"
- This is where you build trust with the audience

### Demo 3: The "Break It" Demo (5-7 min)
- Show failure modes, debugging, recovery
- Demonstrate observability: how do you know something is wrong?
- Show the recovery path: how do you fix it?

### Slide 9: Lessons Learned (2 min)
- What you learned building this
- Be honest about rough edges and things that do not work yet
- Share the mistakes you made so the audience can skip them

### Slide 10: Get Started (1 min)
- Links, repos, docs
- QR code to the repo or getting-started guide
- Clear call to action: "Clone this repo and run X"

---

## Tips for Demo-Heavy Talks

### Preparation
- ALWAYS have a backup recording for every demo segment
- Test on the actual presentation laptop, not your dev machine
- Have a "demo reset" script that returns everything to starting state
- Pre-type long commands in a scratch file and copy-paste
- Run through the full demo sequence at least 3 times the day before

### Presentation Setup
- Increase terminal font size to at least 24pt
- Kill notifications, hide bookmarks bar, clean desktop
- Use tmux or screen so you can switch between terminal contexts
- Close every application you do not need
- Disable sleep/screensaver

### During the Demo
- Narrate what you are doing: "I am clicking X because Y"
- If something breaks, narrate the debugging process (audiences love this)
- Keep your cursor visible; move it deliberately so people can follow
- Pause after key moments to let the audience absorb what happened

### The Three Demo Rule
First demo hooks them, second demo teaches them, third demo proves resilience. If you only have time for two demos, cut the third. If you only have time for one, this is not a demo-heavy talk.
