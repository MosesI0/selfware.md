# Canonical Data Scope

All source-of-truth instance data lives under this directory.

## Structure

- `selfware_demo.md`: default editable content served by the runtime.
- `memory/data-changes.md`: append-only data change records.
- `memory/software-changes.md`: append-only software change records.

## Rules

- Runtime and agents write canonical updates here.
- Views, scripts, and generated outputs must not replace this authority.
- Every write should produce a change record entry.
