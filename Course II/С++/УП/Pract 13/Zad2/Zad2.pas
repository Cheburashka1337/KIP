program meow2;
uses crt; 

var a:array[1..1000,1..1000] of real;
    sum:array[1..1000] of real;
    i,n,k,k1,k2: byte;
    bike: real;
  
procedure initarray();
  
  procedure generate();
  var i:integer;
  begin
    randomize;
    for i:=1 to n do
     for j:=1 t m do
      a[i,j]:=random*20-10;
  end;
  
  procedure enter();
  var i:integer;
  begin
    for i:=1 to n do
      begin
        write('������� ������� �',i,',',j);
        read(a[i,j]);
      end;
  end;
  
  //���������______________________________________________
  procedure files();
  var i:integer;
      FF1,FF2: Text;
  begin
    Assign(FF1, 'mas1.txt'); Assign(FF2, 'mas2.txt');
    Reset(FF1); Reset(FF2);
    i:=1;
    While Not(Eof(FF1)) Do
        Begin
          ReadLn(FF1, x[i]);
          WriteLn(x[i]);
          Inc(i);
        End;
    i:=1;    
    While Not(Eof(FF2)) Do
        Begin
          ReadLn(FF2, y[i]);
          WriteLn(y[i]);
          Inc(i);
        End;
    Close(FF1);
    Close(FF2);
  end;
begin

  writeln('1. ��������� ��������');
  writeln('2. ������ ���� ������');
  writeln('3. ������ ������� �� �����');
  write('=> '); readln(k);
  
  case k of
       1 : generate();
       2 : enter();
       3 : files();
  end;
  
end;

procedure outarray();

  procedure monitor_out;
  var i:integer;
  begin
    writeln('�������� �������:');
    for i:=1 to n do
      writeln;
      for i:=1 to n do
        write(a[i,j]:10:2);
  readkey();
  end;
  
  procedure file_out;
  var f: Text;
      i:integer;
  begin
    assign(f, 'out.txt');
    rewrite(f);
    for i:=1 to n-1 do
      for j:=1 to m-1 do
        writeln(f, a[i,j]);
    Close(f);
  end;
  
begin
    writeln('1. ����� ������� �� �����');
    writeln('2. ����� ������� � ����');
    write('=> '); readln(k);
  
     case k of
       1 : monitor_out();
       2 : file_out();
     end; 
end;

procedure v_input()
begin
  write('������� �������� => ');
  read(bike);
end;

procedure 


begin
  repeat
    clrscr;
    writeln('1. ���� ��������');
    writeln('2. ����� ��������');
    writeln('3. ���� ��������');
    writeln('4. ���-�� ������� ��������� ���');
    writeln('0. ����� �� ���������');
    write('=> '); readln(k);
  
     case k of
       1 : initarray();
       2 : outarray();
       3 : sred();
       4 : kol();
     end;
  
  until (k=0);
end.
