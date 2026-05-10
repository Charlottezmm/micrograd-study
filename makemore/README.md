# makemore

Study notes, notebooks, and experiments for Andrej Karpathy's makemore series.

## Goals

- Understand character-level language modeling from first principles.
- Build the makemore pipeline step by step: bigram model, MLP, activations, initialization, batch normalization, and deeper networks.
- Keep runnable notebooks and short written summaries for each lesson.
- Record mistakes and debugging notes so repeated errors become reusable checklists.

## Structure

```text
makemore/
  data/       raw or downloaded datasets
  docs/       learning plans, summaries, and mistake notes
  notebooks/  Jupyter notebooks for lesson work
  src/        reusable Python code, if needed later
```

## Current Status

Starting makemore after completing the micrograd first-pass practice loop.

First focus:

- bigram character-level language model
- character vocabulary and indexing
- count matrix and probability normalization
- negative log likelihood
- neural bigram model

## Workflow

1. Watch a small section.
2. Rebuild the code in a notebook.
3. Pause and explain the key idea in my own words.
4. Record mistakes in [docs/mistake_notes.md](docs/mistake_notes.md).
5. Commit when the lesson checkpoint is stable.

