program matrix;
uses crt;
var a:array[1..100,1..100] of integer;
    n,i,j,k,m:byte;
    index1,index2,max,buf:integer;
begin
  write('������� ����������� ������� �� n => ');Readln(n);
  write('������� ����������� ������� �� m => ');Readln(m);
  
  //���������
  randomize;
  for i:=1 to n do begin
    writeln;
    for j:=1 to m do begin
      a[i,j]:=random(20)-7;
      write(a[i,j]:4);
    end;
  end;
  
  //������� ������������
  max:=a[1,1];
  for i:=1 to n do begin
    for j:=1 to m do begin
       if a[i,j] > max then begin
          max:=a[i,j];
          index1:=i;
          index2:=j;
       end;
    end;
  end;
  writeln;
  writeln;
  write('M����������� ��������: ',max);
  
  //����������
  for i:=1 to n do
  begin
    buf:=a[i, 1];
    a[i,1]:=a[i,index2];
    a[i,index2]:=buf;
  end;
  for j:=1 to m do 
  begin 
    buf:=a[1,j];
    a[1,j]:=a[index1,j];
    a[index1,j]:=buf;
  end;
  
  writeln;
  writeln('���������� �������:');
  
  //�����
  for i:=1 to n do begin
    writeln;
    for j:=1 to m do begin
      write(a[i,j]:4);
    end;
  end;
  readkey;
  end.