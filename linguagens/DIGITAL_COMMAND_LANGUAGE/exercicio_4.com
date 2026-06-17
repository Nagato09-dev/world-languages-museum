$ I = 10
$ L:
$   WRITE SYS$OUTPUT I
$   I = I - 1
$   IF I .GE. 1 THEN GOTO L