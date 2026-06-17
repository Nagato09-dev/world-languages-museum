dtrace:::BEGIN {
  printf("%d\n", sqrt(16));
  exit(0);
}