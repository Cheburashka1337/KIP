program tabul;
uses crt;
var i,a,b:integer;
h,fx,x:real;

begin
     clrscr;
     write('������� �������� a: ');Readln(x);
     write('������� �������� b: ');Readln(b);
     write('������� ��� ���������: ');Readln(h);
     writeln('�������, ������� [',x,',',b,']');
     writeln('----------------------');
     write('x=       F(x)=');
     repeat
          fx:=x*sin(x);
          writeln;
          write(x:0:2,'     ',fx:0:4);
          x:=x+h;
     until (x=b);
     writeln;
     write('----------------------');
end.
