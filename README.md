# Selfware Protocol Demo

Language: **English** | [中文](README.zh-CN.md) | [Italiano](README.it.md) | [日本語](README.ja.md) | [Français](README.fr.md) | [Deutsch](README.de.md)

This repository is the demo version of the **Selfware Protocol**, providing draft protocol templates and a runnable `template.self` workspace scaffold.

## Current Contents

- `template.self/selfware-zh.md`: protocol draft (Chinese edition)
- `template.self/selfware.md`: protocol draft (English edition)
- `template.self/manifest.md`: instance manifest and pack plan
- `template.self/content/**`: canonical data scope and memory files
- `template.self/runtime/server.py`: minimal local runtime server
- `template.self/entrypoint/**`: action scripts, forms, and prompts

Current protocol version: `v0.1.0 (Draft)`

## What Is Selfware

Selfware aims to define a unified file protocol for the Agent era:

- A file is an app. Everything is a file.
- Data, logic, and views can be optionally bundled in one distributable unit (single file or `.self` container).
- Collaboration is decentralized across human↔Agent and Agent↔Agent workflows.

## Key Principles (Summary)

- **Canonical Data Authority**: every instance must define a source of truth.
- **Write Scope Boundary**: writes should be restricted to `content/` (or an equivalent declared canonical scope).
- **No Silent Apply**: updates must not be applied without user disclosure and confirmation.
- **View as Function**: `View = f(Data, Intent, Rules)`; views are not the source of truth.

## How to Use

For a quick hands-on experience, try this demo: `https://github.com/awesome-selfware/openoffice.self`

1. Read the Chinese draft: `template.self/selfware-zh.md`
2. Read the English draft: `template.self/selfware.md`
3. Use `template.self/entrypoint/scripts/run-app.ps1` to start the local runtime.
4. Build your own instance protocol file from these templates, then extend runtime modules as needed (API, packaging, collaboration, Memory, Discovery, etc.).

## Repository Notes

- This repository now includes a minimal runnable template runtime and governance scaffold.
- The current runtime is intentionally simple and local-first.
- This repo is under intensive development.

## Related Projects

- [IACT Protocol](https://github.com/floatboatai/iact) - An ultra-lightweight inline interaction protocol designed for AI Agents, enabling clickable interactive elements embedded in natural language conversations

## License

The protocol text declares an optional MIT license (see the protocol files for details).

