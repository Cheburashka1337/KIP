program KOMUK;
const nmax=99999999;
var a:array[1..nmax] of longint;
    one, two, i, n: integer;

begin
randomize;
write('������� ���-�� ��������� ������� n => '); read(n);
write('������� 1-� ������� ������� => '); read(one);
write('������� 2-� ������� ������� => '); read(two);

a[1]:=one;
a[2]:=two;

for i:=3 to n do
    a[i]:=(a[i-1]+a[i-2])*i;

writeln('���������� ������:');
write('[');
for i:=1 to n do
    write(a[i],' ');
write(']');
end.