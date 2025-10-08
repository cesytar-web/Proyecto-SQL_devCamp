USE universidad;
SELECT DATABASE();
SELECT 
    p.professor_id,
    CONCAT(p.nombre, ' ', p.apellido) AS Profesor,
    AVG(g.nota) AS Promedio_Calificaciones
FROM 
    Grades g
JOIN 
    Professors p ON g.professor_id = p.professor_id
GROUP BY 
    p.professor_id, p.nombre, p.apellido
ORDER BY 
    Promedio_Calificaciones DESC;
