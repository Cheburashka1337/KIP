#include "stdafx.h" 
#include <iostream> 

using namespace std;

char a = 70;
char x = 70;
char k;

int main() {

	setlocale(LC_ALL, "rus");
	printf("������� k =>");
	scanf_s("%c", &k);

	//������� 2
	_asm {
		mov al, a
		mov cl, k
		mov dl, 0
		retur: cmp dl, cl
			   je fin
			   shr al, 1
			   add dl, 1
			   jmp retur
			   fin : mov x, al
	}

	//������� 1 
	_asm {
		mov dl, a
		or dl, 85
		mov a, dl
	}
	printf("\n���������� ���������� ������� 1:\n");
	printf("����� � ����� ���������: %i\n", a);
	printf("���������� ���������� ������� 2:\n");
	printf("x=%i", x);

	system("pause");
}