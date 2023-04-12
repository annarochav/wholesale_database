CREATE TABLE departamentos (
id_departamento INT NOT NULL,
departamento VARCHAR(50) NOT NULL,
PRIMARY KEY (id_departamento),
UNIQUE (id_departamento));

CREATE TABLE puestos (
id_puesto INT NOT NULL,
puesto VARCHAR(50) NOT NULL,
PRIMARY KEY (id_puesto),
UNIQUE (id_puesto));

CREATE TABLE empleados (
id_empleado INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
id_departamento INT NOT NULL,
id_puesto INT NOT NULL,
sueldo FLOAT NOT NULL,
PRIMARY KEY (id_empleado),
UNIQUE (id_empleado),
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
FOREIGN KEY (id_puesto) REFERENCES puestos(id_puesto));

CREATE TABLE proveedores (
id_proveedor INT NOT NULL,
proveedor VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL,
PRIMARY KEY (id_proveedor),
UNIQUE (id_proveedor));

CREATE TABLE clientes (
id_cliente INT NOT NULL,
cliente VARCHAR(50) NOT NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL,
PRIMARY KEY (id_cliente),
UNIQUE (id_cliente));

CREATE TABLE productos (
id_producto INT NOT NULL,
producto VARCHAR(50) NOT NULL,
precio FLOAT NOT NULL,
inventario INT NOT NULL,
id_departamento INT NOT NULL,
id_marca INT NOT NULL,
id_temporada INT NOT NULL,
id_categoria INT NOT NULL,
id_color INT NOT NULL,
PRIMARY KEY (id_producto),
UNIQUE (id_producto),
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
FOREIGN KEY (id_temporada) REFERENCES temporadas(id_temporada),
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria),
FOREIGN KEY (id_color) REFERENCES colores(id_color));

CREATE TABLE marcas (
id_marca INT NOT NULL,
marca VARCHAR(50) NOT NULL,
PRIMARY KEY (id_marca),
UNIQUE (id_marca));

CREATE TABLE temporadas (
id_temporada INT NOT NULL,
temporada VARCHAR(50) NOT NULL,
PRIMARY KEY (id_temporada),
UNIQUE (id_temporada));

CREATE TABLE categorias (
id_categoria INT NOT NULL,
categorias VARCHAR(50) NOT NULL,
PRIMARY KEY (id_categoria),
UNIQUE (id_categoria));

CREATE TABLE colores (
id_color INT NOT NULL,
color VARCHAR(50) NOT NULL,
PRIMARY KEY (id_color),
UNIQUE (id_color));

CREATE TABLE ventas (
id_venta INT NOT NULL,
id_cliente INT NOT NULL,
fecha DATE NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL,
precio FLOAT NOT NULL,
PRIMARY KEY (id_venta ),
UNIQUE (id_venta ),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto));

CREATE TABLE compras (
id_compra INT NOT NULL,
id_proveedor INT NOT NULL,
fecha DATE NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL,
precio FLOAT NOT NULL,
PRIMARY KEY (id_compra),
UNIQUE (id_compra),
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto));