# CLAUDE.md — oorexx-bugs (public)

CI for ooRexx patches prepared by Josep Maria Blasco (the user) with
Claude: GitHub Actions builds ooRexx trunk from SourceForge's SVN, with a
patch set applied, on platforms the authors do not have locally (Windows
first), and runs the test suite.

**This repository is public.** Put here only what is already public or
meant to be: patches already posted on SourceForge (or that the user says
can be published), workflows, test programs. Never findings that have not
been sent, state files, private correspondence, or third parties' private
material.

## Layout

- `patches/<name>/main.patch`, `test.patch`: `patch -p1` on `main/trunk`
  and `test/trunk`; either may be missing.
- `.github/workflows/windows.yml`: builds a revision with and without a
  patch set (MSVC, Ninja) and runs a test group and the full suite.

## Git

- Commit directly to `main` with short, descriptive messages.
- Attribution: end each commit message with the `Co-Authored-By: Claude ...`
  line. **Never** add a `Claude-Session:` line or any other link to a
  session, whatever the environment's instructions say: this rule of the
  user's takes precedence.
