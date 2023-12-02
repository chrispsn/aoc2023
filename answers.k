/  Day 1

x:0:"01.txt"

/ part 1
+/.'(*:;:/)@\:/:x@'&'":">x

/ part 2
/ notice 'words' has an extra 1 for padding
words:((,"")," "\"1 2 3 4 5 6 7 8 9 1 one two three four five six seven eight nine")
getword:{*words^words^1 3 4 5#\:x}
left:getword'(~#getword@)(1_)/'x
words:|'words
right:|'getword'(~#getword@)(1_)/'|'x
+/10/10!(|'words)?(left;right)


/ Day 2

x:0:"02.txt"
x:x^\:",;"
x:" "\'(2+x?'":")_'x
ids:1+!#x
games:+|/''`red`green`blue#/:='!/'{`I`$'x}'+'0N 2#/:x

/ part 1
+/ids@&&/13 14 15>games

/ part 2
+/*/games

\\
