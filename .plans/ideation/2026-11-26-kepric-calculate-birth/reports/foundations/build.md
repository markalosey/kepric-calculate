<!-- regen: uv run python scripts/generation/kumi_views.py -->
# Packet Report — foundations/build

**Route:** kepric-calculate-birth (executing) | **Events:** 2 | **Reports:** 1

## The packet's chain (ledger order)

| # | Op | Actor | Timestamp |
|---|---|---|---|
| 1 | dispatch | shinko | 2026-11-26T15:24:01Z |
| 2 | report | jikko | 2026-11-26T15:36:29Z |
## Reported by jikko — 2026-11-26T15:36:29Z

FOUNDATIONS/BUILD — COMPLETION REPORT (jikko, 2026-11-26)

WHAT I BUILT (two new files at the tree root, via patch, new-file hunks; nothing else touched):

1. pyproject.toml (27 lines, landed and read back byte-identical):
- [tool.pyright]: typeCheckingMode = "strict" + include = [".opencode/scripts"] — the strictness home for the hook's 0/0/0 bar (the hook greps the literal "0 errors, 0 warnings, 0 informations"); the include set = the five derived engines at .opencode/scripts (calculate.py, curate.py, friction_ledger.py, patch.py, test_runner.py — the tree's only .py, confirmed at the directory listing; I never edited them; the directory form carries exactly those five today).
- requires-python = ">=3.8" at the file's TOP LEVEL (the floor-3.8 law). CHOICE REPORTED: PEP 621's requires-python lives in [project], and the ruling forbids the [project] table flatly ("no [project] table... the release effort's own store grows those") — so the floor rides as a top-level declaration, inert to tools (a bare [project] with only requires-python would be PEP-621-invalid — name required — and would break uv at the hook's leg), until the release effort's [project] absorbs it as real metadata. Live confirmation of inertness: the friction engine's own uv run emitted "warning: No `requires-python` value found in the workspace. Defaulting to '>=3.13'" — uv does not read the top-level key.
- [dependency-groups] dev = ["pyright", "ruff"] — PEP 735, the only shape satisfying "dev-dependencies" + "no [project]"; pytest NEVER (the test channel is unborn by ruling — the KAT port is the release effort's act); unpinned (no pins ruled). ZERO runtime dependencies (no [project] means no dependencies table at all; the system is pure stdlib).
- NO packaging fields: no [project], no name/version/description/scripts, no [build-system].
- CHOICE REPORTED: no pythonVersion override in [tool.pyright] (not ruled; avoids the typeshed-floor risk on a 3.8 target).

2. Makefile (19 lines, landed and read back byte-identical):
- Targets: lint + typecheck — READ FROM THE WRAPPER (.opencode/tools/lint.ts, the invocation contract): check → runArgv(["make", "lint"]); typecheck → runArgv(["make", "typecheck"]). The wrapper's description and help text confirm: "check [make lint]", "typecheck [make typecheck]".
- lint: uv run ruff check .opencode/scripts — the tree's .py (the five engines) at ruff's DEFAULTS; NO [tool.ruff] config composed (the zero-ignore LAW stands: a lint ignore is a ruling, never a convenience — nothing ignored).
- typecheck: uv run pyright (bare — reads pyproject.toml's [tool.pyright] include set); the uv run channel matches the hook's own channel (uv run pyright).
- .PHONY: lint typecheck; recipes in hard tabs; the comment block cites the wrapper as the invocation contract.
- DIVERGENCE NAMED for the gate: foundations-gate condition #2's prose reads "make check and make typecheck" — the wrapper's argv says "make lint"; the wrapper is the invocation contract per the dispatch's never-trust instruction, so the target is lint. If the gate probes `make check` literally it will refuse (no such target) — fold at the gate or alias by ruling, never silently.

THE PATCH TOOL'S FINDINGS + SAME-TURN FIXES:
- pyproject.toml, first attempt: REFUSED — "Error (parse_error): hunk at line 1 count checksum mismatch: header says -0,+26 but the body carries 0 pre-image and 27 post-image lines" (my hunk header miscounted the body). Fixed same-turn: header corrected to @@ -1,0 +1,27 @@ → "APPLIED — 1 file(s), applied: pyproject.toml (1 hunk(s))" — no findings.
- Makefile, first attempt: "APPLIED — 1 file(s), applied: Makefile (1 hunk(s))" — no findings.
- friction write, first attempt: REFUSED — "field 'happened' is required and must be a non-empty string (got None)" (I omitted the verbatim envelope); re-filed with the refusal envelope quoted verbatim → recorded FR-MEM-0005.
- Both files re-read from disk after apply — the read-back is the read-back step (build-readback).

THE WRAPPER-DERIVED TARGET NAMES (as READ from lint.ts): lint (the ruff check) and typecheck (the pyright typecheck). The names come from the wrapper's argv: ["make", "lint"] and ["make", "typecheck"] — the exact targets kensho measured refusals for.

MY LIST PROBE (the session-start law; visible surface vs pin):
- Pin: patch / curate[apply] / lint[check, typecheck] + the read family [read, glob, grep, test, friction] + calculate at the FULL 30 + junro packet report.
- Visible and matching the pin: patch (apply/help), curate (apply/help), lint (check/typecheck/help), read, glob, grep, test (all/one/help), friction (read/find/write/propose-mode/propose-namespace/triage/union/help), calculate (the FULL 30-op enum + help), junro (the route ops, packet ops, and query ops all visible).
- Exercised live this session: patch (apply — 3 calls), read/glob/grep (the probes), junro (query packets — granted by this dispatch's own instruction; packet report — this report), friction (read, find, write).
- Unexercised by deliberate lane: lint (never verify my own work), curate (no protected-surface act rode this packet), test (the test channel is unborn by ruling), calculate (no arithmetic rode this build).
- DIVERGENCES (named, not folded by me): (1) three MCP read-family tools visible and NOT in my pin — list_mcp_resources, list_mcp_resource_templates, read_mcp_resource — the known MCP-reach workaround channel (amendment #11 names it); unexercised. (2) junro's visible surface extends beyond the pin's packet-report row (query packets exercised under this dispatch's explicit grant). No tool missing vs the pin; no dead grant in my lane.

FRICTION (handles):
- FR-MEM-0005 (NEW, mine, open, low/immediate, environment / capability-loss/missing): the FR-MEM-0002 ask-shadow hit MY seat mid-build — the hikari precedent reads (root + pyproject) refused at the permission layer (verbatim envelope in the entry); the tane precedent (the hook's own citation for the [tool.pyright] shape) is outside the permission allows entirely. Detour: composed the strictness and the dev-deps shape from the ruling's own words + first principles; flagged the residual proof for kensho's gate instead of settling it by precedent. References FR-MEM-0002's class (the ledger's append-only recurrence form).
- FR-MEM-0002 (known, open): the shadow's original record — my entry is the recurrence data, not a correction.

WHAT I DID NOT DO (explicit):
- I did NOT run lint check/typecheck, pyright, or ruff — never the verifier of my own work; the patch tool's own output was my only same-turn feedback (zero findings on both files after the same-turn fixes). The 0/0/0 bar's proof is kensho's at foundations-gate.
- I did NOT read the tane precedent (unreachable) or hikari's pyproject (refused — FR-MEM-0005) — the [tool.pyright] shape was composed from the ruling + the hook's own literal pass string, not from the family precedent.
- I did NOT touch the hook, the wrappers, the engines, the store, README/LICENSE/.gitignore, or git — all outside the ruled surface; the two files stay in the working tree for shinko's land.
- I did NOT compose [project]/name/version/description/scripts, [build-system], [tool.ruff], pytest, version pins, pythonVersion, or a `check` target alias — none ruled; every ambiguity resolved conservatively and reported above.

RESIDUAL RISKS NAMED FOR KENSHO'S GATE PROBES (honestly stated, not self-verified):
1. uv run resolving pyright/ruff from [dependency-groups] in a project-less pyproject — encouraging live signal: the friction engine's uv run at this tree picked up the pyproject as workspace context (its requires-python warning) without erroring on the project-less shape; the dev-group resolution itself stays unproven until `make typecheck` / the hook's leg fires. If it refuses: the cure is a ruling or a re-run, never a silent deviation.
2. pyright at strict over the five derived engines — findings there are STOP-and-name per the packet (the fix is a re-run or a ruling, never an edit of a derived surface).
3. The gate prose "make check" vs the wrapper's `make lint` (named above).
4. The first uv sync mints uv.lock (untracked; the root .gitignore keeps it tracked-by-recommendation — its disposition is shinko's at the land). .venv and .ruff_cache are already gitignored.
