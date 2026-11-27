<!-- regen: uv run python scripts/generation/kumi_views.py -->
# Packet Report — harness/audit

**Route:** kepric-calculate-birth (executing) | **Events:** 2 | **Reports:** 1

## The packet's chain (ledger order)

| # | Op | Actor | Timestamp |
|---|---|---|---|
| 1 | dispatch | shinko | 2026-11-26T16:09:12Z |
| 2 | report | kensho | 2026-11-26T16:14:50Z |
## Reported by kensho — 2026-11-26T16:14:50Z

# harness/audit — the wrapper set verified (kensho, 2026-11-26)

Read-only audit at the birth store (.plans/ideation/2026-11-26-kepric-calculate-birth); tree /Users/marklosey/projects/kepric/kepric-calculate (main == 171c9cfc per the briefing — no git run at this seat). All ten wrappers at .opencode/tools/ read in full; every claim below priced at this seat's own instruments. The wrapper set DISCHARGED at 1beb049c — verified and recorded here, never re-done.

## 1. The routing table (verified first-hand — each wrapper's argv read, each target's existence checked)

| Wrapper | Target (verified) | State |
|---|---|---|
| _run.ts | the spawn channel — Bun.spawn explicit-argv, env = process.env + NO_COLOR="1", stdin ignored, no shell (lines 20–54) | the shared helper; not a registered tool (no default tool export) |
| calculate.ts | `uv run python .opencode/scripts/calculate.py` — engine present; LIVE first-hand: add a=2 b=2 → `{"op": "add", "args": {"a": "2", "b": "2"}, "result": 4}` | live |
| patch.ts | `uv run python .opencode/scripts/patch.py` — engine present | routing verified; mutation verb, correctly denied to kensho (not exercised) |
| friction.ts | `uv run python .opencode/scripts/friction_ledger.py` — engine present; LIVE first-hand: this session's find/read calls ran through it | live |
| test.ts | `uv run python .opencode/scripts/test_runner.py` — engine present; the engine runs `uv run pytest tests -q` / `uv run pytest <path> -q` directly on the host (test_runner.py lines 38–40) | routing live; the channel unborn (see §3) |
| curate.ts | `uv run python .opencode/scripts/curate.py` — engine present | routing verified; mutation verb, correctly denied to kensho (not exercised) |
| junro.ts | `uv run --project /Users/marklosey/projects/kepric/hikari python /Users/marklosey/projects/kepric/hikari/scripts/junro/junro.py` — the cross-project form; LIVE first-hand: this session's query packets (the dispatch read-back) ran through it | live |
| git.ts | `uv run --project /Users/marklosey/projects/kepric/hikari python /Users/marklosey/projects/kepric/hikari/scripts/git_tool.py` — the cross-project form | routing verified at argv; the engine file itself unreadable from this seat (FR-MEM-0007); git denied to kensho (not exercised) |
| web.ts | self-contained — direct fetch to api.tavily.com (search/extract/research) and context7.com (lookup), TAVILY_API_KEY / CONTEXT7_API_KEY from env; no engine, no runArgv import | self-contained, verified; unexercised this session |
| lint.ts | `make lint` / `make typecheck` — the local Makefile (targets exist, lines 15–18) | live (see §3) |

