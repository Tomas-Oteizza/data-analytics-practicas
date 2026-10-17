CREATE TABLE clientes (
    id_cliente INT,
    nombre VARCHAR(100),
    perfil_bio TEXT,
    fecha_registro DATE,
    fecha_nacimiento DATE --Eligo guardar la fecha de nacimiento y no la edad, porque la edad varia en cada año, en cambio la fecha de nacimiento es una constante
);

CREATE TABLE productos (
    id_producto INT,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2),
    esta_activo VARCHAR(2) -- Uso los datos de tipo texto pero lo limito a solo 2, ya que solo debe registrar "si" o "no"
);