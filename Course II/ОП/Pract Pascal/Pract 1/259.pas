program MemTutor;
uses crt;
var x,y:real;
function tochka(var t1,t2:real):string;
         begin
              if ((t1 <= -2) and (t1 >= -6) and  (t2 > 2) and  (t2 < 7)) or ((t1 <= -4) and (t1 >= -6) and (t2 >= -3) and (t2 <= 2)) then
                  tochka:='True'
              else
                 tochka:='False';
         end;

begin
     clrscr;
     write('������� ����� x: ');Readln(x);
     write('������� ���re y: ');Readln(y);
     writeln(tochka(x,y));
end.