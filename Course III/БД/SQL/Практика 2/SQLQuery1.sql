/*1.	�������� ������� EXAMJVIARKS ���, ����� �� ���������� ���� � �������
���� ������� �� ������� ������ �������� �� ���������� �������� � �������� ��������, 
� �����, ����� �� ����������� ���������� ���� ��������� �� ����� ��������� � ���� ����
*/

CREATE TABLE EXAMJVIARKS 
	(
		STUDENT_ID INTEGER,
		EXAM_ID INTEGER,
		SUBJECT1 CHAR (25),
		MARK INTEGER,
		DATE1 CHAR (25) UNIQUE,
		UNIQUE (STUDENT_ID, EXAM_ID, SUBJECT1)

);

INSERT INTO EXAMJVIARKS
VALUES (2, 12,'������ ����������',5,'02.03.2017')
