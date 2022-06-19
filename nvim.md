r replace
w word forward
b word backward
W WORD forward
B WORD backward
e end of the word
E end of the WORD

% start-end curly brackets
0 start of the line
$ end of the line

t<char> jump before <char>
f<char> jump to the <char>

zz center the line

dd delete line
dw delete word
d2w delete two word
db delete last word
d2b delete last two word
D delete rest of the line
di<char> delete inner words inside <char><char> eg: ()
dt<char> delete till <char>
df<char> delete till and the <char> as well

C change rest of the line
ciw change inner word
ci" change inner words inside ""

Y copy full line
yy copy full line
yiw yank inner wordk
yi<char> yank inner words inside <char><char> eg: ()
yt<char>
yf<char>

p paste
P paste before

5<down> five lines down
5<right> five letter right

>> add intends
<< remove intends
== fix intends as earlier line. (select lines and ==)
=G fix indents till the end

v visual mode
V select current line
<c-v> visual block

:%s/<word>/<word-to-replace-with>/g replace. works with selection as well.
s select and replace
r replace
w word forward
b word backward
W WORD forward
B WORD backward
e end of the word
E end of the WORD

% start-end curly brackets
0 start of the line
$ end of the line

t<char> jump before <char>
f<char> jump to the <char>

zz center the line

dd delete line
dw delete word
d2w delete two word
db delete last word
d2b delete last two word
D delete rest of the line
di<char> delete inner words inside <char><char> eg: ()
dt<char> delete till <char>
df<char> delete till and the <char> as well
diw delete inner word

C change rest of the line
ciw change inner word
ci" change inner words inside ""

Y copy full line
yy copy full line
yiw yank inner wordk
yi<char> yank inner words inside <char><char> eg: ()
yt<char>
yf<char>

p paste
P paste before

5<down> five lines down
5<right> five letter right

>> add intends
<< remove intends
== fix intends as earlier line. (select lines and ==)
=G fix indents till the end

v visual mode
V select current line
<c-v> visual block

:%s/<word>/<word-to-replace-with>/g replace. works with selection as well.

:reg see registers
"<reg-number>p to paste from  <reg-number>
