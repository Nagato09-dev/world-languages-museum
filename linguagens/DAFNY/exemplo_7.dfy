// Dafny é uma linguagem de verificação estática
method Div(a: int, b: int) returns (r: int)
  requires b != 0
{
  return a / b;
}