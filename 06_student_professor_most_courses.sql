USE universidad;
SELECT 
    s.student_id,
    CONCAT(s.nombre, ' ', s.apellido) AS Estudiante,
    p.professor_id,
    CONCAT(p.nombre, ' ', p.apellido) AS Profesor,
    COUNT(*) AS Cursos_En_Comun
FROM 
    Grades g
JOIN 
    Students s ON g.student_id = s.student_id
JOIN 
    Professors p ON g.professor_id = p.professor_id
GROUP BY 
    s.student_id, s.nombre, s.apellido, p.professor_id, p.nombre, p.apellido
ORDER BY 
    Cursos_En_Comun DESC
LIMIT 1;
