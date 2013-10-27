#lang algol60
begin
  integer procedure SIGMA(x, i, n, m);
    value n, m;
    integer x, i, n, m;
  begin
    integer sum;
    sum := 0;
    for i := n step 1 until m do
      sum := sum + x;
    SIGMA := sum;
  end;

  integer procedure FORMULA(q);

  integer q;
  printnln(SIGMA(q*2-1, q, 1, 7));
end