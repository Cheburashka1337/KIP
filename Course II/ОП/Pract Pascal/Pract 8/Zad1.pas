program rab;
uses crt;
type worker= record
  name,dolznost:string[111];
  zarplata:integer;
  staz:integer;
end;
var s:file of worker;
    f:array[1..100] of worker;
    srd_zarp:real;
    n,i:integer;
    
begin
assign(s,'baza.dat'); reset(s);
i:=1;
srd_zarp:=0;

while not eof(s) do begin
  read(s,f[i]);
  srd_zarp:= srd_zarp + f[i].zarplata;
  i:=i+1;
end;

srd_zarp:= srd_zarp/i;
writeln('������� ����������, ��� �� ���� �������:');
writeln('������� ��������: ',srd_zarp:5:3);
i:=1;
reset(s);
while not eof(s) do
begin
  read(s,f[i]);
  if (f[i].zarplata < srd_zarp) then
  begin
    writeln(f[i].name,' ',f[i].zarplata);
  end;
  i:=i+1;
end; 

writeln;
writeln('������� ����������, ���� ������� ����� 10 ���:');
i:=1;
reset(s);
while not eof(s) do
begin
  read(s,f[i]);
  if (f[i].staz > 10) then
  begin
    writeln(f[i].name,', �/�: ',f[i].zarplata,', ���� ',f[i].staz,' ���, ',f[i].dolznost);
  end;
  i:=i+1;
end;
close(s);
readkey;
end.