USE universidad;
SELECT 
    c.course_id,
    c.nombre_curso AS Curso,
    AVG(g.nota) AS Promedio_Calificacion
FROM 
    Grades g
JOIN 
    Courses c ON g.course_id = c.course_id
GROUP BY 
    c.course_id, c.nombre_curso
ORDER BY 
    Promedio_Calificacion ASC;
