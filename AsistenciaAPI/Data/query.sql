CREATE DATABASE IF NOT EXISTS AsistenciaDB;
USE AsistenciaDB;
--
CREATE TABLE Asociados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    NumeroCedula VARCHAR(50) UNIQUE NOT NULL,
    Estatus1 VARCHAR(50) NOT NULL,
    Estado2 VARCHAR(50) NOT NULL,
    Correo VARCHAR(255) UNIQUE,
    Telefono VARCHAR(20),
    FechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos de prueba (opcional)
INSERT INTO Asociados (Nombre, NumeroCedula, Estatus1, Estado2, Correo, Telefono) 
VALUES 
('Juan Pérez', '123456789', 'Activo', 'Verificado', 'juan.perez@email.com', '555-1234'),
('María López', '987654321', 'Inactivo', 'Pendiente', 'maria.lopez@email.com', '555-5678');

-- Consultar datos
SELECT * FROM Asociados;