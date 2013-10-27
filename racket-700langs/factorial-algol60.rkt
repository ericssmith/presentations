#lang algol60

begin
  integer procedure FACTORIAL(n);
    value n;
    integer n;
    FACTORIAL :=
      if (n < 2)
      then 1
      else n * FACTORIAL(n-1);

  printnln(FACTORIAL(1));
  printnln(FACTORIAL(2));
  printnln(FACTORIAL(3));
  printnln(FACTORIAL(30));
end
