dtrace:::BEGIN {
  idade = 25;
  nome = "DTrace";
  printf("%s tem %d anos\n", nome, idade);
  exit(0);
}