# oorexx-bugs

Continuous integration for patches to [ooRexx](https://sourceforge.net/projects/oorexx/)
prepared by Josep Maria Blasco: each workflow takes ooRexx trunk from
SourceForge's SVN, applies a patch set from `patches/`, builds it, and runs
the ooRexx test suite, next to an unpatched build of the same revision.

| Patch set | What | Ticket |
|---|---|---|
| `rfe-881` | `RexxCallBack`, Regina-compatible: an external function calls a label of the running program | [RFE #881](https://sourceforge.net/p/oorexx/feature-requests/881/), committed r13307-r13309 |
| `nonsyntax` | A non-SYNTAX condition raised by Rexx code called through the API is lost; `DecodeConditionInfo` on such a condition (series v2, five patches concatenated) | [#2123](https://sourceforge.net/p/oorexx/bugs/2123/) |
| `raisecondition` | `RaiseCondition("SYNTAX")` crashes the process; an untrapped HALT or NOMETHOD raised with `RaiseCondition` is lost (RAISE gives Error 4.1 / 97) | [#2126](https://sourceforge.net/p/oorexx/bugs/2126/) |
| `raise-condition-object` | `RaiseConditionObject`: native code raises a condition object as it is (RC, DESCRIPTION...); on top of `raisecondition` (the two concatenated) | [RFE #883](https://sourceforge.net/p/oorexx/feature-requests/883/) |
| `rexxinfo-date` | The build date from `__DATE__` in one place only, so that `.RexxInfo~name`, `.RexxInfo~date` and `rexx -v` agree | [#2051](https://sourceforge.net/p/oorexx/bugs/2051/) (and #1813) |

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
- `raise-condition-object` on r13305 (bug fix and RFE in one patch, before
  they were split), Windows (MSVC): `METHOD.testGroup` 328/328; full suite 24,525 tests with the same 7 failures as the
  unpatched build (whose suite has 24,197: without the patched test
  library, `METHOD.testGroup` does not load). No new warnings.
- `raisecondition` on r13305, Windows (MSVC): `METHOD.testGroup` 322/322;
  full suite 24,519 tests with the same 7 failures as before. The unpatched
  build cannot run the new tests: the process dies in them (the crash the
  patch fixes, and the old test library passing a C string as an object).
- `raise-condition-object` (both concatenated) on r13305, Windows (MSVC):
  `METHOD.testGroup` 330/330; full suite 24,527 tests, the usual 7 failures
  plus `TEST_DRIVES` (free disk space compared with WMI, a test that says it
  may fail now and then). No new warnings.
- `rfe-881` on r13306 (the same code; copyright years only), Windows
  (MSVC): the RexxCallBack test group 19/19; full suite 24,536 tests with
  the same 7 failures as the unpatched build.
