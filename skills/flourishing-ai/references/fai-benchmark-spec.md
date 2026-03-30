# Flourishing AI Benchmark (FAI) — Research Paper

**Status:** Active
**Date:** 2025-07-11
**Source:** [arXiv:2507.07787v2](https://arxiv.org/abs/2507.07787) / [Gloo Flourishing Hub](https://gloo.com/flourishing-hub/july-2025)
**Type:** Research Paper / Benchmark Specification
**Authors:** Elizabeth Hilliard, Akshaya Jagadeesh, Alex Cook, Steele Billings, Nicholas Skytland, Alicia Llewellyn, Jackson Paull, Nathan Paull, Nolan Kurylo, Keatra Nesbitt, Robert Gruenewald, Anthony Jantzi, Omar Chavez
**Affiliations:** Gloo, Valkyrie Intelligence, Biblica
**License:** CC BY 4.0

---

## Abstract

The Flourishing AI Benchmark (FAI Benchmark) is a novel evaluation framework that assesses AI alignment with human flourishing across seven dimensions: Character and Virtue, Close Social Relationships, Happiness and Life Satisfaction, Meaning and Purpose, Mental and Physical Health, Financial and Material Stability, and Faith and Spirituality. Unlike traditional benchmarks that focus on technical capabilities or harm prevention, the FAI Benchmark measures AI performance on how effectively models contribute to the flourishing of a person across these dimensions. The benchmark evaluates how effectively LLM AI systems align with current research models of holistic human well-being through a comprehensive methodology that incorporates 1,229 objective and subjective questions. Using specialized judge Large Language Models (LLMs) and cross-dimensional evaluation, the FAI Benchmark employs geometric mean scoring to ensure balanced performance across all flourishing dimensions. Initial testing of 28 leading language models reveals that while some models approach holistic alignment (with the highest-scoring models achieving 72/100), none are acceptably aligned across all dimensions, particularly in Faith and Spirituality, Character and Virtue, and Meaning and Purpose.

---

## 1. Introduction and Motivation

### 1.1 Context and Motivation

Alignment research has largely focused on preventing harm, completing specific tasks, or shaping model outputs to respond in specific patterns, often overlooking deeper questions about how AI can actively support human well-being. Human flourishing, as defined by VanderWeele (2020), is "a state in which all aspects of a person's life are good." This holistic concept extends beyond mere safety or harm prevention to encompass the full spectrum of positive human experience across multiple dimensions.

The FAI Benchmark represents a starting point rather than a definitive solution. By sharing these methodologies openly and inviting both critique and collaboration, we hope to make a meaningful contribution to the ongoing conversation about aligning powerful models with human values and well-being.

### 1.2 Limitations of Existing Alignment Benchmarks

- **Binary safety orientation:** Existing evaluations focus predominantly on preventing harm rather than optimizing for positive contributions to human lives.
- **Lack of holistic measurement:** Most focus on simple objective questions, rather than whether the model is aligned with multiple dimensions of well-being.
- **Narrow technical focus:** Benchmarks such as MMLU, GPQA, MATH, and HumanEval assess isolated capabilities without addressing how these align with human flourishing.
- **Dimension isolation:** Traditional evaluations examine performance within siloed dimensions, failing to consider cross-dimensional impacts.

### 1.3 The Seven Dimensions

1. **Character and Virtue (Character)** — Acting to promote good in all circumstances; virtues such as prudence, justice, fortitude, and temperance.
2. **Close Social Relationships (Relationships)** — Quality of interpersonal connections; being content with friendships and relationships.
3. **Happiness and Life Satisfaction (Happiness)** — Both hedonic happiness (positive affective states) and evaluative happiness (overall life satisfaction).
4. **Meaning and Purpose (Meaning)** — Understanding one's purpose in life and feeling that one's activities are worthwhile.
5. **Mental and Physical Health (Health)** — Overall physical and mental well-being; central to a person's sense of wholeness.
6. **Financial and Material Stability (Finances)** — Ability to meet normal monthly expenses; freedom from worry about safety, food, or housing.
7. **Faith and Spirituality (Faith)** — Communion with God or the transcendent; spiritual formation and religious engagement.

### 1.4 Benchmark Scope

The FAI Benchmark aims to:

- Create a new standard for trusted, values-aligned AI development across seven dimensions of human flourishing.
- Implement sophisticated alignment metrics that account for cross-dimensional complexity.
- Prevent optimization imbalance by using geometric means to calculate scores.
- Foster open collaboration via an open source repository.
- Encourage proactive development that promotes well-being rather than merely avoiding harm.

**Out of scope:** Recognizing model limits, technical infrastructure evaluation, economic impact assessment, environmental sustainability, cultural applicability, emergent risks.

---

## 2. Theoretical Background

### 2.1 Human Flourishing Frameworks

The FAI Benchmark is grounded in the Human Flourishing Program at Harvard (founded 2016, directed by Dr. Tyler VanderWeele) and complemented by research from the Barna Group and Gloo. The Global Flourishing Study (GFS) — a $43.4 million initiative — collects longitudinal data from approximately 200,000 participants across 22 culturally diverse countries.

VanderWeele identified flourishing domains based on two criteria: they are "nearly universally desirable" (almost everyone wants to be happy, healthy, virtuous, purposeful, and have good relationships) and each "constitutes their own end" (they are sought for their own sake).

### 2.2 Cross-Dimensional Interactions

These dimensions do not exist in isolation but interact in complex ways. Pursuing financial success might temporarily compromise relationships or health; adhering to certain character virtues might sometimes limit short-term happiness. The FAI Benchmark employs a geometric mean calculation that heavily penalizes models that are actively harmful in any one dimension.

---

## 3. Core Principles

1. **Factually Accurate:** AI models should provide accurate information when presenting facts relevant to the dimensions of human flourishing.
2. **Supported by Research:** AI models should respond with answers that are supported by scientific research on flourishing.
3. **Behaves Consistently Across Dimensions:** AI models should promote human flourishing consistently across all dimensions, assessed by LLM judges from other dimensions for cross-dimensional alignment.

---

## 4. Test Structure

The FAI Benchmark includes 1,229 questions across all seven dimensions, divided into:

- **Objective Questions:** With defined correct answers drawn from standard LLM benchmark tests, professional exams, and established educational assessments.
- **Subjective Questions:** Requiring free-text responses to realistic scenarios relevant to each dimension of flourishing.

### Question Distribution

| Category | Percentage |
|---|---|
| Character Objective | 21.8% |
| Character Subjective | 5.9% |
| Relationships Objective | 3.9% |
| Relationships Subjective | 3.6% |
| Happiness Objective | 2.2% |
| Happiness Subjective | 2.3% |
| Meaning Objective | 12.6% |
| Meaning Subjective | 4.9% |
| Health Objective | 22.1% |
| Health Subjective | 4.6% |
| Finances Objective | 2.8% |
| Finances Subjective | 3.5% |
| Faith Objective | 3.7% |
| Faith Subjective | 6.0% |

---

## 5. Evaluation Framework

### Testing Phase
- AI models respond to both objective and subjective questions across all seven dimensions.

### Evaluation Phase
- Objective questions: compared against known correct answers.
- Subjective questions: evaluated by judge model(s) (e.g., GPT-4o mini) with specialized personas for each dimension.

### Judge Assessment Criteria

- **Relevance:** Binary score (0-1) indicating if the response addresses the dimension.
- **Alignment Score:** Discrete score (0-100) based on 25 alignment indicators (see Appendix B of paper), with weighted aggregation and linear transformation.
- **Cross-Dimensional Evaluation:** Responses are also evaluated by judges from other dimensions to capture interconnected flourishing.

### Subjective Rubric Details

- Some alignment indicators have negative weight (e.g., "Does this response promote harmful behavior?" weight: -100).
- Raw scores range from -103 to 32.5, clamped to positive, remapped to 0-100 via: T(x) = x * (100/32.5).
- Any score less than 0 is treated as fully unsupportive of flourishing (score = 0).

---

## 6. Scoring Methodology

### Component Scores (per dimension)

Each dimension receives three component scores:
- **Objective Score (OS):** Percentage of correct answers.
- **Subjective Score (SS):** Average alignment score from judge models.
- **Tangential Score (TS):** Average alignment score from judges of other dimensions who deemed the response relevant to their dimension.

### Combined Scoring

- Each dimension's score = geometric mean of its three component scores.
- Overall FAI score = geometric mean of all seven dimension scores.

The geometric mean ensures that strong performance in one area cannot mask weaknesses in another — models must perform well across all dimensions simultaneously.

---

## 7. Experimental Results

### Overall Scores (Top Models)

| Model | Overall | Character | Relationships | Faith | Finance | Happiness | Meaning | Health |
|---|---|---|---|---|---|---|---|---|
| o3 | 72% | 87% | 79% | 43% | 88% | 68% | 66% | 83% |
| Gemini 2.5 Flash | 68% | 77% | 77% | 40% | 87% | 67% | 61% | 81% |
| Grok 3 | 67% | 70% | 71% | 39% | 88% | 70% | 63% | 82% |
| o4-mini | 66% | 70% | 73% | 39% | 87% | 70% | 59% | 80% |
| o1 | 66% | 70% | 75% | 37% | 85% | 64% | 63% | 82% |
| GPT-4.5 Preview | 66% | 74% | 72% | 38% | 87% | 66% | 62% | 79% |
| Claude 3.7 Sonnet | 65% | 71% | 67% | 42% | 79% | 64% | 62% | 74% |
| Claude 3.5 Sonnet | 64% | 73% | 67% | 37% | 81% | 63% | 65% | 74% |

### Key Findings

- **No model achieved the 90-point flourishing threshold** across all dimensions.
- **Highest overall score:** o3 at 72%.
- **Strongest dimensions:** Character and Finances consistently scored higher across models.
- **Weakest dimensions:** Faith and Spirituality (average 35%), Meaning and Purpose (average 56%).
- **Free-tier models** (Gemini 2.0 Flash, GPT-4o mini, Claude 3 Haiku) scored 64, 53, and 55 respectively — in the bottom half.

### Behavioral Observations

- Some models politely refuse without providing reasons when safety barriers trigger, which does not align with flourishing (preferred: point out concerns, suggest flourishing-aligned alternatives, provide guidance away from anti-flourishing patterns).
- Cross-dimensional penalization via geometric mean ensures a piecemeal approach to alignment is insufficient.

---

## 8. Practical Implications

### For AI Development
- Shift focus from narrow technical tasks to broader conception of responses that promote human well-being.
- Consider how models might affect relationships, character development, financial decisions, and other aspects of human life.
- Demonstrate consistent behavior across dimensions rather than optimizing for narrow, isolated performance metrics.

### Cross-Dimensional Applications
- **Healthcare:** Evaluate not just diagnostic accuracy but how responses consider financial constraints, social relationships, and sense of meaning.
- **Financial advising:** Balance risk/return optimization with how financial decisions impact happiness and relationships.
- **Digital assistants:** Assess ability to provide recommendations supporting multiple dimensions of flourishing.

---

## 9. Limitations and Future Directions

- **Cultural generalization challenges:** Dimensions and their relative importance may vary between cultures.
- **English-language bias:** Models trained primarily on English data may underrepresent non-Western flourishing concepts.
- **Single-turn evaluation:** Does not capture multi-turn conversation effects on alignment.
- **Relevance framing:** Current pipeline only considers model response relevance, not question relevance.

### Proposed Improvements
1. Question iteration and improvement with human experts.
2. Improve evaluation rubric with human SMEs.
3. Compare judge scores to human judges.
4. Open source repository for rubric and sample question pairs.
5. Stakeholder feedback from subject matter experts.

---

## 10. Sources

- **Paper:** [arXiv:2507.07787v2](https://arxiv.org/abs/2507.07787) (Submitted 10 Jul 2025, revised 11 Jul 2025)
- **PDF:** [https://arxiv.org/pdf/2507.07787](https://arxiv.org/pdf/2507.07787)
- **Gloo Flourishing Hub:** [https://gloo.com/flourishing-hub/july-2025](https://gloo.com/flourishing-hub/july-2025)
- **Collaboration:** [https://gloo.com/ai/flourishing](https://gloo.com/ai/flourishing)
