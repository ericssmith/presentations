#lang algol60

begin
  integer procedure FACTORIAL(n);
    value n;
    integer n;
    begin
      integer procedure LOOP(n, acc);
        value n, acc;
        integer n, acc;
        LOOP := if (n < 2) then acc else LOOP(n-1, acc*n);
      FACTORIAL := LOOP(n, 1);
    end;

  printnln(FACTORIAL(1));
  printnln(FACTORIAL(2));
  printnln(FACTORIAL(3));                        
  printnln(FACTORIAL(90));
end