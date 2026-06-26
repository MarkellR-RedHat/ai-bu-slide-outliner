# ai-bu-slide-outliner

Claude Code commands for generating presentation outlines, speaker notes, and slide reviews. Give it a topic, an audience, and a time constraint, and it builds the full outline with notes, visuals, and Q&A prep.

## Commands

### `/slides`

Generates a complete presentation outline from scratch.

**Usage:**
```
/slides Kubernetes Operators | Platform Engineers | 20 minutes
/slides AI Strategy Update | VP Engineering | 15 minutes | executive update
/slides KV Cache Routing | ML Engineers | 5 minutes | lightning talk
```

**What you get:**
- Title slide
- Slide-by-slide breakdown with 2-4 bullet points each (never more than 4)
- Speaker notes for every slide (conversational, not a script)
- Transition phrases between every slide
- Suggested visuals or diagrams for key slides
- Timing per slide
- Anticipated Q&A with suggested answers
- Pacing summary table

The command adapts to your time length and presentation type. A 5-minute lightning talk gets 5-7 focused slides. A 40-minute deep dive gets 18-25 slides with architecture diagrams and demo slots. Supported types: keynote, technical deep dive, executive update, panel prep, and lightning talk.

### `/slide-notes`

Takes an existing slide deck outline and generates speaker notes for each slide.

**Usage:**
```
/slide-notes [paste or reference your outline]
```

Useful when you already have slides but need help figuring out what to say. The notes include transition phrases between slides, audience cues like "[PAUSE]" and "[ASK the audience]", timing guidance, and concrete examples or anecdotes for each slide.

### `/slide-review`

Reviews a presentation outline for flow, pacing, audience fit, and slide design.

**Usage:**
```
/slide-review [paste or reference your outline]
```

Provides feedback on story arc, pacing, audience fit, slide design (bullet count, text length, visual balance), speaker notes quality, and slide-level recommendations. Tells you what to cut, what to strengthen, and what is missing.

### `/slide-to-marp`

Converts an existing outline into Marp markdown format, ready to render as a slide deck.

**Usage:**
```
/slide-to-marp [paste or reference your outline]
```

Outputs a complete `.md` file with Marp front matter, slide separators, speaker notes in comment syntax, image placeholders, and theme recommendations. Includes rendering instructions for Marp CLI (`marp deck.md --pdf`).

### `/slide-story`

Builds a presentation using narrative structure: situation, complication, resolution.

**Usage:**
```
/slide-story Why We Rebuilt Our CI Pipeline | Engineering Leads | 20 minutes
```

For when you need to tell a story, not just present facts. Uses the SCR (Situation, Complication, Resolution) framework to structure the talk. Best for proposals, case studies, lessons learned, and persuasion talks.

### `/slide-from-doc`

Takes a long document and distills it into a slide deck outline.

**Usage:**
```
/slide-from-doc [paste document or provide file path]
/slide-from-doc [document] | Platform Engineers | 20 minutes
```

Analyzes the document, identifies the core thesis and best material for slides, and builds an outline. Includes a document analysis section showing editorial decisions, source references back to the original document, and a gaps checklist for material you will need to create.

## Templates

Reference templates for common presentation formats are in the `templates/` directory:

| Template | Duration | Slides | Best For |
|----------|----------|--------|----------|
| `technical-deep-dive.md` | 30-40 min | 18-25 | Architecture talks, demos, how-it-works sessions |
| `lightning-talk.md` | 5 min | 5-7 | Conference lightning rounds, meetup short talks |
| `executive-update.md` | 15 min | 8-12 | Status updates, decision requests, leadership reviews |

Use these as a starting point or reference when building your own outlines. They include slide-by-slide structure, timing guidance, and presentation tips specific to each format.

## Install

```bash
git clone https://github.com/MarkellR-RedHat/ai-bu-slide-outliner.git
cd ai-bu-slide-outliner
chmod +x install.sh
./install.sh
```

This copies the commands to `~/.claude/commands/`. Restart Claude Code to pick them up.

## Complete Example

Here is the full output of a `/slides` call for a 20-minute talk:

```
/slides AI-Powered Inference at Scale with llm-d | Platform Engineers | 20 minutes | technical deep dive
```

---

### Title Slide
**AI-Powered Inference at Scale with llm-d**
Subtitle: Building a Kubernetes-native LLM serving platform
Speaker: [Your Name] | Event: [Event Name]
Timing: 30 seconds

---

**Slide 1: The Problem with LLM Serving Today** (2 minutes)
- GPU utilization at most orgs sits below 40%
- Scaling inference is not like scaling web apps
- Routing, sharding, and cold starts need rethinking

