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

\\
