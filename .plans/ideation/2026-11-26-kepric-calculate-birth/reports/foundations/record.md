<!-- regen: uv run python scripts/generation/kumi_views.py -->
# Packet Report — foundations/record

**Route:** kepric-calculate-birth (executing) | **Events:** 2 | **Reports:** 1

## The packet's chain (ledger order)

| # | Op | Actor | Timestamp |
|---|---|---|---|
| 1 | dispatch | shinko | 2026-11-26T15:40:09Z |
| 2 | report | kensho | 2026-11-26T15:46:38Z |
## Reported by kensho — 2026-11-26T15:46:38Z

KENSHO'S REPORT — foundations/record: the standing surfaces record + THE FOUNDATIONS-GATE VERIFICATION (actor kensho, dispatched by shinko 2026-11-26T15:40:09Z, the dispatch read back first-hand at the packet ledger). Read-only held throughout — no file mutated, no git fired, no edit or ignore composed. Two acts, one session.

=== ACT 1 — THE STANDING SURFACES RECORD (verified at my instruments) ===

(a) THE README SKELETON STANDS — README.md, 2 lines, verbatim:
# kepric-calculate
calculation tools. 
— the release effort's docs arc grows it (the README leading with the trace-line law), never this route; untouched by this session ✓.

(b) THE .PLANS PROTECTION DISCHARGED (verify-and-record, never re-done):
- The store lives at .plans/ideation/2026-11-26-kepric-calculate-birth/.junro/ — junro.json (647 lines) + packets.jsonl + the two locks; read live at three channels (query packets, query status, the raw-file read-back).
- THE AMENDMENT COUNT: 33 — named at the governed query (amendments: 33) and counted at the raw file (the amendments array at junro.json:339-586: thirty-three entries, from the birth add-questions through the composition ops and set-route-status to amendment #33 — shinko's foundations-stage discharge naming confirm ✓ / review ✓ / build ✓ [the report filed] / record → kensho's gate session). The amendments current through 171c9cfc ✓.
- The tracking priced at my instruments: main == origin/main == 171c9cfcccbc7373734bcee12a0f72bd8d10c064 (the loose refs read first-hand — .git/refs/heads/main and .git/refs/remotes/origin/main both carry 171c9cfc...; the push reflog's last line "update by push" lands 171c9cfc); the commit chain at .git/logs/HEAD: 98791c9a "the birth: the birth store (Q-purpose/Q-setup-arch/Q-harness ruled), the birth record, the harness emission" → 0ec3edd4 "the harness made whole" → 1beb049c → 171c9cfc "the restart validated and the birth records landed ... the friction ledger born" — the store and CONTINUATION.md (the birth record) named landed in the committer's own subjects, both standing on disk (CONTINUATION.md at root, 18 lines, read in full). The root .gitignore read in full (223 lines): NO .plans pattern anywhere — .plans/ tracked-never-ignored, the record home ✓. INSTRUMENT LIMIT NAMED: the .git/index channel refused at my read instrument ("Cannot read binary file") and the grep instrument found nothing over it — the index's bytes beyond my read reach; the tracking priced through the text-side git surfaces (the loose refs, the reflogs, the commit subjects) + amendment #33's first-hand discharge record instead. No friction filed for it (a by-design binary refusal at a lane — git plumbing — outside my grants; "no git" held).

(c) THE LICENSE PRESENT — MIT License, "Copyright (c) 2026 Mark A Losey" (21 lines, read in full) ✓ — named for the release store's judgment (PROPOSED: MIT, the family's, per Q-setup-arch's ruling; the release effort's LICENSE arc re-judges it — never blindly re-done; this route records it).

=== ACT 2 — THE FOUNDATIONS-GATE VERIFICATION (the build's proof, at the wrapper's own targets) ===

(1) pyproject.toml READ IN FULL (27 lines): the tools-only shape — requires-python = ">=3.8" at top level (the floor-3.8 law's declaration, awaiting the release effort's [project] table per its own comment); [dependency-groups] dev = ["pyright", "ruff"] (pytest NEVER — the test channel unborn by ruling); [tool.pyright] typeCheckingMode = "strict", include = [".opencode/scripts"]; NO [project] table (project-less by composition). LIVE TOML PARSE: no dedicated toml parser at my instruments — the parse priced LIVE at every instrument that touched the file: uv parsed it at both runs (the dev group resolved and locked), pyright read [tool.pyright] (the include set drove the check), ruff ran from it — ZERO parse refusals anywhere: the toml PARSES ✓.

(2) THE TYPECHECK LEG — VERBATIM (lint typecheck → make typecheck → uv run pyright), exit 0:

uv run pyright
0 errors, 0 warnings, 0 informations

THE 0/0/0 BAR HOLDS over the [tool.pyright] include set — the five derived engines at .opencode/scripts (calculate.py, curate.py, friction_ledger.py, patch.py, test_runner.py — the tree's only .py) ✓.

(3) THE RUFF LEG — VERBATIM (lint check → make lint → uv run ruff check .opencode/scripts), exit 1: 13 FINDINGS AT THE DERIVED FIVE — STOP-AND-NAME (the fix is a re-run or a ruling, NEVER an edit; no ignore composed, none will be). The output complete:

uv run ruff check .opencode/scripts
EXE001 Shebang is present but file is not executable
 --> .opencode/scripts/calculate.py:1:1
  |
1 | #!/usr/bin/env python3
  | ^^^^^^^^^^^^^^^^^^^^^^
2 | """calculate.py — the calculate composition's pure-query math engine (Q-CALC-1).
  |

PYI041 [*] Use `float` instead of `int | float`
   --> .opencode/scripts/calculate.py:105:28
    |
105 | def _coerce_result(result: int | float) -> int | float:
    |                            ^^^^^^^^^^^
106 |     """An integral float carries no .0 in the trace (the _render law held)."""
107 |     if isinstance(result, float) and result.is_integer():
    |
help: Remove redundant type
    |
104 |
    - def _coerce_result(result: int | float) -> int | float:
105 + def _coerce_result(result: float) -> int | float:
106 |     """An integral float carries no .0 in the trace (the _render law held)."""
    |

PYI041 [*] Use `float` instead of `int | float`
   --> .opencode/scripts/calculate.py:112:54
    |
112 | def _emit(op: str, args: argparse.Namespace, result: int | float) -> int:
    |                                                      ^^^^^^^^^^^
113 |     """Print THE TRACE LINE on stdout — guarding the representable range.
    |
help: Remove redundant type
    |
111 |
    - def _emit(op: str, args: argparse.Namespace, result: int | float) -> int:
112 + def _emit(op: str, args: argparse.Namespace, result: float) -> int:
113 |     """Print THE TRACE LINE on stdout — guarding the representable range.
    |

PIE808 [*] Unnecessary `start` argument in `range`
   --> .opencode/scripts/calculate.py:764:52
    |
762 |         if sided == "one":
763 |             return _emit("binom-test", args, upper / (2**n))
764 |         lower = sum(math.comb(n, j) for j in range(0, k + 1))
    |                                                    ^
765 |         return _emit("binom-test", args, min(1.0, 2 * min(upper, lower) / (2**n)))
766 |     try:
    |
help: Remove `start` argument
    |
763 |             return _emit("binom-test", args, upper / (2**n))
    -         lower = sum(math.comb(n, j) for j in range(0, k + 1))
764 +         lower = sum(math.comb(n, j) for j in range(k + 1))
765 |         return _emit("binom-test", args, min(1.0, 2 * min(upper, lower) / (2**n)))
    |

PIE808 [*] Unnecessary `start` argument in `range`
   --> .opencode/scripts/calculate.py:776:76
    |
774 |     if sided == "one":
775 |         return _emit("binom-test", args, upper)
776 |     lower = sum(math.comb(n, j) * p**j * (1 - p) ** (n - j) for j in range(0, k + 1))
    |                                                                            ^
777 |     return _emit("binom-test", args, min(1.0, 2 * min(upper, lower)))
    |
help: Remove `start` argument
    |
775 |         return _emit("binom-test", args, upper)
    -         lower = sum(math.comb(n, j) * p**j * (1 - p) ** (n - j) for j in range(0, k + 1))
776 +         lower = sum(math.comb(n, j) * p**j * (1 - p) ** (n - j) for j in range(k + 1))
777 |     return _emit("binom-test", args, min(1.0, 2 * min(upper, lower)))
    |

EXE001 Shebang is present but file is not executable
 --> .opencode/scripts/curate.py:1:1
  |
1 | #!/usr/bin/env python3
  | ^^^^^^^^^^^^^^^^^^^^^^
2 | """curate.py — the curate composition's governed mutation engine (Q-CURATE-1).
  |

EXE001 Shebang is present but file is not executable
 --> .opencode/scripts/friction_ledger.py:1:1
  |
1 | #!/usr/bin/env python3
  | ^^^^^^^^^^^^^^^^^^^^^^
2 | """friction_ledger.py — the member-facing friction ledger engine (packets CF-3 + CF-3b).
  |

PLW1510 `subprocess.run` without explicit `check` argument
   --> .opencode/scripts/friction_ledger.py:149:12
    |
148 | def _run_git(args: list[str], cwd: Path) -> str:
149 |     proc = subprocess.run(["git", *args], cwd=str(cwd), capture_output=True, text=True)
    |            ^^^^^^^^^^^^^^
150 |     if proc.returncode != 0:
151 |         refuse(
    |
help: Add explicit `check=False`
    |
148 | def _run_git(args: list[str], cwd: Path) -> str:
    -     proc = subprocess.run(["git", *args], cwd=str(cwd), capture_output=True, text=True)
149 +     proc = subprocess.run(["git", *args], check=False, cwd=str(cwd), capture_output=True, text=True)
150 |     if proc.returncode != 0:
151 |         refuse(
    |
note: This suggestion may be incorrect or produce invalid syntax. It requires manual review and cannot be applied automatically

EXE001 Shebang is present but file is not executable
 --> .opencode/scripts/patch.py:1:1
  |
1 | #!/usr/bin/env python3
  | ^^^^^^^^^^^^^^^^^^^^^^
2 | """patch.py — the mutation tool's engine: apply a unified diff, then check.
  |

PLW1510 `subprocess.run` without explicit `check` argument
   --> .opencode/scripts/patch.py:341:12
    |
339 | def _run(cmd: list[str]) -> tuple[int, str]:
340 |     """Fixed-argv subprocess (the no-shell law); returns (exit, output tail)."""
341 |     proc = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
    |            ^^^^^^^^^^^^^^
342 |     out = (proc.stdout + proc.stderr).strip()
343 |     return proc.returncode, out[-2000:] if len(out) > 2000 else out
    |
help: Add explicit `check=False`
    |
340 |     """Fixed-argv subprocess (the no-shell law); returns (exit, output tail)."""
    -     proc = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
341 +     proc = subprocess.run(cmd, check=False, capture_output=True, text=True, timeout=120)
342 |     out = (proc.stdout + proc.stderr).strip()
343 |     return proc.returncode, out[-2000:] if len(out) > 2000 else out
    |
note: This suggestion may be incorrect or produce invalid syntax. It requires manual review and cannot be applied automatically

EXE001 Shebang is present but file is not executable
 --> .opencode/scripts/test_runner.py:1:1
  |
1 | #!/usr/bin/env python3
  | ^^^^^^^^^^^^^^^^^^^^^^
2 | """test_runner.py — the test instrument's engine: run pytest, report verbatim.
  |

PLW1510 `subprocess.run` without explicit `check` argument
   --> .opencode/scripts/test_runner.py:41:12
   |
39 |     else:
40 |         cmd = ["uv", "run", "pytest", "tests", "-q"]
41 |     proc = subprocess.run(cmd)  # noqa: S603,S607 — fixed argv, no shell; pytest inherits stdio verbatim
    |            ^^^^^^^^^^^^^^
42 |     return proc.returncode
    |
help: Add explicit `check=False`
    |
40 |         cmd = ["uv", "run", "pytest", "tests", "-q"]
    -     proc = subprocess.run(cmd)  # noqa: S603,S607 — fixed argv, no shell; pytest inherits stdio verbatim
41 +     proc = subprocess.run(cmd, check=False)  # noqa: S603,S607 — fixed argv, no shell; pytest inherits stdio verbatim
42 |     return proc.returncode
    |
note: This suggestion may be incorrect or produce invalid syntax. It requires manual review and cannot be applied automatically

RUF100 [*] Unused `noqa` directive (non-enabled: `S603`, `S607`)
  --> .opencode/scripts/test_runner.py:41:33
   |
39 |     else:
40 |         cmd = ["uv", "run", "pytest", "tests", "-q"]
41 |     proc = subprocess.run(cmd)  # noqa: S603,S607 — fixed argv, no shell; pytest inherits stdio verbatim
    |                                 ^^^^^^^^^^^^^^^^^
42 |     return proc.returncode
    |
help: Remove unused `noqa` directive
    |
40 |         cmd = ["uv", "run", "pytest", "tests", "-q"]
    -     proc = subprocess.run(cmd)  # noqa: S603,S607 — fixed argv, no shell; pytest inherits stdio verbatim
41 +     proc = subprocess.run(cmd)
42 |     return proc.returncode
    |

Found 13 errors.
[*] 5 fixable with `--fix`.

stderr:
warning: No `requires-python` value found in the workspace. Defaulting to `>=3.13`.
make: *** [lint] Error 1

The finding census: EXE001 ×5 (one per engine, :1:1 — shebang present but file not executable: calculate.py, curate.py, friction_ledger.py, patch.py, test_runner.py); PYI041 ×2 (calculate.py:105:28, calculate.py:112:54); PIE808 ×2 (calculate.py:764:52, calculate.py:776:76); PLW1510 ×3 (friction_ledger.py:149:12, patch.py:341:12, test_runner.py:41:12); RUF100 ×1 (test_runner.py:41:33 — an unused noqa directive, itself evidence the zero-ignore law was held at these surfaces: the S603/S607 ignores are inert because those rules are non-enabled at ruff's defaults). "Found 13 errors." / "[*] 5 fixable with `--fix`." STANDING DATUM: the hook itself names ruff as PHASE 2 PENDING ("ruff zero-findings joins this hook when the tree's ruff backlog is sequenced to zero") — the backlog is live at the wrapper's own target now that the Makefile points ruff at .opencode/scripts; the named-phase shape is the composition's to rule.

(4) THE INVOCATION CONTRACT ✓ — the wrapper's own ops fired (lint check + lint typecheck → make lint + make typecheck); the wrapper's argv RULES over the gate prose: foundations-gate condition 2 reads "make check and make typecheck" — NO "make check" target exists (the Makefile, read in full, 19 lines, carries exactly two targets: `lint:` → uv run ruff check .opencode/scripts; `typecheck:` → uv run pyright); jikjo's named divergence confirmed and priced at my instruments — the wrapper rules.

(5) THE RESIDUAL RISKS, PRICED LIVE:
(a) The uv dev-group resolution in the project-less pyproject: CURED LIVE — no refusal fired; both `uv run pyright` and `uv run ruff` resolved through [dependency-groups] dev and ran to completion (the typecheck leg green at 0/0/0). One datum named verbatim (the ruff leg's stderr): "warning: No `requires-python` value found in the workspace. Defaulting to `>=3.13`." — the top-level requires-python = ">=3.8" is a declaration, not yet project metadata (no [project] table); the floor-3.8 law rides the release effort's [project] absorption, exactly as the pyproject's own comment rules. A warning is an error waiting to happen — carried as evidence, the cure named, no silent deviation.
(b) THE uv.lock MINT — state: PRESENT at root (67 lines; read: version = 1, revision = 3, requires-python = ">=3.13" [the defaulted floor — the warning's lock-side datum], [manifest.dependency-groups] dev = [{pyright}, {ruff}], pyright 1.1.414 + nodeenv 1.12.0 + typing-extensions + ruff 0.17.6 locked with hashes). UNTRACKED per the composition (the build files land at tool-grants/land; my index channel cannot price git state directly — the binary refusal named above). THE ROOT .gitignore'S DISPOSITION: the template does NOT carry uv.lock — line 102 reads "# uv.lock", COMMENTED OUT (the template's own comment: "it is generally recommended to include uv.lock in version control") — the lock is NOT ignored; its land rides tool-grants/land or the release effort's packaging judgment, never silently.

(6) THE HOOK'S BYPASS RETIREMENT READINESS ✓ — .githooks/pre-commit read in full (39 lines; wired via .git/config core.hooksPath = .githooks): the bypass gate at :18-20 (if [ "$KEPRIC_CALCULATE_HOOK_BYPASS" = "1" ]; then exit 0); the pyright leg at :28: PYRIGHT_OUT=$(uv run pyright $STAGED_PY 2>&1); the 0/0/0 literal grep at :29. THE CHANNEL RESOLVES LIVE: my typecheck leg ran the hook's own channel (uv run pyright through the tree's own pyproject) and hit the exact literal the hook greps ("0 errors, 0 warnings, 0 informations") — KEPRIC_CALCULATE_HOOK_BYPASS=1 is RETIREMENT-READY at this green leg (the gate's own condition 3); the retirement itself is never my act (no git, no config mutation — the .env at root read EMPTY; the bypass rides the environment layer, the collaborator's/shinko's hand).

=== THE LIST RE-PROBE (second session — surface vs pin) ===
The pin (my AGENTS.md pack routing): calculate [30 ops] + friction + glob + grep + junro [packet report] + lint [check, typecheck] + read + test. THE VISIBLE SURFACE: ALL EIGHT PINNED TOOLS PRESENT AND LIVE — exercised this session: read (every surface, in full), glob, grep, junro (the dispatch read-back: query packets + query status — the actorless read ops, authorized by the dispatch's own "verify with junro query packets if needed"), lint (both ops — the primary act), calculate (THE KAT HEADLINE RE-PROBED LIVE: binom-test k=12 n=22 p=0.5 sided=two → {"op": "binom-test", "args": {"k": "12", "n": "22", "p": "0.5", "sided": "two"}, "result": 0.8318119049072266} — BYTE-EXACT vs the KAT headline and vs my first session's probe [amendment #11]: the same inputs yield the same bytes at the second session, the determinism law held). friction: granted, visible, the ledger READ FIRST-HAND (find-before-write honored — 5 entries: FR-MEM-0001 the birth-write, FR-MEM-0002/0003/0005 the read-reach shadow at three seats, FR-MEM-0004 the junro concurrent-write race) — NO WRITE FIRED. test: granted, visible, NOT exercised — the test channel unborn (no tests/ at the tree; the KAT port is the release effort's act; the grant stands armed, not dead). Beyond the pin: three platform-native MCP tools visible (list_mcp_resources, list_mcp_resource_templates, read_mcp_resource) — the unpinned platform layer (the hikari-prod MCP resources workaround named at FR-MEM-0002); no pin divergence. THE READ-REACH SHADOW (FR-MEM-0002/0003/0005's class): DID NOT HIT this session's probes — every read stayed in-tree; no external_directory refusal fired.

=== FRICTION ===
None filed: the shadow's class did not fire (all probes in-tree); the .git/index binary refusal is a by-design instrument limit at a lane outside my grants (named in the record, priced through the text-side git surfaces — not ledger-worthy); the ruff findings are the gate's EVIDENCE (the composition's cure: a re-run or a ruling), never ledger noise. Find-before-write honored: the ledger read first-hand before any write consideration.

=== THE VERDICT: BLOCKED ===
The evidence, split by leg:
- GREEN: the typecheck 0/0/0 over the five derived engines; the toml parses at every live instrument; the invocation contract (the wrapper's argv rules — no make check exists, make lint + make typecheck the real targets); the uv dev-group resolution cured live (no refusal); the hook's pyright channel resolved (the bypass retirement-ready); the standing surfaces record (a/b/c all verified); the LIST re-probe green (surface == pin, the calculate trace byte-exact at the second session).
- THE BLOCK: THE RUFF LEG — 13 findings over the DERIVED five at the wrapper's own target (the zero-findings bar FAILED; the zero-ignore law held — no ignore composed, none will be), plus the uv requires-python warning riding the same leg's stderr. STOP-AND-NAME: the cure is a RE-RUN (the five regenerate from hikari's emission — never an edit at this tree) or a RULING (the backlog sequenced per the hook's own PHASE 2 named-phase shape) — the composition rules it; hyoka judges the gate; this report carries the evidence, never the close.
