program StrangeKOT;
const nmax=99999999;
var a:array[1..nmax] of longint;
    index1, num, one, two, i, n: integer;

begin
randomize;
write('������� ���-�� ��������� ������� n => '); read(n);

writeln('������� ������:');
for i:=1 to n do
begin
    a[i]:=random(20);
    write(a[i],' ');
end;
writeln;
write('������� ����� A => '); read(num);

//��� ���� ��������
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

end.