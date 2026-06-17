var i := 0;
while i < 5
  invariant 0 <= i <= 5
{
  print i, "\n";
  i := i + 1;
}