program KOMUK;
uses crt;

var a: array of integer;
    k, n: integer;

procedure initarray();

  var one, two, i: integer;
  begin
    randomize;
    write('������� ���-�� ��������� ������� n => '); read(n);
    a:=new integer[n+1];
    write('������� 1-� ������� ������� => '); read(one);
    write('������� 2-� ������� ������� => '); read(two);
    
    a[1]:=one;
    a[2]:=two;

    for i:=3 to n do
      a[i]:=(a[i-1]+a[i-2])*i;

  end;

procedure outarray();
  var i: integer;
  begin
    writeln(n);
    writeln('���������� ������:');
    write('[');
    for i:=1 to n do
      write(a[i],' ');
    write(']'); 
  readkey();
  end;
  
begin
 repeat
  clrscr;
  writeln('1. ��������� �������');
  writeln('2. ����� �������');
  writeln('0. ����� �� ���������');
  write('=> '); readln(k);
  
  case k of
   1 : initarray();
   2 : outarray();
  end;
  until (k=0);
end.