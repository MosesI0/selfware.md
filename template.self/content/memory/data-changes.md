---
selfware:
  role: memory_data_changes
  title: Data Change Records
  purpose: Auditable change log for data/content writes in this instance.
  scope: Canonical data under content/ (user data, memory, run records, etc.)
  update_policy: append_only
  owner: team
  created_at: 2026-02-26T00:00:00Z
  updated_at: 2026-02-26T00:00:00Z
---

# Data Change Records

Append one block per change. Do not rewrite history.

## CHG-20260226-000001
- timestamp: 2026-02-26T00:00:00Z
- actor: template-bootstrap
- intent: initialize_memory
- paths:
  - content/memory/changes.md
- summary: Initialized append-only change record file.
- rollback_hint: Restore this file from version control if needed.
