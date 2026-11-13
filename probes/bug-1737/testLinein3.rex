USE ARg fid="testdata.txt"
parse version v
say v
say
say 'reading test file:' fid

say "--- using charin to read:"
larr=.array~of(1, 11, 16, 17, 256, 257, 1024, 1025, 4091, 4096)
idx=1
max=larr~items
say 'testing s~chars and s~charin(l[idx]):'
s=.stream~new(fid)~~open("read")
start=.datetime~new
Do While s~chars>0   -- usually faster than lines() cf. rexxref.pdf
  data=s~charin( , larr[idx])
  if idx=max then idx=1
             else idx=idx+1
  End
end=.datetime~new
s~close
say "... duration:" end-start
say
say "--- now using linein to read:"
say

say 'testing s~chars and s~linein:'
s=.stream~new(fid)~~open("read")
start=.datetime~new
Do While s~chars>0   -- usually faster than lines() cf. rexxref.pdf
  data=s~linein
  End
end=.datetime~new
s~close
say "... duration:" end-start
say

say 'testing s~lines>0 and s~linein:'
s=.stream~new(fid)~~open("read")
start=.datetime~new
Do While s~lines>0   -- usually faster than lines() cf. rexxref.pdf
  data=s~linein
  End
end=.datetime~new
s~close
say "... duration:" end-start
say

say 'testing s~lines("n")>0 and s~linein:'
s=.stream~new(fid)~~open("read")
start=.datetime~new
Do While s~lines("n")>0   -- usually faster than lines() cf. rexxref.pdf
  data=s~linein
  End
end=.datetime~new
s~close
say "... duration:" end-start
say

