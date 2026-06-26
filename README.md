# ai-bu-slide-outliner

Claude Code commands for generating presentation outlines, speaker notes, and slide reviews. Give it a topic, an audience, and a time constraint, and it builds the full outline with notes, visuals, and Q&A prep.

## Commands

### `/slides`

Generates a complete presentation outline from scratch.

**Usage:**
```
/slides Kubernetes Operators | Platform Engineers | 20 minutes
```

**What you get:**
- Title slide
- Slide-by-slide breakdown with 3-4 bullet points each
- Speaker notes for every slide (what to SAY, not what is on the slide)
- Suggested visuals or diagrams for key slides
- Timing per slide
- Anticipated Q&A with suggested answers
- Pacing summary table

The command adapts to your time length. A 5-minute lightning talk gets 5-7 focused slides. A 40-minute deep dive gets 18-25 slides with full narrative structure.

### `/slide-notes`

Takes an existing slide deck outline and generates speaker notes for each slide.

**Usage:**
```
/slide-notes [paste or reference your outline]
```

Useful when you already have slides but need help figuring out what to say. The notes include transitions between slides, audience cues, and timing guidance.

### `/slide-review`

Reviews a presentation outline for flow, pacing, and audience fit.

**Usage:**
```
/slide-review [paste or reference your outline]
```

Provides feedback on story arc, pacing, audience fit, and slide-level recommendations. Tells you what to cut, what to strengthen, and what is missing.

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-slide-outliner.git
cd ai-bu-slide-outliner
chmod +x install.sh
./install.sh
```

This copies the commands to `~/.claude/commands/`. Restart Claude Code to pick them up.

## Example Output

Here is what a `/slides` call looks like for a 20-minute talk:

```
/slides AI-Powered Inference at Scale with llm-d | Platform Engineers | 20 minutes
```

**Generated outline (abbreviated):**

---

### Title Slide
**AI-Powered Inference at Scale with llm-d**
Subtitle: Building a Kubernetes-native LLM serving platform
Speaker: [Your Name] | Event: [Event Name]
Timing: 30 seconds

---

**Slide 1: The Problem with LLM Serving Today** (2 minutes)
- GPU utilization at most orgs sits below 40%
- Scaling LLM inference is not the same as scaling web apps
- Request routing, model sharding, and cold starts all need rethinking

**Speaker Notes:** Open with the GPU utilization stat. It grabs attention because most teams know they are wasting capacity but have not quantified it. Pause and let it sink in before moving to the next point. Transition: "So what does a better architecture look like?"

**Visual suggestion:** Bar chart comparing typical GPU utilization vs. target utilization across 3-4 common deployment patterns.

---

**Slide 2: What is llm-d?** (2 minutes)
- Kubernetes-native inference platform for large language models
- Disaggregated serving: separates prefill and decode phases
- Built on open standards, runs on OpenShift or vanilla Kubernetes

**Speaker Notes:** Keep this high-level. The audience wants to know what it does before they care how it works. Mention that llm-d is open source and community-driven. Transition: "Let me show you the architecture."

**Visual suggestion:** Simple architecture diagram showing the llm-d control plane, prefill workers, and decode workers in a Kubernetes cluster.

---

*[...continues for 12-16 slides...]*

---

### Q&A Preparation

**Q: How does this compare to vLLM or TGI?**
A: llm-d builds on top of vLLM for the serving engine. The key difference is the orchestration layer: disaggregated serving, intelligent routing, and Kubernetes-native scaling. Think of vLLM as the engine and llm-d as the full vehicle.

**Q: What GPUs does it support?**
A: Currently optimized for NVIDIA A100 and H100. AMD support through ROCm is on the roadmap.

*[...3-5 more Q&A pairs...]*

---

### Pacing Summary

| Slide | Title | Time |
|-------|-------|------|
| Title | AI-Powered Inference at Scale | 0:30 |
| 1 | The Problem with LLM Serving Today | 2:00 |
| 2 | What is llm-d? | 2:00 |
| ... | ... | ... |
| Close | Key Takeaway and Next Steps | 1:00 |
| | **Total** | **20:00** |

---

## Contributing

Open an issue or submit a PR if you have ideas for improving the outline templates or adding new commands.

## License

Apache-2.0
