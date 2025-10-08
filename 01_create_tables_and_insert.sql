CREATE DATABASE universidad;
USE universidad;
CREATE TABLE Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    fecha_nacimiento DATE
);
ALTER TABLE Students
DROP COLUMN fecha_nacimiento;
SHOW DATABASES;
USE universidad;
CREATE TABLE Professors (
    professor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100)
);
CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    professor_id INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);
DROP TABLE IF EXISTS Students;

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100)
);
CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    professor_id INT,
    nota DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id)
);
INSERT INTO Students (nombre, apellido, email) VALUES
('Ana', 'Gonzalez', 'ana.gonzalez@email.com'),
('Luis', 'Martinez', 'luis.martinez@email.com'),
('Sofia', 'Lopez', 'sofia.lopez@email.com'),
('Carlos', 'Perez', 'carlos.perez@email.com'),
('Maria', 'Diaz', 'maria.diaz@email.com');
INSERT INTO Professors (nombre, apellido, email) VALUES
('Juana', 'Ramos', 'juana.ramos@email.com'),
('Laura', 'Saavedra', 'laura.saavedra@email.com'),
('Mikel', 'Turin', 'mikela.turin@email.com'),
('Carlos', 'Veneco', 'carlo1.veneco@email.com');

ALTER TABLE Professors ADD COLUMN email VARCHAR(100);
INSERT INTO Courses (nombre_curso) VALUES
('Matemáticas'),
('Física'),
('Programación'),
('Historia');
INSERT INTO Grades (student_id, course_id, professor_id, nota) VALUES
-- Estudiante 1
(1, 1, 1, 8.5),  -- Matemáticas con Profesor 1
(1, 2, 2, 7.0),  -- Física con Profesor 2
(1, 3, 3, 9.5),  -- Programación con Profesor 3
-- Estudiante 2
(2, 1, 1, 6.0),  -- Matemáticas
(2, 3, 2, 8.0),  -- Programación
(2, 4, 3, 7.5),  -- Historia
-- Estudiante 3
(3, 2, 2, 9.0),  -- Física
(3, 3, 3, 8.5),  -- Programación
-- Estudiante 4
(4, 1, 1, 7.0),  -- Matemáticas
(4, 4, 2, 6.5),  -- Historia
-- Estudiante 5
(5, 4, 3, 9.0);  -- Historia

