// ConsoleApplication1.cpp: ���������� ����� ����� ��� ����������� ����������.
//

#include "stdafx.h"
#include "iostream"

using namespace std;
int a,b,res;

int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL,"rus");
	printf("������� � => "); scanf_s("%i",&a);
	printf("������� b => "); scanf_s("%i",&b);
	_asm
	{
		mov eax,a
		cmp eax,b
		jge m1
		mul eax
		mov res,eax
		jmp m
	
m1: add eax,b
		mov res,eax
m: nop
	}
	printf("\n %d %d %d \n",a,b,res);
	system("pause");
}

