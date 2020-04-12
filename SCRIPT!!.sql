use projects1;

DROP TABLE IF EXISTS students;
CREATE TABLE students (
	id_stud SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	patronymic VARCHAR(50) COMMENT 'Отчество',
	number_group INT(20)
) COMMENT = 'Студенты(Основная инфа)';

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
	id_teach SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	patronymic VARCHAR(50),
	departament VARCHAR(100)
) COMMENT = 'Преподаватели(основная инфа)';

DROP TABLE IF EXISTS students_informations;
CREATE TABLE students_informations (
	id_stud BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	phone BIGINT,
	email VARCHAR(120) UNIQUE,
	birthday DATE,
	hometown VARCHAR(100),
	FOREIGN KEY (id_stud) REFERENCES students(id_stud)
) COMMENT = 'Информация о студентах(подробно)';

DROP TABLE IF EXISTS teachers_informations;
CREATE TABLE teachers_informations (
	id_teach BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	phone BIGINT,
	email VARCHAR(120) UNIQUE,
	birthday DATE,
	hometown VARCHAR(100),
	FOREIGN KEY (id_teach) REFERENCES teachers(id_teach)
) COMMENT = 'Информация о преподавателях(подробно)';

DROP TABLE IF EXISTS classroom;
CREATE TABLE classroom (
	id_room SERIAL PRIMARY KEY,
	count_of_place INT COMMENT 'количество мест'
) COMMENT = 'Аудитории';


DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
	id_subj SERIAL PRIMARY KEY,
	id_room BIGINT UNSIGNED NOT NULL,
	id_teach BIGINT UNSIGNED NOT NULL,
	id_stud BIGINT UNSIGNED NOT NULL,
	name_subject VARCHAR(50),
	academ_hour INT COMMENT 'часов в семестре для предмета',
	type_of_test CHAR(1) COMMENT 'Экзамен или зачет(e/t)',
	FOREIGN KEY (id_room) REFERENCES classroom(id_room),
	FOREIGN KEY (id_teach) REFERENCES teachers(id_teach),
	FOREIGN KEY (id_stud) REFERENCES students(id_stud)
) COMMENT = 'Учебные предметы';

DROP TABLE IF EXISTS results_on_subjects;
CREATE TABLE results_on_subjects (
	id_subj BIGINT UNSIGNED NOT NULL,
	id_stud BIGINT UNSIGNED NOT NULL,
	id_teach BIGINT UNSIGNED NOT NULL,
	result_on_exam FLOAT COMMENT 'Результат по экзамену',
	result_on_test CHAR(1) COMMENT 'Результат по зачету(Зачет/Незачет)',
	FOREIGN KEY (id_subj) REFERENCES subjects(id_subj),
	FOREIGN KEY (id_stud) REFERENCES students(id_stud),
	FOREIGN KEY (id_teach) REFERENCES teachers(id_teach)
) COMMENT = 'Оценки по предметам';

DROP TABLE IF EXISTS attendance;
CREATE TABLE attendance (
	id_stud BIGINT UNSIGNED NOT NULL,
	id_subj BIGINT UNSIGNED NOT NULL,
	count_of_pass INT COMMENT 'количество пропусков',
	FOREIGN KEY (id_stud) REFERENCES students(id_stud),
	FOREIGN KEY (id_subj) REFERENCES subjects(id_subj)
) COMMENT = 'Посещаемость учащихся';

DROP TABLE IF EXISTS students_prof_inf;
CREATE TABLE students_prof_inf (
	id_stud BIGINT UNSIGNED NOT NULL,
	SNILS INT(11) COMMENT 'Номер снилса',
	passport_num INT(10) COMMENT 'Номер паспорта',
	military_num VARCHAR(10) COMMENT 'Номер военного билета',
	FOREIGN KEY (id_stud) REFERENCES students(id_stud)
) COMMENT = 'проф инфа о студентах';

DROP TABLE IF EXISTS teachers_prof_inf;
CREATE TABLE teachers_prof_inf (
	id_teach BIGINT UNSIGNED NOT NULL,
	work_email VARCHAR(100) UNIQUE,
	SNILS INT(11) COMMENT 'Номер снилса',
	passport_num INT(10) COMMENT 'Номер паспорта',
	military_num VARCHAR(10) COMMENT 'Номер военного билета',
	FOREIGN KEY (id_teach) REFERENCES teachers(id_teach)
) COMMENT = 'проф инф о преподавателях'; 
