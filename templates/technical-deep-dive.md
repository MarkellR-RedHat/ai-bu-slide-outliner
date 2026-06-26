# Technical Deep Dive Template

**Duration:** 30-40 minutes
**Slides:** 18-25
**Audience:** Engineers, architects, technical decision-makers

Use this template when the audience wants to understand HOW something works, not just WHAT it does. They expect architecture diagrams, code or config examples, and honest discussion of tradeoffs.

---

## Structure

### Opening Block (5 minutes, 3 slides)

**Slide 1: The Problem** (2 min)
- What pain point does this solve?
- A concrete metric or example that makes the problem real
- Why existing approaches fall short

**Slide 2: The Solution in One Sentence** (1.5 min)
- What you built or adopted, stated simply
- The key insight that makes it different
- One result that proves it works

**Slide 3: Roadmap for This Talk** (1.5 min)
- What the audience will learn in the next 30 minutes
- 3-4 sections listed clearly
- Set expectations: "We will cover architecture, walk through a demo, and discuss what we learned"

---

### Architecture Block (8-10 minutes, 5-6 slides)

**Slide 4: High-Level Architecture** (2 min)
- System diagram showing major components
- Keep it to 5-7 boxes maximum
- Label the boundaries: what is yours, what is upstream, what is infrastructure

**Slide 5: The Interesting Part** (2 min)
- Zoom in on the component that is novel or non-obvious
- This is the slide the audience will photograph
- Use a more detailed diagram or sequence diagram

**Slides 6-7: How It Works Under the Hood** (3-4 min)
- Walk through the request flow or data path
- Show config snippets or code if it helps
- Highlight decision points: "Why did we choose X over Y?"

**Slide 8: Integration Points** (2 min)
- How does this connect to systems the audience already uses?
- APIs, protocols, extension points
- What is pluggable vs. opinionated

---

### Demo Block (8-10 minutes, 3-4 slides)

**Slide 9: Demo Setup** (1 min)
- Show the starting state before the demo
- Brief context so the audience knows what to watch for

**Slides 10-12: Live Demo or Walkthrough** (7-9 min)
- If live: keep it to one well-rehearsed flow, have a backup recording
- If recorded: narrate over it, pause at key moments
- Show the "before and after" clearly

---

### Lessons Learned Block (5-7 minutes, 4-5 slides)

**Slide 13: What Worked** (2 min)
- 2-3 specific wins with data
- Performance numbers, adoption metrics, time saved

**Slide 14: What Did Not Work** (2 min)
- Be honest. This is the slide that builds trust.
- What you tried that failed and why
- What you would do differently

**Slide 15: Tradeoffs We Made** (1.5 min)
- Every architecture has tradeoffs. Name yours explicitly.
- What you gave up to get what you have

**Slide 16: What Is Next** (1.5 min)
- Roadmap or future plans
- What problems are still unsolved

---

### Closing Block (3-4 minutes, 2-3 slides)

**Slide 17: Key Takeaways** (1.5 min)
- 3 bullet points maximum
- The audience should be able to repeat these to their team

**Slide 18: Get Started** (1 min)
- Links, repos, docs
- QR code for the lazy
- How to contribute if it is open source

**Slide 19: Start Here** (remaining time)
- Restate the key takeaway in one sentence. This is the last thing they see.
- Clear call to action: "Clone the repo," "Join the SIG," "File an issue"
- Your name, contact info, QR code to the repo or docs
- Have 2-3 backup slides for anticipated deep questions
- Do NOT put "Questions?" on the screen. Just say "I will take questions" and leave this slide up.

---

## Tips for Technical Deep Dives

- Rehearse the demo at least 3 times. Have a fallback plan. No exceptions.
- Do not explain every box on the architecture diagram. Point at the interesting part and talk about that.
- If you say "I will skip this for time," you already failed. Cut the slide before you get on stage.
- Technical audiences smell marketing from across the room. Show limitations, show tradeoffs, show what broke. That is what earns trust.
- Time your talk at 32-35 minutes. Questions will come mid-talk whether you plan for them or not. Leave room.
