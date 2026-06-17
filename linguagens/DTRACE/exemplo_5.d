dtrace:::BEGIN {
  soma = 5 + 3;
  printf("Soma: %d\n", soma);
  exit(0);
}