program kot;
uses crt;
var y,x,sum,proz,chast,raz:real;
begin
     clrscr;
     write('�= ');Readln(x);
     write('y= ');Readln(y);
     sum:=x+y;
     raz:=x-y;
     proz:=x*y;
     chast:=x/y;
     writeln('�����: ',sum);
     writeln('��������: ',raz);
     writeln('������������: ',proz);
     writeln('�������: ',chast);
end.