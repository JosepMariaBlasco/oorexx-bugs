# oorexx-bugs

Continuous integration for patches to [ooRexx](https://sourceforge.net/projects/oorexx/)
prepared by Josep Maria Blasco: each workflow takes ooRexx trunk from
SourceForge's SVN, applies a patch set from `patches/`, builds it, and runs
the ooRexx test suite, next to an unpatched build of the same revision.

| Patch set | What | Ticket |
|---|---|---|
| `rfe-881` | `RexxCallBack`, Regina-compatible: an external function calls a label of the running program | [RFE #881](https://sourceforge.net/p/oorexx/feature-requests/881/) |
| `nonsyntax` | A non-SYNTAX condition raised by Rexx code called through the API is lost; `DecodeConditionInfo` on such a condition (series v2, five patches concatenated) | [#2123](https://sourceforge.net/p/oorexx/bugs/2123/) |
| `raise-condition-object` | `RaiseConditionObject`: native code raises a condition object as it is (RC, DESCRIPTION...); `RaiseCondition("SYNTAX")` no longer crashes; an untrapped HALT or NOMETHOD raised through the API gives Error 4.1 / 97, as RAISE does | feature request (to be filed) |

## Results

- `rfe-881` on r13286, Windows (MSVC): the RexxCallBack test group 19/19;
  full suite 24,431 tests with the same 7 failures as the unpatched build
  (printer tests, `TEST_ARG_LIMIT`, two stdout-to-file tests). The first
  runs found two Windows-only defects in the patch, both fixed here
  (`small` is a macro in the Windows headers; a throw inside a catch block
  nests on MSVC's stack in deep recursion).
- `nonsyntax` (#2123, v2) on r13286, Windows (MSVC): `METHOD.testGroup`
  329/329; full suite 24,421 tests with the same 7 failures as the
  unpatched build (whose suite has 24,092: without the patched test
  library, `METHOD.testGroup` does not load). No new warnings.
- `halt-request` (#2124) on r13286, Windows (MSVC): `INVOCATION.testGroup`
  55/55; full suite 24,412 tests with the same 7 failures as the unpatched
  build. No new warnings.
- `raise-condition-object` on r13305, Windows (MSVC): `METHOD.testGroup`
  328/328; full suite 24,525 tests with the same 7 failures as the
  unpatched build (whose suite has 24,197: without the patched test
  library, `METHOD.testGroup` does not load). No new warnings.
