#include <iostream>
//��������� ��� ��������� ������ string � ���������:
#include <string>
using namespace std;
int main(){
//���������� ������:
char str[30]="Alex";
//������ ������ � ������ ������ string:
string s1;
//������ � ���� ��������� ���������:
string s2("What is your name?");
//������ ������� �� ������ ����������� �������:
string s3(str);
//����� ������ �� �����:
cout<<s2<<endl;
//���������� ������ � �������:
cin>>s1;
//��������� � ����������� �����:
if(s1==s3) cout<<"Hello, "+s3<<endl;
else cout<<"You are not "+s3+"!"<<endl;
return 0;}