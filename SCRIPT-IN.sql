use projects1;

INSERT INTO students (firstname, lastname, patronymic, number_group) VALUES
('Иван', 'Смирнов', 'Алексеев', 3463478),
('Василий', 'Иванов', 'Иванович', 3463478),
('Максим', 'Михайлов', 'Александрович', 3463478),
('Максим', 'Петров', 'Александрович', 3463478),
('Сергей', 'Кузнецов', 'Иванович', 3463478),
('Александр', 'Попов', 'Викторович', 3463479),
('Иван', 'Алексеев', 'Иванович', 3463479),
('Александр', 'Семенов', 'Семенович', 3463479),
('Иван', 'Лебедев', 'Александрович', 3463479),
('Елена', 'Новикова', 'Сергеевна', 3463479),
('Мария', 'Козлова', 'Федоровна', 3463477),
('Мария', 'Степанова', 'Николаевна', 3463477),
('Екатерина', 'Николаева', 'Сергеевна', 3463477),
('Виктор', 'Морозов', 'Иванович', 3463477),
('Анастасия', 'Соколова', 'Александровна', 3463477);

INSERT INTO teachers (firstname, lastname, patronymic, department) VALUES
('Валеева', 'Мария', 'Валерьевна', 'Прикладная информатика'),
('Никитин', 'Максим', 'Викторович', 'Прикладная математика'),
('Яковлева', 'Валерия', 'Александровна', 'Исторический факультет'),
('Григорьева', 'Наталья', 'Сергеевна', 'Экономический факультет'),
('Романов', 'Алексей', 'Алексеевич', 'Прикладная математика');

INSERT INTO teachers_informations (id_teach, gender, phone, email, birthday, hometown) VALUES
(1, 'F', 89045372840, 'dfhgds@example.com', '1985-02-23', 'Москва'),
(2, 'M', 89023432657, 'dhght5@example.com', '1974-11-12', 'Новосибирск'),
(3, 'F', 89457546346, 'tuyrrty@example.com', '1983-07-16', 'Москва'),
(4, 'F', 89464623265, 'tuyt4556@example.com', '1988-05-25', 'Сочи'),
(5, 'M', 89234365236, 'utrrer44@example.com', '1991-12-19', 'Саратов');

INSERT INTO teachers_prof_inf (id_teach, work_email, SNILS, passport_num, military_num) VALUES
(1, 'asdafaw@example.com', 3453433, 74575557, 'ра967967'),
(2, 'bhfdhdfh@example.com', 7756756, 56346346, 'не67967956'),
(3, 'ajhjktt@example.com', 8568563, 34234234, 'аш67986776'),
(4, 'gfjjtjt2@example.com', 9679604, 13111355, 'ти67098676'),
(5, 'iyhtftf@example.com', 2344556, 46534374, 'пр45634633');

INSERT INTO students_informations (id_stud, gender, phone, email, birthday, hometown) VALUES
(3, 'M', 89457523423, 'dfbhdfr32@example.com', '1999-12-12', 'Москва'),
(3, 'M', 89346363346, 'hfghj564@example.com', '1998-10-10', 'Москва'),
(3, 'M', 89234234555, 'hfgjnfgr34@example.com', '1998-11-23', 'Москва'),
(3, 'M', 89634634344, 'gshhwh32@example.com', '1999-10-25', 'Москва'),
(3, 'M', 89123235555, 'bnmbhg43@example.com', '1998-11-27', 'Нижний Новгород'),
(3, 'M', 89235235332, 'rytyruh5@example.com', '1999-12-25', 'Пенза'),
(3, 'M', 89634632342, 'ffhnnbb@example.com', '1999-09-21', 'Пенза'),
(3, 'M', 89235356433, 'jhgfhnf@example.com', '1998-07-20', 'Сочи'),
(3, 'M', 89688978997, 'tdgjhj5@example.com', '1999-06-28', 'Сочи'),
(3, 'F', 89023458782, 'trggr45@example.com', '1998-05-10', 'Новосибирск'),
(3, 'F', 89657568546, 't554@example.com', '1998-04-11', 'Новосибирск'),
(3, 'F', 89345747455, 'werwetwe34@example.com', '1997-04-11', 'Нижний Новгород'),
(3, 'F', 89234236564, 'ghdfhfh@example.com', '1997-03-12', 'Москва'),
(3, 'M', 89242356646, 'nvbnvbh@example.com', '1998-03-09', 'Москва'),
(3, 'F', 89123123555, 'fghfgh@example.com', '1999-02-05', 'Москва');

INSERT INTO students_prof_inf (id_stud, SNILS, passport_num, military_num) VAlUES
(1, 5675688, 74574574, 'ор73543546'),
(2, 3453467, 34523442, 'рт23456577'),
(3, 8568554, 23563567, 'ап34578788'),
(4, 9856895, 14324534, 'ке45632343'),
(5, 7568568, 36647657, 'ек44566757'),
(6, 8568675, 75686856, 'гн56789766'),
(7, 4645757, 68685685, 'шг08978878'),
(8, 2342355, 45748977, 'гр56856868'),
(9, 7565444, 56765744, 'ит16675445'),
(10, 9679667, 34534367, 'ап12352553'),
(11, 8767967, 76856845, 'ит12325555'),
(12, 7567568, 34547477, 'па42356236'),
(13, 9769677, 23456667, 'ва65768866'),
(14, 6574575, 56346346, 'ук76756745'),
(15, 2352366, 23434523, 'ва35235355');

INSERT INTO classroom (count_of_place) VALUES
(30),
(30),
(30),
(30),
(30),
(120),
(120),
(120),
(30),
(30),
(30),
(30),
(30),
(50),
(50);


INSERT INTO subjects (id_room, name_subject, academ_hour, type_of_test) VALUES
(1, 'Информатика', 36, 'T'),
(4, 'Экономика', 36, 'E'),
(6, 'Матиматический анализ', 36, 'T'),
(7, 'Теория вероятности', 42, 'E'),
(3, 'История', 54, 'E');

INSERT INTO attendance (id_stud, id_subj, count_of_pass) VALUES
(1, 1, 0),
(2, 1, 3),
(3, 1, 1),
(4, 1, 2),
(5, 1, 4),
(6, 1, 7),
(7, 1, 0),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 0),
(12, 1, 0),
(13, 1, 4),
(14, 1, 4),
(15, 1, 3);


INSERT INTO results_on_subjects (id_subj, id_stud, id_teach, result_on_exam, result_on_test) VALUES
(1, 1, 1, NULL, 'З'),
(1, 2, 1, NULL, 'З'),
(1, 3, 1, NULL, 'З'),
(1, 4, 1, NULL, 'З'),
(1, 5, 1, NULL, 'З'),
(1, 6, 1, NULL, 'З'),
(1, 7, 1, NULL, 'З'),
(1, 8, 1, NULL, 'Н'),
(1, 9, 1, NULL, 'Н'),
(1, 10, 1, NULL, 'Н'),
(1, 11, 1, NULL, 'Н'),
(1, 12, 1, NULL, 'З'),
(1, 13, 1, NULL, 'З'),
(1, 14, 1, NULL, 'З'),
(1, 15, 1, NULL, 'З');