# allocator-findfit

Two changes in the ooRexx memory allocator (`interpreter/memory/`), on
main/trunk r13625:

1. `DeadObjectPool::findFit(length, realLength)` moves each block it passes
   (too small for the request) to the tail of the chain, and stops after the
   block that was last when it started.
2. After a collection started by the large segment set,
   `LargeSegmentSet::ensureFreeSpace()` grows that set until its free space
   is at least 5% of the live bytes of the normal set.

`bench/`: the programs used to measure it (`bench.ps1` runs them on Windows,
`.github/workflows/alloc-windows.yml`, x64 and x86, clean and patched on the
same runner).
