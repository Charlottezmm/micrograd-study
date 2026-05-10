# Deep Learning Study

This repo tracks my deep learning study notes, notebooks, experiments, and mistake logs.

The current focus is Andrej Karpathy's neural-network courses, starting from first principles and gradually moving toward practical PyTorch workflows.

## Courses

| Course | Status | Focus |
| --- | --- | --- |
| [micrograd](micrograd/) | Completed first pass | Autograd, backpropagation, MLP training loop |
| [makemore](makemore/) | Starting | Character-level language modeling |

## Repo Structure

```text
.
├── micrograd/      micrograd notebooks and recall practice
├── makemore/       makemore notes, notebooks, and future code
├── requirements.txt
└── README.md
```

Each course folder keeps its own:

- notebooks
- lesson notes
- mistake notes
- small experiments

## Study Workflow

1. Watch a small section of the lesson.
2. Rebuild the code in a notebook.
3. Pause and explain the idea in my own words.
4. Debug actively instead of only copying the solution.
5. Record repeated mistakes as concrete rules.
6. Commit stable checkpoints to git.

## Environment

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

## Current Learning Thread

The micrograd section established the core loop:

```text
Value -> Neuron -> Layer -> MLP -> loss -> backward -> update
```

The next section, makemore, starts from character-level bigram modeling and builds toward neural language models.

