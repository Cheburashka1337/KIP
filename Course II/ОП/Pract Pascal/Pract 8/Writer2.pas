program CCTV;
uses crt;
type television= record
  chan:integer;
  timeHH,timeMM:byte;
  name,typ,dayname:string[100];
end;
var TV:file of television;
    f:array[1..100] of television;
    n,i:integer;
begin
n:=15;
assign(TV,'TV.dat'); rewrite(TV);
for i:=1 to n do 
  begin
    writeln('��������: '); Readln(f[i].name);
    writeln('���� ������: '); Readln(f[i].dayname);
    writeln('���: '); Readln(f[i].typ);
    writeln('� ������: '); Readln(f[i].chan);
    writeln('����� (����): '); Readln(f[i].timeHH);
    writeln('����� (������): '); Readln(f[i].timeMM);
    writeln('�������� ��� ��������� ',n-i,' �������');
    write(TV,f[i]);
  end;
end.
{
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
assign(s,'baza.dat'); rewrite(s);
for i:=1 to 5 do 
  begin
    writeln('���: '); Readln(f[i].name);
    writeln('���������: '); Readln(f[i].dolznost);
    writeln('��������: '); Readln(f[i].zarplata);
    writeln('����: '); Readln(f[i].staz);
    write(s,f[i]);
  end;
end.
}