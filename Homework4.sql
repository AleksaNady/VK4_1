USE vk;

-- ������� ������� users � �����
-- SELECT * FROM users WHERE id >= 60;

-- DELETE FROM users WHERE id >= 60;

-- ������ ���� ������
INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, '�������', '�����', '89213546567','����1@mail.com','asds', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, '�����', '�����', '89213546568','�����@mail.com','asdsd', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, '����', '������������', '89213546569','����@mail.com','asdsda', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, '�����', '��������', '89213546510','�����@mail.com','asdsdaa', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, '������', '�������', '89213576511','������@mail.com','asdsdaas', DEFAULT, DEFAULT);


 -- �������� ���������

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, '������!');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, '������ �� ��������?');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (317, 316, '���������, ������ ����� ��������');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, '�� ���� ����, �������');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (317, 316, '��');


DESCRIBE communities_users;

SELECT * FROM communities_users;

-- �������� ������ ���������� �����: �������� �� ���������� ��� �������??? 
SELECT DISTINCT firstname FROM users ORDER BY lastname DESC;

-- ���������� �� ������� lastname �� �������� (ASC- �� �����������)
SELECT firstname FROM users ORDER BY lastname DESC;

-- �������� ��������� 

INSERT INTO profiles VALUES (318, 'm', '2011-12-01', 318, '�������', 'Russia');

INSERT INTO profiles VALUES (57, 'm', '2012-11-02', 57, '������', 'Russia');

--  ������������������ ������������� ��� ���������� (���� is_active = false)

ALTER TABLE profiles ADD is_active BIT DEFAULT false NULL;

-- ��������� � ������� is_active �������� true (1) ����������������� �������������.
UPDATE profiles
SET is_active = 1
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birhday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birhday, 5)) < 18;

SELECT * FROM profiles;

-- �������� ������, ��������� ��������� ��� �������� (���� ������ �����������)
-- ������ ��������� �� �������� 

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (58, 45, '����������!');
-- ���� �������� ��������� 2021-11-28 23:32:48


UPDATE messages
SET create_at='2222-11-28 23:32:48'
WHERE id = 58;

DELETE FROM messages
WHERE create_at > now();




