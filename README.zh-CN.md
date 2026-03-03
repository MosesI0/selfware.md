# Selfware Protocol Demo

语言： [English](README.md) | **中文** | [Italiano](README.it.md) | [日本語](README.ja.md) | [Français](README.fr.md) | [Deutsch](README.de.md)

本仓库是 **Selfware Protocol** 的 demo 版本，提供中英文协议草案模板与可运行的 `template.self` 工作区骨架。

## 当前内容

- `template.self/selfware-zh.md`：协议草案（中文版）
- `template.self/selfware.md`：协议草案（英文版）
- `template.self/manifest.md`：实例清单与打包计划
- `template.self/content/**`：规范数据范围与记忆文件
- `template.self/runtime/server.py`：最小本地运行时
- `template.self/entrypoint/**`：动作脚本、表单与提示词

当前协议版本：`v0.1.0 (Draft)`

## Selfware 是什么

Selfware 旨在定义 Agent 时代的统一文件协议：

- A file is an app. Everything is a file.
- 在同一可分发单元（单文件或 `.self` 容器）中，可选整合数据、逻辑、视图。
- 以去中心化方式支持人↔Agent、Agent↔Agent 协作流程。

## 核心原则（摘要）

- **Canonical Data Authority**：每个实例都必须定义内容真理源。
- **Write Scope Boundary**：写入应限制在 `content/`（或声明的等价 canonical 范围）。
- **No Silent Apply**：更新必须先告知并获得用户确认，不能静默应用。
- **View as Function**：`View = f(Data, Intent, Rules)`；视图不是内容真理源。

## 如何使用

快速体验可以尝试这个 Demo：`https://github.com/awesome-selfware/openoffice.self`

1. 阅读中文协议：`template.self/selfware-zh.md`
2. 阅读英文协议：`template.self/selfware.md`
3. 通过 `template.self/entrypoint/scripts/run-app.ps1` 启动本地运行时。
4. 基于模板创建你的实例协议文件，并按需扩展运行时模块（API、打包、协作、Memory、Discovery 等）。

## 仓库说明

- 当前仓库已包含最小可运行 runtime 与治理骨架。
- 运行时实现刻意保持本地优先和最小化。

## 相关项目

- [IACT Protocol](https://github.com/floatboatai/iact) - 一种专为 AI Agent 设计的超轻量级行内交互协议，用于在自然语言对话中嵌入可点击的交互元素

## 许可证

协议正文声明为可选 MIT 许可（详见协议文件）。

