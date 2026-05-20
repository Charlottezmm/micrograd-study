# Remote Jupyter Workflow

## 问题描述

- 同一个 `.ipynb` 在两台电脑本地同时打开和保存时，Jupyter 很容易出现 `File Changed` 冲突提示。
- `.ipynb` 是大 JSON 文件，不适合并发编辑，也不适合手工合并冲突。
- 当前仓库需要支持在多台 Mac 之间切换学习，但不能再依赖“双机各开一份 notebook”。

## 解决方案

- 固定一台机器作为唯一 Jupyter 主机，推荐使用 `Mac mini`。
- 主机只在本地监听 `127.0.0.1:8888`，不直接暴露给局域网或公网。
- 另一台电脑通过 SSH 隧道访问主机上的 Jupyter。
- 新增脚本：
  - `scripts/start_remote_jupyter.sh`
  - `scripts/stop_remote_jupyter.sh`
  - `scripts/print_ssh_tunnel_command.sh`

## 实施步骤

1. 在 Jupyter 主机上准备环境。

```bash
cd /Users/charlotte/deep-learning-study
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

2. 在主机上启动远程 Jupyter。

```bash
cd /Users/charlotte/deep-learning-study
./scripts/start_remote_jupyter.sh
```

3. 如需停止主机上的 Jupyter。

```bash
cd /Users/charlotte/deep-learning-study
./scripts/stop_remote_jupyter.sh
```

4. 在客户端电脑上生成 SSH 隧道命令。

```bash
cd /Users/charlotte/deep-learning-study
./scripts/print_ssh_tunnel_command.sh <remote-host> <remote-user>
```

示例：

```bash
./scripts/print_ssh_tunnel_command.sh 192.168.1.20 charlotte
ssh -L 8888:127.0.0.1:8888 charlotte@192.168.1.20
```

5. 在客户端电脑执行输出的 SSH 隧道命令，然后用浏览器打开：

```text
http://127.0.0.1:8888
```

## 使用流程

- `Mac mini` 作为唯一 notebook 编辑真源。
- 另一台电脑只通过浏览器访问 `Mac mini` 上的 Jupyter，不在本地再单独启动同一个 repo 的 notebook。
- 每次结束学习后：
  - 在 Jupyter 内保存 notebook
  - 回到仓库终端提交修改
  - 执行 `git push`
- 另一台电脑如果要继续做纯代码或文档修改，先 `git pull` 再开始。

## 网络方案

- 同一局域网：
  - 直接使用 `Mac mini` 的局域网 IP 建 SSH 隧道。
- 跨网络：
  - 推荐用 `Tailscale`
  - 两台电脑加入同一 Tailscale 网络后，使用 Tailscale IP 或 MagicDNS 名称建立 SSH 隧道

## 测试验证

- 主机启动后，执行：

```bash
lsof -nP -iTCP:8888 -sTCP:LISTEN
```

- 预期看到 `127.0.0.1:8888` 处于监听状态。
- 客户端建立隧道后，浏览器访问 `http://127.0.0.1:8888` 应能打开 JupyterLab。
- 同一个 notebook 只保留一个活跃编辑入口后，不应再频繁出现 `File Changed`。

## 注意事项

- 不要在两台电脑本地同时编辑同一个 `.ipynb`。
- 不要把 Jupyter 直接绑到 `0.0.0.0` 后裸露到公网。
- 如果必须跨机器频繁切换，优先切换“浏览器访问入口”，而不是切换“本地编辑真源”。
- 如果后续 notebook 继续增多，建议再补 `jupytext`，把关键信息同步为可读的 `.py` 文件，降低 git 冲突成本。
