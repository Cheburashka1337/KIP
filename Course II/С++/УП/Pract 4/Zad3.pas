program StrangeKOT;
uses crt;
var a: array of integer;
    k, index1, num, one, two, n: integer;

procedure initarray();
  var i: integer;
  begin
    randomize;
    write('������� ���-�� ��������� ������� n => '); read(n);
    a := new integer[n+1];
    for i:=1 to n do
      a[i]:=random(20);
  end;

procedure outarray();
  var i: integer;
  begin
    writeln('������� ������:');
    for i:=1 to n do
      write(a[i],' ');
  readkey();
  end;

procedure finder(); //��� ���� ��������
  var i: integer;
  begin
  writeln;
  write('������� ����� A => '); read(num);
  for i:=1 to n do
    if (a[i]=num) then
      begin
        writeln('������� B ������!');
        index1:=i;
        writeln('�',i,'. B=',a[i]);
        break;
      end;

  for i:=n downto 0 do
    if (a[i]=num) then
      if (index1<>i) then
        begin
          writeln('������� C ������!');
          writeln('�',i,'. C=',a[i]);
          break;
        end
      else
        begin
          writeln('�������� C � B ��������� :c');
          break;
        end;
    readkey();
  end;

begin
  repeat
  clrscr;
  writeln('1. ��������� �������');
  writeln('2. ����� �������');
  writeln('3. ����� ��������� � �������');
  writeln('0. ����� �� ���������');
  write('=> '); readln(k);
  
  case k of
   1 : initarray();
   2 : outarray();
   3 : finder();
  end;
  until (k=0);
end.