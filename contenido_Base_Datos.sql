CREATE TABLE alumnos (
    matricula VARCHAR(20) NOT NULL,
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (matricula),
    UNIQUE KEY (id)
);

INSERT INTO alumnos (matricula, nombre, fecha_registro) 
VALUES (
    '377308', 'Ángela Martinez Rivera', '1988-01-12 00:00:00'),
    ('377132', 'Jaaziel Arellano Romero', '1988-01-16 00:00:00');


SELECT * FROM alumnos;
