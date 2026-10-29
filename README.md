# oorexx-bugs

Continuous integration for patches to [ooRexx](https://sourceforge.net/projects/oorexx/)
prepared by Josep Maria Blasco: each workflow takes ooRexx trunk from
SourceForge's SVN, applies a patch set from `patches/`, builds it, and runs
the ooRexx test suite, next to an unpatched build of the same revision.

| Patch set | What | Ticket |
|---|---|---|
| `rfe-881` | `RexxCallBack`, Regina-compatible: an external function calls a label of the running program | [RFE #881](https://sourceforge.net/p/oorexx/feature-requests/881/), committed r13307-r13309 |
| `nonsyntax` | A non-SYNTAX condition raised by Rexx code called through the API is lost; `DecodeConditionInfo` on such a condition (series v2, five patches concatenated) | [#2123](https://sourceforge.net/p/oorexx/bugs/2123/) |
| `nonsyntax-r13319` | #2123 on r13319 (after #2126): the v2 series merged into one patch for `main/trunk`, same content; **committed** r13320 (code), r13321 (tests) | [#2123](https://sourceforge.net/p/oorexx/bugs/2123/) |
| `callroutine-context` | A native routine called through `CallRoutine` takes the native activation below it for its Rexx caller (crash in the garbage collector); **committed** r13322 (code), r13323 (tests) | [#2128](https://sourceforge.net/p/oorexx/bugs/2128/) |
| `native-argument-error` | An argument error raised by a native method (or routine) is invisible to the native code that sent the message, and its activation is left on the stack (crash in the next garbage collection); Tom Dyer's fix, on r13323, with tests; **committed** r13324 (code), r13325 (tests) | [#2116](https://sourceforge.net/p/oorexx/bugs/2116/) |
| `caller-variables` | A native routine called through `CallRoutine` crashes when it uses its caller's variables (`GetContextVariable`, `ResolveStemVariable`, `RexxVariablePool`...; rexxutil's `SysFileTree`, `SysStemSort`); on r13325, with tests; **committed** r13326 (code), r13327 (tests), r13328 (rexxapi) | [#2129](https://sourceforge.net/p/oorexx/bugs/2129/) |
| `raisecondition` | `RaiseCondition("SYNTAX")` crashes the process; an untrapped HALT or NOMETHOD raised with `RaiseCondition` is lost (RAISE gives Error 4.1 / 97); **committed** r13317 (code), r13318 (tests), r13319 (docs) | [#2126](https://sourceforge.net/p/oorexx/bugs/2126/) |
| `raise-condition-object` | `RaiseConditionObject`: native code raises a condition object as it is (RC, DESCRIPTION...); on top of `raisecondition` (the two concatenated) | [RFE #883](https://sourceforge.net/p/oorexx/feature-requests/883/) |
| `raise-condition-object-r13325` | RFE #883 alone, regenerated on r13325 (the `RaiseCondition` bug fix is in since r13317-r13319 as #2126); applies unchanged on top of `caller-variables` too; **committed** r13329 (code), r13330 (tests), r13331 (rexxapi) | [RFE #883](https://sourceforge.net/p/oorexx/feature-requests/883/) |
| `raise-return-value` | `RaiseCondition` without a result object: the value the native routine returns is lost (44.1 / 91.999 in the caller); on r13331, with a test and a rexxapi sentence | [#2130](https://sourceforge.net/p/oorexx/bugs/2130/) |
| `interpret-trap-leak` | An INTERPRETed `SIGNAL ON`, `CALL ON` or `ADDRESS WITH` in an internal routine changes its caller's settings; `ioConfigCopied` never reset; on r13331, with tests (INTERPRET, ADDRESS) | [#2131](https://sourceforge.net/p/oorexx/bugs/2131/) |
| `reraise-gc-anchor` | A SYNTAX condition raised again from native code (`RaiseConditionObject`, or a callee's SYNTAX left pending after `CallRoutine`) can be collected while it propagates; one line in `Activity::reraiseException`; on r13331, no test (needs a collection in that window) | [#2132](https://sourceforge.net/p/oorexx/bugs/2132/) |
| `rexxinfo-date` | The build date from `__DATE__` in one place only, so that `.RexxInfo~name`, `.RexxInfo~date` and `rexx -v` agree | [#2051](https://sourceforge.net/p/oorexx/bugs/2051/) (and #1813), committed r13312 |

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
- `callroutine-context` (#2128) on r13321, Windows (MSVC, run 40699207273):
  `METHOD.testGroup` 337/337; full suite 24,561 tests with the usual 7
  Windows failures, no errors. Unpatched: `METHOD.testGroup` does not load
  (its test library lacks the new method); suite 24,224, the same 7. No new
  warnings.
- `interpret-trap-leak` (#2131) on r13331, Windows (MSVC, run 40873654427):
  `INTERPRET.testGroup` 15/15; full suite 24,582 tests with the usual 7
  Windows failures, no errors. Unpatched: the 7 new tests that show the bug
  fail (4 INTERPRET, 3 ADDRESS), plus the usual 7 and `TEST_BEEP_DURATION`
  (timing). No new warnings.
- `raise-return-value` (#2130) on r13331, Windows (MSVC, run 40871300036):
  `METHOD.testGroup` 351/351; full suite 24,575 tests with the usual 7
  Windows failures, no errors. Unpatched: the new test errors (91.999), the
  rest the same. No new warnings.
- `raise-condition-object-r13325` (RFE #883) on **r13328** (after #2129),
  Windows (MSVC, run 40851772127): `METHOD.testGroup` 350/350; full suite
  24,574 tests with the usual 7 Windows failures, no errors. Unpatched: as
  on r13325 (`METHOD.testGroup` does not load; 24,224, the 7 + the four
  socket samples). No new warnings.
- `raise-condition-object-r13325` (RFE #883 alone) on r13325, Windows (MSVC,
  run 40723349153): `METHOD.testGroup` 348/348; full suite 24,572 tests with
  the usual 7 Windows failures, no errors. Unpatched: `METHOD.testGroup` does
  not load (its test library lacks the new methods); suite 24,224, the same 7
  + the four socket samples (`scclient`, `scserver`, `sfclient`,
  `sfserver`). No new warnings.
- `caller-variables` (#2129) on r13325, Windows (MSVC, run 40718582409):
  `METHOD.testGroup` 342/342; full suite 24,566 tests with the usual 7
  Windows failures, no errors. Unpatched: `METHOD.testGroup` does not load
  (its test library lacks the new routine); suite 24,224, the same 7. No new
  warnings.
- `native-argument-error` (#2116, Tom Dyer's fix with tests) on r13323,
  Windows (MSVC, run 40706860657): `METHOD.testGroup` 340/340; full suite
  24,564 tests with the usual 7 Windows failures, no errors. Unpatched:
  `METHOD.testGroup` does not load (its test library lacks the new method);
  suite 24,224, the same 7. No new warnings.
- `nonsyntax-r13319` (#2123, one patch) on r13319, Windows (MSVC, run
  40665738213): `METHOD.testGroup` 335/335; full suite 24,559 tests with the
  usual 7 Windows failures, no errors. Unpatched: `METHOD.testGroup` does
  not load (its test library lacks the new methods); suite 24,224, the same
  7 + `TEST_BEEP_DURATION` (timing). No new warnings.
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
- `rexxinfo-date` (#2051) on r13311, Windows (MSVC): `RexxInfo.testGroup`
  21/21; full suite 24,540 tests with the same 7 failures as the unpatched
  build. No new warnings.
