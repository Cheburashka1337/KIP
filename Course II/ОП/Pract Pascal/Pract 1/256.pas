program Treugole;
uses crt;
var a,b,c:real;
function check(var s1,s2,s3:real):string;
         begin
              if (a=b) or (a=c) or (b=c) then
                 check:='True'
              else
                 check:='False';
         end;
         
begin
     clrscr;
     write('������� ������ �������: ');Readln(a);
     write('������� ������ �������: ');Readln(b);
     write('������� ������ �������: ');Readln(c);
     writeln(check(a,b,c));
end.