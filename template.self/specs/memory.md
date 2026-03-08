> Parent: [selfware.md](../selfware.md)

# Memory Specification

Version: 0.2.0 (Draft)

---

## 1. Overview

Memory is a set of **auditable context files** maintained under `content/`, used to:
- Record conversations, decisions, changes, and run traces
- Support collaboration and retrospection (humans and Agents)
- Provide minimal necessary context for Discovery/update decisions, with user permission

Memory MUST NOT become the protocol authority; the protocol authority is `selfware.md`.

## 2. Placement

If enabled, instances SHOULD use: `content/memory/`

Implementations MAY use a single file (e.g., `content/memory.md`), but a multi-file structure is better for permission splitting and minimization.

## 3. File Self-Description

Each Memory file MUST include metadata at the top explaining "who I am / what I record / how to update me".

### Allowed Formats (choose one)

**Option A — YAML front matter** (recommended; still Markdown):

```yaml
---
selfware:
  role: memory_chat | memory_changes | memory_decisions | memory_runs | custom
  title: "..."
  purpose: "..."
  scope: "what is included / excluded"
  update_policy: "append_only | editable | generated"
  owner: "user | team | agent"
  created_at: "YYYY-MM-DDThh:mm:ssZ"
  updated_at: "YYYY-MM-DDThh:mm:ssZ"
---
```

**Option B — `## Meta` section** (same fields; key-value lines).

## 4. Change Logs — Data vs. Software

Selfware 区分两类变更日���，分别记录到不同文件：

| 日志 | 路径 | 记录范围 |
|------|------|----------|
| **数��变更日志** | `content/memory/data-changes.md` | 实例内容/数据的变化：`content/` 下的用户数据、记忆、运行记录等 |
| **软件变更日志** | `content/memory/software-changes.md` | selfware 自身的迭代：specs、runtime、views、governance、entrypoint、manifest 等 |

这样做的理由：
- **数据变更**是实例运行时产生的，频��高、体量大，属于"使用痕迹"。
- **软件变更**是对 selfware 本身结构/逻辑的修改，属于"开发记录"，与版本迭代直接相���。
- 混合记录会导致软件迭代历史被数据操作淹没，��低可审计性。

### 归类规则

- 路径在 `content/` 下（不含 `content/memory/software-changes.md`）→ **数据变更**
- 其他路径（`specs/`、`runtime/`、`governance/`、`entrypoint/`、`manifest.md`、`selfware.md` 等）→ **软件变更**
- 若单次操作同时涉及两类路���，MUST 在两个日志中各记录一条，可通过相同的 `id` 关联。

### Required Fields (MUST)

| Field | Description |
|-------|-------------|
| `id` | Unique identifier |
| `timestamp` | When the change occurred |
| `actor` | `user` / `agent` / `service` |
| `intent` | What the change aims to achieve |
| `paths` | Affected file list |
| `summary` | Human-readable description |
| `rollback_hint` | How to roll back (git ref / backup / manual steps) |

If Git is used locally, `rollback_hint` SHOULD point to a concrete Git rollback point (commit/tag/ref).

## 5. Discovery Consent & Minimization

When Discovery carries context, Memory MAY be selectively referenced, but MUST:
- Be sent only with explicit user consent
- Default to minimal fragments (e.g., decision/change summaries, not full runs/logs)
- Support user-level trimming and redaction
