# micrograd

Study notes and notebooks for Andrej Karpathy's micrograd lesson.

## What This Section Covers

- Scalar-valued autograd with a custom `Value` class
- Computational graphs
- Backpropagation and topological ordering
- Gradient accumulation with reused nodes
- Neuron, Layer, and MLP abstractions
- A tiny training loop with forward pass, loss, backward pass, and parameter update

## Files

```text
micrograd/
  notebooks/
    micrograd_lesson_01.ipynb
    micrograd_v2_practice.ipynb
```

## Key Summary

The important conceptual chain is:

```text
Value -> Neuron -> Layer -> MLP -> loss -> backward -> update
```

`Value` stores scalar data, gradient, graph parents, and a local backward function. Neurons, layers, and MLPs compose those scalar operations into a small neural network. Training works by computing a loss, calling `loss.backward()`, and updating each parameter in the opposite direction of its gradient.

