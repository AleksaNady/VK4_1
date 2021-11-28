USE vk;

-- удалила таблицу users с урока
-- SELECT * FROM users WHERE id >= 60;

-- DELETE FROM users WHERE id >= 60;

-- вводим свои данные
INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, 'Дмитрий', 'Ионов', '89213546567','дима1@mail.com','asds', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, 'Борис', 'Ионов', '89213546568','борис@mail.com','asdsd', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, 'Надя', 'Александрова', '89213546569','надя@mail.com','asdsda', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, 'Мария', 'Безпятюк', '89213546510','мария@mail.com','asdsdaa', DEFAULT, DEFAULT);

INSERT users (id, firstname, lastname, phone, email, password_hash, created_at, updated_at)
VALUES (DEFAULT, 'Марина', 'Числова', '89213576511','марина@mail.com','asdsdaas', DEFAULT, DEFAULT);


 -- обавялем сообщения

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, 'Привет!');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, 'будешь на занятиях?');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (317, 316, 'собираюсь, правда плохо чувствую');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (316, 317, 'мы ждем тебя, приходи');

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (317, 316, 'ок');


DESCRIBE communities_users;

SELECT * FROM communities_users;

-- выбираем только уникальные имена: ВОЗМОЖНО ЛИ ОБЪЕДИНЯТЬ две функции??? 
SELECT DISTINCT firstname FROM users ORDER BY lastname DESC;

-- сортировка по столбцу lastname по убыванию (ASC- по возрастанию)
SELECT firstname FROM users ORDER BY lastname DESC;

-- создание профайлов 

INSERT INTO profiles VALUES (318, 'm', '2011-12-01', 318, 'Саратов', 'Russia');

INSERT INTO profiles VALUES (57, 'm', '2012-11-02', 57, 'Москва', 'Russia');

--  несовершеннолетних пользователей как неактивных (поле is_active = false)

ALTER TABLE profiles ADD is_active BIT DEFAULT false NULL;

-- Проставим в колонке is_active значение true (1) несовершенолетним пользователям.
UPDATE profiles
SET is_active = 1
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birhday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birhday, 5)) < 18;

SELECT * FROM profiles;

-- Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)
-- внесла сообщения из будущего 

INSERT INTO messages (from_user_id, to_user_id, body)
VALUES (58, 45, 'Досвидания!');
-- дата создания сообщения 2021-11-28 23:32:48


UPDATE messages
SET create_at='2222-11-28 23:32:48'
WHERE id = 58;

DELETE FROM messages
WHERE create_at > now();




