USE universidad;
SELECT 
    s.student_id,
    CONCAT(s.nombre, ' ', s.apellido) AS Estudiante,
    c.nombre_curso AS Curso,
    g.nota AS Nota
FROM 
    Grades g
JOIN 
    Students s ON g.student_id = s.student_id
JOIN 
    Courses c ON g.course_id = c.course_id
ORDER BY 
    c.nombre_curso, s.nombre;
