#include "stdafx.h" 
#include "iostream" 

using namespace std;

int main() {
	setlocale(LC_ALL, "rus");

	//������� 2 
	char z = 1;
	unsigned short x = 70;
	_asm {
		mov cl, z
		mov bx, 2
		shl bx, cl
		mov ax, x
		div bx
		mov x, ax
	}
	printf("���������� ���������� ������� 2:\n");
	printf("x=%i", x);

	//������� 1 
	char a = 70;
	_asm {
		mov dl, a
		or dl, 85
		mov a, dl
	}
	printf("\n���������� ���������� ������� 1:\n");
	printf("����� ��������� �����: %i\n", a);

	system("pause");
}