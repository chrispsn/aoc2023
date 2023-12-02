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

\\