**Speaker Notes:** Open with the GPU utilization stat. It grabs attention because most teams know they are wasting GPU capacity but have not quantified it. Pause for two seconds and let it land. Then ask: "Who here has looked at their actual GPU utilization numbers?" Get a few hands, then move on. Transition: "So what does a better architecture look like? That is what llm-d was built to solve."

**Visual suggestion:** Bar chart comparing GPU utilization across 4 deployment patterns (single model per GPU, batched, continuous batching, disaggregated). Show the gap between current and target.

---

**Slide 2: What is llm-d?** (2 minutes)
- Kubernetes-native inference platform for LLMs
- Disaggregated serving: separates prefill and decode
- Open source, runs on OpenShift or vanilla K8s

**Speaker Notes:** Keep this high-level. The audience wants to know what it does before they care how it works. Emphasize "Kubernetes-native" because this crowd lives in Kubernetes and they are tired of tools that bolt on as an afterthought. Mention that it is open source and community-driven. Transition: "Let me show you the architecture so you can see how these pieces fit together."

**Visual suggestion:** Simple architecture diagram with three layers: the llm-d control plane at the top, prefill workers and decode workers in the middle, and the Kubernetes cluster at the bottom.

---

**Slide 3: Architecture Overview** (2.5 minutes)
- Control plane handles routing and scheduling
- Prefill workers process input tokens
- Decode workers generate output tokens
- KV cache shared across the pipeline

**Speaker Notes:** Walk through the diagram left to right. Start with a request coming in, hitting the router, getting assigned to a prefill worker, then the KV cache being handed to a decode worker. The key insight to land: "By separating prefill and decode, you can scale each independently based on actual demand. Prefill is compute-heavy, decode is memory-heavy. Different hardware profiles, different scaling curves." Transition: "Now let me show you the part that makes this work in practice: the routing layer."

**Visual suggestion:** Sequence diagram showing a request flowing through the system: client to router to prefill worker to KV cache transfer to decode worker to response.

---

**Slide 4: Intelligent Request Routing** (2 minutes)
- Prefix-aware routing for KV cache reuse
- Load-based scheduling across workers
- Priority queues for latency-sensitive workloads

**Speaker Notes:** This is the slide that differentiates llm-d from simpler serving setups. Explain prefix-aware routing with a concrete example: "If ten users are asking questions about the same document, the prefill for that document's context only happens once. The KV cache gets reused across all ten requests. That is where the efficiency gains come from." Transition: "Let me show you what this looks like running on a real cluster."

**Visual suggestion:** Diagram showing three requests with overlapping prefixes being routed to the same prefill worker, with the shared KV cache highlighted.

---

**Slide 5: Demo Setup** (30 seconds)
- 4-node OpenShift cluster with 8 GPUs
- vLLM backend serving Llama 3 70B
- Simulated traffic: 50 concurrent users

**Speaker Notes:** Brief context slide. Tell the audience what they are about to see so they know what to watch for. "I am going to show you two things: first, how requests get distributed across workers, and second, what happens to GPU utilization under load." Transition: "Let us switch to the terminal."

**Visual suggestion:** Screenshot of the cluster dashboard showing nodes and GPU allocation before the demo starts.

---

**Slide 6: Demo - Live Walkthrough** (3 minutes)
- Deploy llm-d with a single Helm chart
- Send traffic and watch routing decisions
- Monitor GPU utilization in real time

**Speaker Notes:** [LIVE DEMO] Walk through the deployment first: `helm install llm-d ...` and show the pods coming up. Then start the load generator and switch to the monitoring dashboard. Point out how prefill and decode workers scale independently. Highlight GPU utilization climbing to 75-80%, compared to the 40% stat from slide 1. If the demo breaks, switch to the backup recording. Transition: "So that is what it looks like in practice. Let me talk about the results we have seen in production."

**Visual suggestion:** Split screen: terminal on the left showing the deployment, Grafana dashboard on the right showing GPU utilization climbing.

---

**Slide 7: Production Results** (2 minutes)
- 2x improvement in GPU utilization
- 40% reduction in time-to-first-token
- 3x throughput increase at the same cost

**Speaker Notes:** Let the numbers do the work. Put them up and pause. These are results from actual production workloads, not synthetic benchmarks. Mention the scale: "This is across a fleet of 64 GPUs serving 500 concurrent users." If the audience looks skeptical, acknowledge it: "These numbers surprised us too. The key is that disaggregated serving lets you match hardware to workload characteristics instead of running everything on the same profile." Transition: "These results did not come for free. Let me be honest about the tradeoffs."

**Visual suggestion:** Three large metrics displayed prominently: "2x GPU utilization," "40% faster TTFT," "3x throughput." Use a before/after comparison layout.

