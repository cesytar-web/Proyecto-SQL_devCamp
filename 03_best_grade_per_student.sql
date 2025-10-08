USE universidad;
SELECT 
    s.student_id,
    CONCAT(s.nombre, ' ', s.apellido) AS Estudiante,
    MAX(g.nota) AS Mejor_Calificacion
FROM 
    Grades g
JOIN 
    Students s ON g.student_id = s.student_id
GROUP BY 
    s.student_id, s.nombre, s.apellido
ORDER BY 
    Mejor_Calificacion DESC;
