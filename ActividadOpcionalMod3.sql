-- BodegaTech — Script de Inventario
-- Autor: Tomas Oteizza Smietano
-- Fecha: 22/10/2026

--Seccion DDl:
DROP TABLE IF EXISTS inventario;

CREATE TABLE inventario(
    id_producto INT IDENTITY(1,1) NOT NULL PRIMARY KEY, --Escogo el ID como primary key, dandole el tipo de dato entero, ademas de un autoincremental para asegurarme que no habra errores humnanos
    nombre_producto VARCHAR(100),
    categoria VARCHAR(50),
    precio_unitario DECIMAL(10,2), --Elegi el tipo de dato DATE para la fecha ya que solo quiero guardar la fecha calendario, mas no la hora; ademas si usara varchar queda expuesto a posibles errores humanos en la carga de datos
    stock_actual INT,
    stock_minimo INT,
    fecha_ingreso DATE,
    activo BIT NOT NULL --Elegi este tipo de dato ya que el estado de un activo solo puede ser dos, activo (1) o inactivo (0)
);

--Seccion DML:

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES  ('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10',	1), 
        ('Mouse Inalambrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
        ('Monitor 4K27"', 'Computacion', 450.00, 12, 2,'2024-01-15', 1),
        ('Teclado Mecanico"', 'Accesorios', 95.00, 40, 5,'2024-01-15', 1),
        ('Laptop Basic 14', 'Computacion', 650.00, 20, 3,'2024-02-01', 1),
        ('Auriculares BT Pro', 'Audio', 120.00, 35, 5,'2024-02-01', 1),
        ('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10,'2024-02-10', 1),
        ('WebcamHD 1080P', 'Accesorios', 85.00, 25, 5,'2024-02-10', 1),
        ('SSD externo 1TB', 'Almacenamiento', 130.00, 18, 3,'2024-03-01', 1),
        ('Parlante Bluetooth', 'Audio', 60.00, 45, 8,'2024-03-01', 1);

UPDATE inventario SET stock_actual = 12 WHERE id_producto = 1;
UPDATE inventario SET stock_actual = 68 WHERE id_producto = 2;
UPDATE inventario SET stock_actual = 30 WHERE id_producto = 6;    

UPDATE inventario SET activo = 0 WHERE id_producto = 8; 

SELECT * FROM inventario;