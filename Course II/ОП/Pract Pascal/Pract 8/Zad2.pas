program CCTV;
uses crt;
type television= record
  chan:integer;
  timeHH,timeMM:byte;
  name,typ,dayname:string[100];
  
end;
var TV:file of television;
    f:array[1..100] of television;
    week:array[1..7] of television;
    check,count,sc,kol,n,i:integer;
    TVtime1,TVtime2:byte;
    TVday,TVname:string[100];
    k:char;
begin
assign(TV,'TV.dat'); reset(TV);
writeln('�) �������� �����������, ������� ���� � ��������� ���� � ��������� ���������� �������');
writeln('�) �� ����� ������ � � ����� ����� ����� ��������������� ��������������� �������� ����� �����');
writeln('�) �������� �����������, ��������������� � ��������� ����� �� ������ �������');
writeln('�) �������� ��������, ����������� ���� � ������ ���� ������');
write('=> '); read(k);

case k of
  '�': begin
        write('������� ����� ������ => '); readln(TVtime1);
        write('������� ����� ����� => '); readln(TVtime2);
        write('������� ���� �������� => '); readln(TVname);
        writeln;
        kol:=0;
        i:=1;
        while not eof(TV) do
          begin
            read(TV,f[i]);
            if ((f[i].dayname = TVname) and (f[i].timeHH >= TVtime1) and (f[i].timeHH <= TVtime2)) then
              begin
                kol:=kol+1;
                writeln('�������� �',kol,' ',f[i].name);
              end;
            i:=i+1;
          end;
       end;
'�': begin
       i:=1;
        while not eof(TV) do
          begin
            read(TV,f[i]);
            if (f[i].name = '���� �����') then
                writeln('���� ����c ����� �� ������ �',f[i].chan,' � ',f[i].timeHH,':',f[i].timeMM,', ',f[i].dayname);
            i:=i+1;
          end;
     end;
'�': begin
       write('������� ����� (����) => '); readln(TVtime1);
       write('������� ����� (������) => '); readln(TVtime2);
       writeln;
       kol:=0;
       i:=1;
       while not eof(TV) do
         begin
           read(TV,f[i]);
           if ((f[i].timeHH = TVtime1) and (f[i].timeMM = TVtime2)) then
             begin
               kol:=kol+1;
               writeln('�������� �',kol,' ',f[i].name);
             end;
           i:=i+1;
         end;
     end;
'�': begin
       writeln;
       i:=1;
       while not eof(TV) do
        begin
           read(TV,f[i]);
           i:=i+1;
        end;
       count:=1; 
       week[1]:=f[1]; 
       for sc:=2 to high(f) do
        begin 
          check:=0; 
          for i:=1 to high(week) do     
            if (f[sc].dayname = week[i].dayname) then
               check:=check+1; 
            if (check = 0) then 
               begin 
                count:=count+1; 
                week[count]:=f[sc]; 
               end; 
            if (count = high(week)) then 
              break; 
        end; 
        for i:=1 to high(week) do 
          for sc:=1 to high(f) do 
           if ((f[sc].dayname = week[i].dayname) and (f[sc].timeHH > week[i].timeHH)) then 
             week[i]:=f[sc]; 
        writeln('����������� ���� ��������:'); 
          for i:=1 to high(week) do 
            writeln(week[i].dayname,': <<',week[i].name,'>>');
     end;
end;
close(TV);
readkey;
end.