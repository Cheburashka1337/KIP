#include <iostream>
using namespace std;
//������������ ���� myOun:
namespace myOun{
int n=10;
class MyClass{
public:
double x;
MyClass(){
x=n+1.5;}};
}
int main(){
int n=5;
//������ �� ����� �� ������������ ���� myOun:
myOun::MyClass obj;
cout<<"obj.x = "<<obj.x<<endl;
cout<<"n = "<<n<<endl;
//������ �� ���������� �� ������������ ���� myOun:
cout<<"myOun::n = "<<myOun::n<<endl;
return 0;}