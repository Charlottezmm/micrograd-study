# makemore Learning Plan

## Before Coding

- Confirm the project environment works.
- Create the first notebook in `notebooks/`.
- Keep all lesson-specific notes in this repo instead of mixing them with micrograd.

## Lesson 1 Focus

Main question:

> How can a model learn character-level patterns from names?

Checklist:

- Load the names dataset.
- Understand character vocabulary and indexing.
- Build the bigram count matrix.
- Convert counts into probabilities.
- Sample new names from the model.
- Understand negative log likelihood as the loss.
- Compare count-based bigram model with a neural-network version.

## Study Method

- First pass: follow the video and keep code running.
- Second pass: close the video and explain each block.
- Practice pass: rebuild the important parts from memory.
- Debug pass: record mistakes as concrete rules.

## Completion Criteria

Before moving to the next makemore section, I should be able to explain:

- What a bigram model is.
- Why we need a character-to-index mapping.
- What the count matrix stores.
- Why probabilities are normalized along rows.
- What negative log likelihood measures.
- How the neural bigram model connects to the count-based version.

