dtrace:::BEGIN {
  printf("%s\n", toupper("dtrace"));
  exit(0);
}