The D1 routing verified as briefed: the five engine wrappers → the local .opencode/scripts/*.py engines (all five present: calculate.py, curate.py, friction_ledger.py, patch.py, test_runner.py); junro + git → the cross-project form; web → self-contained; lint → the local make; _run → the spawn channel. One boundary named: the hikari engines' own files could not be read from this seat (the external_directory block, FR-MEM-0007) — junro's engine is proven live by this session's own runs; git's engine is proven at the argv only.

## 2. The dead-grants verdict (the registration law — cross-checked against all thirteen seat prompts' Pack Routing tables at .opencode/prompts/seats/ + opencode.json's allow maps)

**One op without a grant — git.ts's `unshroud`, re-priced: STILL an extra.** The wrapper's enum exposes six ops (sync, drift, land, discard, unshroud, move); the ONLY pack row granting git anywhere (shinko.md — the only seat with git: allow in opencode.json) enumerates five: discard, drift, land, move, sync. `unshroud` is granted to no seat, while the wrapper documents it ("discard and unshroud paths are whitespace-split in one --paths value") and carries its argv forwarding. The engine-side pricing (whether hikari's git_tool.py implements unshroud at all) is beyond this seat's read-reach (FR-MEM-0007); the grant-side verdict is first-hand and stands.

**No grant without an op.** Every op named in every pack row exists in its wrapper's enum: calculate's 30 (identical across all eleven subagent rows, matching the 30-op enum exactly), curate's apply (jikko), friction's blank = whole tool (all thirteen seats; the 7-op enum), junro's packet report (ten subagent rows) + keikaku's 12-op subset + shinko's full 19 (the wrapper's 19-op enum), lint's check+typecheck (jikko, kensho), patch's blank = apply (jikko, shinko), test's blank = all/one (all subagent seats), web's extract+lookup+research+search (shinko, tansa — matching the four-op enum exactly). No tool-level allow in opencode.json lacks a wrapper (the nine custom tools granted all map to wrappers; glob/grep/read/task/question are opencode built-ins outside the wrapper set); no wrapper lacks a grant (each of the nine carries at least one seat's allow). `_run.ts` is a helper module, not a registered tool — correctly outside the grant maps.

**Class note for the strict census:** the `help` literal rides eight of the nine tool wrappers' operation enums (all but web) and appears in no pack row — priced as the declared usage convention (the operation arg's own description names it: 'use "help" to print this tool's usage'), not a dead engine op; named because the strict reading counts it.

## 3. The invocation contracts' state (re-priced at this seat's own instruments — the runs' own evidence)

- **lint check → `make lint`**: the target RUNS — the contract is live. The run's own verdict at this tree state: **13 errors + 1 warning, exit 1** ("Found 13 errors." / "make: *** [lint] Error 1"). Findings verbatim by class: EXE001 ×5 (shebang not executable — all five engines), PYI041 ×2 + PIE808 ×2 (calculate.py), PLW1510 ×3 (friction_ledger.py, patch.py, test_runner.py — subprocess.run without explicit check), RUF100 ×1 (test_runner.py's `# noqa: S603,S607` — codes non-enabled at this tree's ruff defaults; the FR-MEM-0006-named class: the engines authored under hikari's richer [tool.ruff], the emission carrying the engines but not the config — hypothesis at the ledger, confirmed here only as the finding's own text). Plus uv's warning: "No `requires-python` value found in the workspace. Defaulting to `>=3.13`." — despite pyproject.toml line 9 carrying `requires-python = ">=3.8"` (the warning's root-cause is another seat's act; the run is reported, never summarized away). The zero-findings bar is NOT held at the engines at this tree state.
- **lint typecheck → `make typecheck`**: the target RUNS and PASSES clean — `0 errors, 0 warnings, 0 informations` (the 0/0/0 bar, first-hand).
- **test all → the engine → `uv run pytest tests -q`**: the routing is live (the engine executes); the channel is unborn by ruling — the run fails: "error: Failed to spawn: `pytest` / Caused by: No such file or directory (os error 2)" (+ the same uv workspace warning ×2). pytest is deliberately absent (pyproject.toml: "pytest NEVER — the test channel is unborn by ruling (the KAT port is the release effort's act)"), and no tests/ directory exists at this tree. The contract routes; its target does not yet exist — by design, not by breach.
- **calculate**: live first-hand (the trace line in §1). **friction**: live first-hand (this session's find/read runs). **junro**: live first-hand (this session's query packets through the cross-project engine).

## 4. The stale-description census (description/help text naming surfaces that don't exist at this tree; the cure for every one: the re-run at hikari — the adapter's description rows regenerate from the pack source; never an edit here)

1. **lint.ts — THE NAMED DATUM, verified**: description + help claim "ruff over src/ and tests/" / "Run ruff over src/ and tests/". FALSE at this tree: the Makefile's lint target runs `uv run ruff check .opencode/scripts` (line 16), and neither src/ nor tests/ exists (glob: zero files). The typecheck half is accurate ("pyright over the tree's [tool.pyright] include set" — pyproject.toml: include = [".opencode/scripts"]). Cure: the re-run at hikari.
2. **test.ts**: description "run all tests or a single test file via Docker" + help "all [make test] Run all tests via pytest inside Docker" / "one [make test-one-docker]" — three stale surfaces: no Docker (the engine runs pytest directly on the host — first-hand), no make test / make test-one-docker targets exist (the Makefile defines only lint + typecheck), and the routing is to the local engine, not make. Cure: the re-run at hikari.
3. **The make-help tail — seven wrappers** (patch, friction, curate, git, calculate, test, junro; grep-verified): "To list every make target, use the `help` tool or run `make help`." — two stale surfaces: no `help` tool exists in this tree's wrapper set (ten wrappers, none named help; no help key in opencode.json's permission maps), and no `make help` target exists (the Makefile carries only lint + typecheck). Cure: the re-run at hikari.
4. **The engine-path brackets — four local-engine wrappers** (calculate, patch, friction, curate): the help text's op annotations name "scripts/calculate.py", "scripts/patch.py", "scripts/friction_ledger.py", "scripts/curate.py" — no scripts/ directory exists at this tree at all (glob: zero files); the real engines live at .opencode/scripts/*.py, exactly where the wrappers' own argv points — the description rows name paths the wrapper's own argv contradicts. Cure: the re-run at hikari. (junro.ts and git.ts's brackets name hikari-home-relative engine paths — consistent with the cross-project form, priced NOT stale: the engines exist at the engine's tree and the argv carries the absolute path.)
5. **friction.ts — the worktree prose**: the worktree_ledger arg's default names "the tool-ambiguity-reduction worktree path", and the union op presumes a worktree/main pair — this tree has NO worktrees (the standing law); the named default cannot resolve here. (The tane-team example in the store arg is explicitly another tree's team — family prose, priced not stale.) Cure: the re-run at hikari.
6. **patch.ts — the description_fields reference**: description + help claim "Worked examples ride description_fields.examples" — the emitted wrapper carries no description_fields at all (grep: the phrase appears only inside patch.ts's own text, twice). A reference to a surface absent from the file. Cure: the re-run at hikari.
7. **git.ts — priced NOT stale, named for the census**: the worktree/choreography prose ("run the write ops from worktree seats", ".worktrees/<slug>") describes the cross-project engine's domain at hikari — the D1 form routes there by design; the surfaces exist at the engine's tree. Same pricing as junro's brackets.
8. **web.ts, _run.ts, junro.ts descriptions — clean**: no claims of surfaces absent at this tree (web's four ops match its enum; _run's comments are provenance history; junro's description matches the engine behavior this session proved).

## 5. The boundary this audit does NOT cross

The emission receipt itself (the collaborator's --check run at the scaffold) remains UNVERIFIED — that is harness/verify's act, never this seat's. This audit is the tools-read/routing-read leg: the wrappers' routing, grants, invocation contracts, and description rows. Nothing here verifies the receipt, and no claim above should be read as one.

## 6. The LIST re-probe (third session — surface vs pin, one line)

Surface: the harness lists MCP server `hikari-prod` (2 resources — deliverable_view, proven_surface; 1 template — deliverable) while the tree's opencode.json pins only context7 + tavily disabled — hikari-prod rides user-level config, unpinned at the tree; the pin block and the listed surface disagree on scope, the surface carrying a channel the tree's config never names.

## 7. Friction

Filed **FR-MEM-0007** (open; environment / capability-loss/missing; severity low; detectability immediate) — the read tool at the kensho seat × the external_directory permission block: this audit's hikari reads (the seats source, the git engine) were refused at the harness despite the tree's committed hikari allow — the fifth seat instance of FR-MEM-0002's ask-shadow class (0002, 0003, 0005, 0006 already open; find-before-write honored). The workaround priced the grants from the in-tree generated seat prompts and named the engine-side check as beyond this seat's reach.
