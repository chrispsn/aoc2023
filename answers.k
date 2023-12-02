/  Day 1

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
x:x^\:",;"
games:+(`red`green`blue#|/'=!/`I`$'+0N 2#2_" "\)'x

+/1+&&/13 14 15>games  / part 1
+/*/games              / part 2

\\
