program meowt;
uses crt;
var i:integer;
    k:byte;
    c,str:string;
begin
clrscr;
  k:=3;
  write('������� ������ => ');Readln(str);
  writeln('- - - - - - - - - - - - - - -'); 
  writeln('�����, ���������� ',k,' �����:'); 
  for i:=1 to length(str) do
    if (str[i]<>' ') and (str[i]<>'.') then
      c:=c+str[i]
    else
      begin
        if (length(c)=k) then
          writeln(c);
        c:=''; 
      end;
  writeln('- - - - - - - - - - - - - - -');
readkey;
end.