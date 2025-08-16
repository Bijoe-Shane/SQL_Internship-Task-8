use school;
DELIMITER $$
CREATE FUNCTION get_total_classes(p_studentID INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
  DECLARE v_count INT;
  SELECT COUNT(*) INTO v_count
  FROM Enrollments
  WHERE StudentID = p_studentID;
  RETURN v_count;
END$$
DELIMITER ;

SELECT Name, get_total_classes(StudentID) AS TotalClasses FROM Students;

DELIMITER $$
CREATE PROCEDURE enroll_student(IN p_studentID INT, IN p_classID INT)
BEGIN
  IF EXISTS (SELECT 1 FROM Enrollments WHERE StudentID = p_studentID AND ClassID = p_classID) THEN
    SELECT 'Already enrolled' AS Message;
  ELSE
    INSERT INTO Enrollments (StudentID, ClassID, EnrollmentDate)
    VALUES (p_studentID, p_classID, CURDATE());
    SELECT 'Enrolled successfully' AS Message;
  END IF;
END$$
DELIMITER ;

CALL enroll_student(1, 2);

SELECT * FROM Enrollments WHERE StudentID = 1;


