use stud_projects;

DROP TABLE IF NOT EXISTS students;
CREATE TABLE students (
	id_stud SERIAL PRIMARY KEY,
	firstname VARCHAR(50) COMMENT = '',
	lastname VARCHAR(50) COMMENT = '',
	patronymic VARCHAR(50) COMMENT = 'Отчество',
	number_group INT(20)
) COMMENT = 'Студенты(Основная инфа)';

DROP TABLE IF NOT EXISTS teachers;
CREATE TABLE teachers (
	id_teach SERIAL PRIMARY KEY,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	patronymic VARCHAR(50),
	departament VARCHAR(100)
) COMMENT = 'Преподаватели(основная инфа)';

DROP TABLE IF NOT EXISTS students_informations;
CREATE TABLE students_informations (
	id_stud BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	phone BIGINT,
	email VARCHAR(120) UNIQUE,
	birthday DATE,
	hometown VARCHAR(100),
) COMMENT = 'Информация о студентах(подробно)';

DROP TABLE IF NOT EXISTS teachers_informations;
CREATE TABLE teachers_informations (
	id_teach BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	phone BIGINT,
	email VARCHAR(120) UNIQUE,
	birthday DATE,
	hometown VARCHAR(100),
) COMMENT = 'Информация о преподавателях(подробно)';

DROP TABLE IF NOT EXISTS subjects;
CREATE TABLE subjects (
	id_subj SERIAL PRIMARY KEY,
	name_subject VARCHAR(50),
	academ_hour INT COMMENT = 'часов в семестре для предмета',
	tyoe_of_test CHAR(1) COMMENT = 'Экзамен или зачет'
) COMMENT = 'Учебные предметы';

DROP TABLE IF NOT EXISTS results_on_subjects;
CREATE TABLE results_on_subjects (
	id_subj SERIAL PRIMARY KEY,
	id_stud BIGINT UNSIGNED NOT NULL,
	id_teach BIGINT UNSIGNED NOT NULL,
	result_on_exam FLOAT,
	result_on_test CHAR(1)
) COMMENT = 'Оценки по предметам';

DROP TABLE IF NOT EXISTS attendance;
CREATE TABLE attendance (
	id_stud BIGINT UNSIGNED NOT NULL,
	id_subj BIGINT UNSIGNED NOT NULL,
	count_of_pass INT COMMENT = 'количество пропусков'
) COMMENT = 'Посещаемость учащихся';

DROP TABLE IF NOT EXISTS classroom;
CREATE TABLE classroom (
	id_room SERIAL PRIMARY KEY,
	count_of_place INT COMMENT = 'количество мест',
) COMMENT = 'Аудитории';

DROP TABLE IF NOT EXISTS students_prof_inf;
CREATE TABLE students_prof_inf (
	id_stud BIGINT UNSIGNED NOT NULL,
	INN,
	passport_num,
	military_num,
) COMMENT = 'проф инфа о студентах';

DROP TABLE IF NOT EXISTS teachers_prof_inf;
CREATE TABLE teachers_prof_inf (
	id_teach BIGINT UNSIGNED NOT NULL,
	work_email VARCHAR(100) UNIQUE,
	inn,
	passport_num,
	military_num,
) COMMENT = 'проф инф о преподавателях'; 
