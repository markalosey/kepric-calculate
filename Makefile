# kepric-calculate — the lint wrapper's targets. The invocation contract is
# .opencode/tools/lint.ts (the wrapper's argv): check → make lint, typecheck →
# make typecheck — the target names come from the wrapper's argv, never assumed
# from prose.
#
# lint:       ruff over the tree's .py (the five derived engines at
#             .opencode/scripts) — the zero-findings bar; the zero-ignore LAW
#             stands (a lint ignore is a ruling, never a convenience): ruff runs
#             at its defaults, no config.
# typecheck:  pyright over the [tool.pyright] include set (the same five engines)
#             — the 0/0/0 bar's config rides pyproject.toml, its strictness home.

.PHONY: lint typecheck

lint:
	uv run ruff check .opencode/scripts

typecheck:
	uv run pyright
