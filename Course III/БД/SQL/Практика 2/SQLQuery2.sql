/*
2.	�������� ������� ��������� �������� SUBJECT ���, ����� ���������� 
��������� �� ������� ����� �� ��������� ���� ����� 36, �� ����������� 
������ � ������������� ����������� �����, ���� SUBJ_ID �������� ���������
 ������ ������� � �������� ��������� (���� SEMESTER) ������ � ��������� �� 1 �� 12
*/

CREATE TABLE SUBJECTIS
	(
		SUBJ_ID INTEGER NOT NULL,
		COUNT_HOURS INTEGER DEFAULT 36 NOT NULL,
		SEMESTER INTEGER CHECK (SEMESTER < 13 AND SEMESTER > 0),
	)

INSERT INTO SUBJECTIS (SUBJ_ID,SEMESTER)
VALUES (1,5)