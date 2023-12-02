/  Day 1

x:0:"01.txt"
f:{x^x^1 3 4 5#\:y}                      / get matching prefix x in word y - we know they are all length 1/3/4/5
g:{*x(~#x@)(1_)/y}                       / find first matching prefix from list x in word y
h:{+/10/10!x?(g[f x]'y;|'g[f@|'x]'|'y)}  / run matcher left and right, convert to numbers and sum

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
