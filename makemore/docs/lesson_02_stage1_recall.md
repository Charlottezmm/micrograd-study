# Makemore Part 2 · Stage 1 Recall

Use this page for Stage 1 of the `karpathy-review-sop`.

Rules:

- Write from memory first.
- Do not look up concepts.
- Karpathy notebook may be used only as a dictionary for API or syntax.
- Mark unclear points with `?` instead of stalling.
- Use hints only to get started, not to replace recall.

## Session Info

- Date:
- Lesson:
- Start time:
- Stop time:

## 1. Problem Definition

Write what problem this lesson is solving.

Hints:

- What is one training example?
- What is the input: one char, or a fixed-length context?
- What is the output: a whole word, or the next char?
- Why is Part 1 not enough?

Template:

- Input:
- Output:
- Training goal:
- Why this is an upgrade over Part 1:

## 2. Math / Loss Formula

Write the core math objects and the loss used in this lesson.

Hints:

- What are `C`, `W1`, `b1`, `W2`, `b2`?
- What is `logits`?
- What does `F.cross_entropy(logits, Y)` compare?
- If you remember NLL form, write it too.

Template:

- Parameters:
- Forward objects:
- Loss:
- What the loss is trying to make happen:

## 3. Algorithm Skeleton / Pseudocode

Write the training and generation skeleton in plain language or pseudocode.

```text
training:
  ...

generation:
  ...
```

Hints:

- Training skeleton should include: sample batch -> embedding lookup -> hidden layer -> logits -> loss -> zero grad -> backward -> update.
- Generation skeleton should include: start context -> predict next char -> sample -> roll context -> stop on end token.

## 4. Interface With Part 1

Write how this lesson connects to the previous lesson.

Hints:

- What stayed the same from Part 1?
- What changed in the input representation?
- How is this still a next-character prediction task?
- What did bigram do that this model now generalizes?

Template:

- Same as Part 1:
- New in Part 2:
- Why this matters:

## 5. My `?` List

Write every place where your recall breaks.

Good `?` examples:

- `? why emb.view(-1, 6)`
- `? why block_size = 3`
- `? why requires_grad must be True`
- `? cross_entropy vs manual NLL`

- ?

## Optional: Shapes I Think I Remember

If helpful, write tensor shapes from memory.

Hints:

- `C`
- `emb`
- `emb.view(...)`
- `h`
- `logits`

- 
