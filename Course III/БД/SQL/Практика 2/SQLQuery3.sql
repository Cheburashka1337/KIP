/*
3.	�������� ������� EXAM_MARKS ����� �������, ����� �������� ���� EXAM__ID
 ���� ������ �������� ���� SUBJ_ID, � �������� ���� SUBJ_ID ���� ������ ��������
 ���� STUDENT__ID; ����� ����� ����� ��������� �������� NULL � ����� �� ���� ���� �����.
*/

CREATE TABLE EXAM_MARKS
	(
		STUDENT_ID INTEGER NOT NULL,
		SUBJ_ID INTEGER NOT NULL,
		EXAM_ID INTEGER NOT NULL,
		CHECK (SUBJ_ID > STUDENT_ID),
		CHECK (EXAM_ID  > SUBJ_ID),
	)

INSERT INTO EXAM_MARKS
VALUES (11,111,1111)