---

**Slide 8: Tradeoffs and Limitations** (1.5 minutes)
- KV cache transfer adds network overhead
- Requires high-bandwidth interconnect between nodes
- Not yet optimized for small models (under 7B)

**Speaker Notes:** This is the trust-building slide. Technical audiences respect honesty about limitations. For each tradeoff, briefly explain when it matters and when it does not. "The network overhead is real, but it is only significant if your interconnect is below 100 Gbps. On InfiniBand or RoCE, the transfer time is negligible compared to compute time." Transition: "With those caveats in mind, let me talk about what is coming next."

**Visual suggestion:** Table showing when disaggregated serving wins vs. when a simpler setup is sufficient, based on model size, request volume, and hardware.

---

**Slide 9: Roadmap** (1.5 minutes)
- AMD GPU support via ROCm (Q3)
- Multi-model serving on shared infrastructure
- Autoscaling integration with KEDA

**Speaker Notes:** Keep this forward-looking but grounded. Only mention things that are actively in development, not aspirational. For each item, give a short "why it matters" framing. "AMD support is about choice. Not every team has access to H100s, and they should not need them to run inference efficiently." Transition: "Let me leave you with the key takeaways."

**Visual suggestion:** Simple timeline showing the three roadmap items with target quarters.

---

**Slide 10: Key Takeaways** (1 minute)
- Disaggregated serving unlocks GPU efficiency
- llm-d makes it Kubernetes-native and production-ready
- Open source: start contributing today

**Speaker Notes:** Slow down here. Restate the main point clearly: "If you are running LLM inference on Kubernetes and your GPU utilization is below 50%, disaggregated serving is worth evaluating. llm-d gives you a production-ready way to do that without leaving the Kubernetes ecosystem." Transition: "Here is how to get started."

**Visual suggestion:** The three takeaways displayed as large text, one per line, with a simple icon next to each.

---

**Slide 11: Get Started** (30 seconds)
- GitHub: github.com/llm-d/llm-d
- Docs: llm-d.ai
- Slack: #llm-d on Kubernetes Slack

**Speaker Notes:** Keep this short. "The repo is here, the docs are here, and if you want to talk to the team, we are on Kubernetes Slack. I will leave this slide up during Q&A." QR code pointing to the GitHub repo.

**Visual suggestion:** QR code on the right side, links on the left side. Clean and scannable.

---

### Q&A Preparation

**Q: How does this compare to vLLM or TGI?**
A: llm-d builds on top of vLLM for the serving engine. The key difference is the orchestration layer: disaggregated serving, intelligent routing, and Kubernetes-native scaling. Think of vLLM as the engine and llm-d as the full vehicle.

**Q: What GPUs does it support?**
A: Currently optimized for NVIDIA A100 and H100. AMD support through ROCm is on the roadmap for Q3.

**Q: How hard is it to migrate from our current vLLM setup?**
A: If you are already running vLLM on Kubernetes, the migration is mostly about deploying the llm-d control plane alongside your existing workers. The vLLM configuration stays the same.

**Q: What is the minimum cluster size to see benefits?**
A: You start seeing meaningful gains at 4 GPUs. Below that, the overhead of disaggregation outweighs the benefits. The sweet spot is 8-32 GPUs.

**Q: How does the KV cache transfer work across nodes?**
A: It uses NCCL for GPU-to-GPU transfer over the network fabric. On InfiniBand, the latency is sub-millisecond for typical cache sizes. On ethernet, it depends on your bandwidth, but 25 Gbps is the practical minimum.

**Q: Is this production-ready or still experimental?**
A: It is in production at several organizations running inference workloads. The core architecture is stable. Some features on the roadmap (AMD support, multi-model) are still in development.

---

### Pacing Summary

| Slide | Title | Time |
|-------|-------|------|
| Title | AI-Powered Inference at Scale with llm-d | 0:30 |
| 1 | The Problem with LLM Serving Today | 2:00 |
| 2 | What is llm-d? | 2:00 |
| 3 | Architecture Overview | 2:30 |
| 4 | Intelligent Request Routing | 2:00 |
| 5 | Demo Setup | 0:30 |
| 6 | Demo - Live Walkthrough | 3:00 |
| 7 | Production Results | 2:00 |
| 8 | Tradeoffs and Limitations | 1:30 |
| 9 | Roadmap | 1:30 |
| 10 | Key Takeaways | 1:00 |
| 11 | Get Started | 0:30 |
| | **Total** | **19:00** |

*One minute of buffer for questions that come up during the talk.*

---

## Contributing

Open an issue or submit a PR if you have ideas for improving the prompts, adding new commands, or contributing templates.

## License

Apache-2.0
