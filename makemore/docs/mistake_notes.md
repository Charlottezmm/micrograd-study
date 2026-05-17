# Mistake Notes

Use this file to record concrete mistakes from each study session.

## Template

### Date

- Mistake:
- Why it happened:
- Correct version:
- Rule to remember:


## 2026-05-17: Makemore Lesson 01 Review

- Mistake: Confused the count matrix `N` with neural bigram weights `W`.
  - Correct version: `N` is computed from data. `N[i, j]` is the count of character `i` followed by character `j`. `W` is randomly initialized and learned by gradient descent.
  - Rule to remember: `N` counts; `P` normalizes counts; `W` learns logits.

- Mistake: Treated `P['a']` like a single probability value.
  - Correct version: `P['a']` is a full probability distribution over all possible next characters. Its row sums to 1.
  - Rule to remember: one row of `P` means `P(next character | current character)`.

- Mistake: Described neural bigram loss as summing all probabilities.
  - Correct version: for each example `i`, take only the probability assigned to the true next character: `probs[i, ys[i]]`. The loss is the average `-log` of those probabilities.
  - Rule to remember: NLL punishes low probability on the correct next character, not all probabilities equally.
