#include <iostream>
//��������� ��� ������� ��������� �����-������:
#include <fstream>
using namespace std;
int main(){
//���������� ������ ��� ���������� ����:
char word[30];
//��������� ����������:
int i=1;
//����� ������ � ���� mydata.txt:
ofstream out("D:\\mydata.txt");
//�������� �������� �����:
if(!out) {cout<<"File mydata.txt is not opened.\n";
          return 1;}
//������ ������ � ���� mydata.txt:
else {out<<"This file contains simple text";
//�������� ����� ��� ������:
      out.close();}
//����� ������ � ���� newdata.txt:
ofstream outMore;
outMore.open("D:\\newdata.txt");
//�������� �������� ����� newdata.txt:
if(!outMore) {cout<<"File newdata.txt is not opened.\n";
              return 1;}
//����� ������ �� ����� mydata.txt:
ifstream in;
//�������� �������� ����� mydata.txt:
in.open("D:\\mydata.txt");
if(!in) {cout<<"File mydata.txt is not opened.\n";
         return 1;}
//���������� �� ����� mydata.txt � ������ � ���� newdata.txt:
while(!in.eof()){
   in>>word;
   outMore<<word<<" - "<<i<<endl;
   i++;}
//�������� ����� mydata.txt:
in.close();
//�������� ����� newdata.txt:
outMore.close();
return 0;}