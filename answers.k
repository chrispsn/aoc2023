/  Day 1
/ ovs expressed these ideas much better here:
/ https://github.com/Starwort/advent-of-code-golf-2023/blob/master/solutions/1/K%20(ngn/k)

x:0:"01.txt"
f:{x^x^1 3 4 5#\:y}                      / get match from list x at front of word y, else empty. x lengths hardcoded
g:{*x(~#x@)(1_)/y}                       / run function x on word y until first match, moving left-to-right
h:{+/10/10!x?(g[f x]'y;|'g[f@|'x]'|'y)}  / run g left and right on each word, convert to numbers and sum

w:$!10
h[w]x  / part 1

w,:" "\"0 one two three four five six seven eight nine"
h[w]x  / part 2


/ Day 2

x:0:"02.txt"
games:+{`red`green`blue#|/'=!/`I`$'+0N 2#2_" "\x^",;"}'x
/ alt: games:+{(.x)@>!x:|/'`I$=!/+0N 2#2_" "\x^",;"}'x
+/1+&&/13 14 15>games  / part 1
+/*/games              / part 2

/ Day 3
/ needs refinement. it turned out my p1 answer was right
/ but an interpreter bug was giving off numbers
/ and I spent heaps of time trying to figure that out

r:+|:         / 2D rotate clockwise
rr:(4-!4)r/'  / reverse rotates
digit:~"0:"'  / digit mask

/ pad x with dots - helps with razing
/ (ie what if two numbers got merged accidentally?)
/x:++4(".",r@)/x

symmask:~(digit x)|x="."
symregions:(,/,/:\:/-1 0 1+/:)'+&symmask

len:#x
symregions:(,/&'x!'symmask)!len/''symregions

x:,/x

numlocs:{(x@)#(&~=':x)_!#x:digit x}x
numlocs:(.'x numlocs)!numlocs

/ part 1
/ broken due to something relating to monad' on dicts
/ +/&~&/'^(len/',/symregions)?numlocs
/ workaround:
+/(!numlocs)@&~&/'^(,/symregions)?.numlocs

/ part 2
starregions:*(,"*")#(.symregions)@=!symregions
+/*/+(2=#:')#(`i=@:')#'?'@[x; . numlocs; :; . !numlocs]starregions

\\
