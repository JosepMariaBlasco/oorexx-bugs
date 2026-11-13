chars=xrange('a','x') "09"x || xrange('A','X')
maxlength=4096
say 'chars~length='chars~length
fn="testdata.txt"
s=.stream~new(fn)~~open("write replace")
do 500
   do i=1 to chars~length
      s~lineout(chars~substr(i,1)~copies(random(0,maxlength)))
   end
end
s~close

