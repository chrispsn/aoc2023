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
/ but i misunderstood how monad'dict worked in ngn/k at the time
/ and i spent heaps of time trying to figure out the problem

x:0:"04.txt"
digit:~"0:"'  / digit mask

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
starregions:((.symregions)@=!symregions)"*"
+/*/+(2=#:')#(`i=@:')#'?'@[x; . numlocs; :; . !numlocs]starregions


/ Day 4

x:0:"04.txt"
ixn:{#{x^x^y}.(0,x?,"|")_x}'" "\'(&':^:)_'x

/ part 1
+/{(1&x)*(x-1)(2*)/1}'ixn

/ part 2
a:1+(!#x)+!'ixn
+/#',/''(a@,/)\a


/ Day 5
/ TODO


/ Day 6

x:0:"06.txt"

a:.'("9"<)_'x
*/+/'{y<*/'|:\'!'1+x}.a

b:`I$("0:"')_'x
+/{y<*/|:\!1+x}.b


/ Day 7

x:0:"07.txt"
(hands;bids):`c`I$'+" "\'x
desc:{x@>x}
freq:#'=:
priority1:"AKQJT98765432"
priority2:"AKQT98765432J"
f:+/bids*1+<<+:
f(desc'freq'hands; <>priority1?hands)
f(@[;0;+;]'[0^(desc'freq'("J"=)_'hands)@\:!5;+/'"J"=hands]; <>priority2?hands)

\\
