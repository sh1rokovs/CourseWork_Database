use projects1;

CREATE OR REPLACE VIEW zachet AS SELECT * FROM results_on_subjects WHERE result_on_test = 'З'; --Все у кого зачет

CREATE OR REPLACE VIEW success_exam AS SELECT * FROM results_on_subjects WHERE result_on_exam > 3.0 ; --Все у кого по экзамену больше 3

CREATE OR REPLACE VIEW math_teach AS SELECT * FROM teachers WHERE department = 'Прикладная математика'; --Все преподаватели с кафедры прикладная математика

CREATE OR REPLACE VIEW groups_num(id_stud, id_teach, number_group) AS --Все студенты одной группы и их преподаватель
SELECT r.id_stud, r.id_teach, s.number_group 
FROM results_on_subjects AS r
LEFT JOIN students AS s
ON r.id_teach = 1;

DROP PROCEDURE IF EXISTS five_rat;
delimiter //
CREATE PROCEDURE five_rat AS
BEGIN
	SELECT r.id_stud, s.firstname, s.lastname, r.result_on_exam
	FROM results_on_subjects AS r
	LEFT JOIN students AS s
	ON r.result_on_exam = 5
END //
delimiter ;

CALL hello();

DROP TRIGGER IF EXISTS nullTrigger;
delimiter //
CREATE TRIGGER nullTrigger BEFORE INSERT ON students
FOR EACH ROW
BEGIN 
	IF(ISNULL(NEW.firstname)) THEN 
		SET NEW.firstname = "empty firstname";
	IF(ISNULL(NEW.lastname)) THEN
		SET NEW.lastname = "empty lastname";
END //
delimiter ;
