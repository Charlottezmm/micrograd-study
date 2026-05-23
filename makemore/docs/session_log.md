# Session Log

## 2026-05-11

Started the makemore study project.

Planned first target:

- Set up project structure.
- Start Lesson 1 with bigram character-level modeling.
- Keep notes and mistakes separate from the micrograd repo.


---

## 2026-05-23 · Makemore Part 2 · Stage 3-5 完成

### Stage 5 Archive

**1. 变清楚了：**
- block_size 改动对应的维度链：X → C[X] → flatten → W1 输入维度，只有 W1 第一个维度跟着变，后面 hidden/output 不动
- 手动 NLL 和 F.cross_entropy 完全等价，差值只是浮点精度误差

**2. 还卡住的：**
- block_size 改动时维度的直觉（当时需要提示才想明白 view 里的数字）
- 滑动窗口（sliding window）的机制
- 为什么 bigram 不如 MLP（context 长度 vs 表达能力）

**3. 下次从：**
- Makemore Part 3

