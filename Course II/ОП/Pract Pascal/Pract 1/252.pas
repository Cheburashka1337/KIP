program kotik;
uses crt;
var y,x,result:real;
begin
     clrscr;
     write('�= ');Readln(x);
     write('y= ');Readln(y);
     result:=ln(abs((y-sqrt(abs(x))*(x-(y/(x+(power(x,2)/4)))))));
     writeln('���������:',result:8:4);
end.