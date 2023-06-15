# :file_folder: Creación Base de Datos para Comercializadora :file_folder:

### ⚡Introducción

En este proyecto, voy a desarrollar una base de datos para una comercializadora de joyería y relojes. La razón principal de crear esta base de datos es para poder almacenar y administrar la información de los productos, proveedores, empleados, clientes y ventas de la empresa.

La comercializadora de joyería y relojes maneja una gran cantidad de información diariamente, por lo que es vital tener una base de datos bien estructurada y organizada para evitar la pérdida de información, errores en la gestión y para facilitar la toma de decisiones.
Al crear una base de datos, se podrán almacenar datos como la descripción detallada de los productos, su precio, su proveedor, su stock disponible, entre otros. También se podrá almacenar información de los clientes, como su nombre, dirección, correo electrónico y número de teléfono, lo que permitirá llevar un registro de sus compras. La base de datos también permitirá a la empresa llevar un registro de las ventas realizadas, lo que le permitirá tener una visión clara de cuáles son los productos más vendidos.

Además, la base de datos será un elemento fundamental para poder crear informes y estadísticas de ventas y para realizar análisis de la situación financiera de la empresa. Esto permitirá a los gerentes y directivos tomar decisiones informadas y estratégicas para el crecimiento y la expansión del negocio.

### ⚡Objetivo

Diseñar y desarrollar una base de datos eficiente y bien estructurada que permita almacenar y administrar de manera precisa la información de productos, proveedores, empleados, clientes y ventas de la comercializadora de joyería y relojes, con el fin de evitar la pérdida de datos, optimizar la gestión interna, facilitar la toma de decisiones, generar informes y estadísticas de ventas, y brindar un análisis financiero que respalde el crecimiento y la expansión del negocio.

### ⚡Situaciones Problemáticas

**Seguridad y privacidad de los datos:** La comercializadora de joyería y relojes maneja información confidencial de sus clientes y empleados, por lo que es crucial garantizar la seguridad y privacidad de los datos almacenados en la base de datos. La falta de medidas de seguridad adecuadas podría comprometer la integridad de la información y poner en riesgo la confianza de los clientes.
**Requisitos de escalabilidad y rendimiento:** A medida que el negocio crece y se expande, la base de datos deberá manejar un mayor volumen de datos y proporcionar respuestas rápidas en las consultas y generación de informes. Si la base de datos no está diseñada y optimizada para manejar la carga y el rendimiento requeridos, podría haber problemas de rendimiento y tiempos de respuesta lentos.

### ⚡Modelo de Negocio 

El modelo de negocio de la comercializadora se basa en la venta de productos de joyería y relojes a través de canales de distribución, ya sea en tiendas físicas, en línea o a través de tiendas departamentales. La base de datos es una infraestructura clave para gestionar y optimizar todas las actividades relacionadas con la comercialización de los productos, desde el seguimiento del inventario y proveedores hasta el registro de ventas y datos de clientes.

### ⚡Diagrama entidad-relación

Un diagrama entidad-relación ayuda a visualizar de manera gráfica y clara la estructura de la información que se quiere almacenar en la base de datos. Se muestran las entidades más importantes, así como las relaciones que existen entre ellas para diseñar una estructura adecuada y eficiente. Este sería la primera prueba del diagrama antes de pasar al proceso de normalización: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/primer_diagrama_2.jpg" width="550" height="" />

Después de normalizar el diagrama entidad relación, surgen más entidades para evitar la redundancia y hacer más eficiente las consultas. Aplicamos el método reverse-engineering y así es como se ve el diagrama entidad relación finalmente:

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/diagrama_tablas_2.png" width="550" height="" />

### ⚡Listado de tablas

Las tablas son una parte fundamental en cualquier base de datos, ya que almacenan y organizan la información de manera estructurada. Las tablas pueden tener restricciones y validaciones que garantizan que los datos almacenados sean precisos y consistentes. Las restricciones también pueden evitar que se agreguen datos duplicados o que se agreguen valores incorrectos en campos específicos: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/tablas3.png" width="550" height="" />

### ⚡Script Inserción Datos SQL 

Para agregar información a las tablas previamente hechas, hay varias opciones, la que elegí es por medio de command prompt. Los pasos a seguir son: 

1. Asegurarnos que las carpetas no estén ocultas para que aparezca la carpeta ProgramData
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/1.png" width="550" height="" />
2. Dentro de ProgramData nos metemos a MySQL:
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/2.png" width="550" height="" />
3. Luego nos metemos a la carpeta MySQLserver 8.0:
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/3.png" width="550" height="" />
4. Luego nos metemos a la carpeta Uploads:
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/4.png" width="550" height="" />
5. Dentro de uploads ponemos todos los archivos csvs que vamos a utilizar:
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/5.png" width="550" height="" />
6.  Después regresamos a la carpeta anterior MySQLserver 8.0 y abrimos el archivo my.ini
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/6.png" width="550" height="" />
7. Dentro de my.ini comentamos con un # el enunciado que dice secure-file-priv para que nos permita subir información por medio del prompt.
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/7.png" width="550" height="" />
8. Dentro del mismo archivo my.ini agregamos hasta el final local-inifile=1
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/8.png" width="550" height="" />
9. Guardamos los cambios y ponemos STOP en MySQL80 dentro de Task Manager:
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/9.png" width="550" height="" />
10. Dentro de MySQL Workbench revisamos que el server status se actualizó el día de los cambios
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/10.png" width="550" height="" />
11. Por último entramos a Command Prompt y agregamos usuario, contraseña y nombre de la base de datos. Después ponemos la query para subir los archivos csv y revisamos que todo este ok.
<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/11.png" width="550" height="" />

### ⚡Vistas

**Vista1: productos_joyeria**

 + Descripción: Esta vista proporciona el inventario que existe de los productos de joyería
 + Objetivo: Permitir a los usuarios obtener rápidamente información agregada sobre el inventario en un período determinado.
 + Tablas/Datos: Incluye los campos id_producto, producto, precio e inventario. La tabla que la compone es: productos

**Vista2: productos_relojes**

 + Descripción: Esta vista proporciona el inventario que existe de los productos de relojes.
 + Objetivo: Permitir a los usuarios obtener rápidamente información agregada sobre el inventario en un período determinado.
 + Tablas/Datos: Incluye los campos id_producto, producto, precio e inventario. La tabla que la compone es: productos

**Vista3: empleados_joyeria**

 + Descripción: Esta vista muestra la lista de empleados organizados en el departamento de joyería.
 + Objetivo: Facilitar la gestión y supervisión de los empleados en función de su departamento de trabajo
 + Tablas/Datos: Incluye campos id_empleado, nombre, puesto y sueldo. Las tablas que la componen son: empleados y puestos.

**Vista4: empleados_relojes**

 + Descripción: Esta vista muestra la lista de empleados organizados en el departamento de relojes.
 + Objetivo: Facilitar la gestión y supervisión de los empleados en función de su departamento de trabajo.
 + Tablas/Datos: Incluye campos id_empleado, nombre, puesto y sueldo. Las tablas que la componen son: empleados y puestos.

**Vista5: vista_detalle_compras**

 + Descripción: Esta vista muestra qué productos están incluidos en cada orden de compra.
 + Objetivo: Proporcionar información detallada sobre los productos que se han comprado en cada orden.
 + Tablas/Datos: Incluye campos id_compra, id_producto, producto, cantidad y precio. Tablas: detalle_compras y productos.

**Vista6: ventas_totales**

 + Descripción: Esta vista muestra el monto total vendido en un período determinado.
 + Objetivo: Proporcionar un resumen de las ventas totales, sin entrar en detalles específicos de productos o transacciones individuales.
 + Tablas/Datos: Incluye campos cantidad, precio y fecha. Tablas: detalle_ventas y ventas.

**Vista7: ventas_detalladas**

 + Descripción: Esta vista muestra los IDs completos de las ventas realizadas. Su objetivo es proporcionar una lista completa y única de identificadores de ventas
 + Objetivo: Facilita el seguimiento y la referencia a transacciones específicas.
 + Tablas/Datos: Incluye campos id_producto, producto, id_marca, id_temporada, id_color, id_categoria, cantidad y precio. Tablas: detalle_ventas y productos

**Vista8: ventas_completas**

 + Descripción: Esta vista muestra todos los detalles de las ventas.
 + Objetivo: Brindar una visión completa y exhaustiva de todas las transacciones de venta realizadas
 + Tablas/Datos: Incluye campos: producto, marca, temporada, color, categorías, cantidad y precio. Tablas: ventas_detalladas y marcas.

### ⚡Funciones

**Función1: calcular_total_ventas**

 + Descripción: Se multiplica el precio por la cantidad y se suma todo, después se especifica fecha_inicio y fecha_fin del periodo que deseamos revisar.
 + Objetivo: Calcular y retornar las ventas totales en un período de tiempo específico
 + Tablas/Datos: La tabla utilizada es ventas_totales.

**Función2: ventas_por_marca**

 + Descripción: Se multiplica el precio por la cantidad y se suma todo, después se especifica la marca que deseamos revisar.
 + Objetivo: Calcular y retornar las ventas totales de una marca en específico.
 + Tablas/Datos: La tabla utilizada es ventas_completas.

### ⚡Stored Procedures

**Procedure1: buscar_productos**

 + Descripción: Este procedimiento se utiliza para buscar productos en función de un nombre proporcionado.
 + Objetivo: Obtener información detallada de un producto en específico de manera automática.
 + Tablas/Datos: Tablas involucradas, ventas_completas, incluye campos como el nombre del producto, marca, temporada, color, categorías, cantidad y precio.


**Procedure2: registrar_venta**	

 + Descripción: Este procedimiento se utiliza para registrar una venta en la tabla "detalle_ventas". Toma como parámetros el ID de la venta, ID del producto, cantidad y precio.
 + Objetivo: El objetivo es registrar los detalles de una venta en la base de datos y automatiza el proceso de registro de ventas.
 + Tablas/Datos: La tabla involucrada es detalle_ventas y toma los campos ID de la venta, ID del producto, cantidad y precio.


**Procedure3: ordenar_productos**

 + Descripción: Este procedimiento se utiliza para ordenar los productos en función de un campo de orden y un tipo de orden proporcionados como parámetros. Genera una consulta dinámica para ordenar los productos por el campo y tipo de orden especificados.
 + Objetivo: Obtener una lista de productos ordenados según los criterios especificados. Facilita la visualización y exploración de los productos de manera ordenada, lo que puede ser útil para realizar análisis, generar informes o presentar información de manera más estructurada.
 + Tablas/Datos: La tabla involucrada es productos.

### ⚡Triggers

**Trigger1: tabla_auditoria**

 + Descripción: Crea una tabla llamada "AUDITORIAS" que se utilizará para almacenar información de auditoría relacionada con los cambios realizados en otras tablas de la base de datos. 
 + Objetivo: Registro de cambios, seguimiento de actividades, respaldo y recuperación, análisis y reportes
 + Tablas/Datos: La tabla involucrada es de auditorias.

**Trigger2: new_product_aud**

 + Descripción: Se dispara después de realizar una inserción en la tabla "productos". Su función principal es registrar información de auditoría relacionada con la creación de un nuevo producto en la tabla "AUDITORIAS". 
 + Objetivo: Registrar de manera automática y precisa la información de auditoría cuando se crea un nuevo producto en la tabla "productos". 
 + Tablas/Datos: La tabla involucrada es de productos.

**Trigger3: update_product_aud**

 + Descripción: Se activa después de que se realice una actualización en la tabla "productos". Su función principal es actualizar la información de auditoría relacionada con las actualizaciones realizadas en los productos en la tabla "AUDITORIAS". 
 + Objetivo: Mantener actualizada la información de auditoría relacionada con las actualizaciones de los productos en la base de datos. 
 + Tablas/Datos: La tabla involucrada es de productos.

### ⚡Informes generados de esta base de datos

**Informe de actividad de usuarios:** Este informe brindaría una visión general de las acciones realizadas por cada usuario en la base de datos. Mostraría las inserciones y actualizaciones realizadas por cada usuario, junto con las fechas y horas correspondientes.

**Informe de inventario de productos de joyería y relojes:** Este informe mostraría la lista de productos de joyería y relojes disponibles en el inventario, incluyendo su identificación, nombre, precio y cantidad en stock.

**Informe de empleados por departamento:** Este informe listaría a todos los empleados que trabajan en la empresa, incluyendo su identificación, nombre, puesto y sueldo. Facilitaría la gestión y supervisión.

**Informe de detalle de compras:** Este informe proporcionaría información detallada sobre cada orden de compra, incluyendo los productos adquiridos, la cantidad comprada y el precio unitario. Permitiría tener una visión completa de las compras realizadas, identificando los productos específicos y su correspondiente información de compra.

**Informe de ventas totales en un período determinado:** Este informe mostraría el monto total de ventas realizadas en un período de tiempo específico, sin entrar en detalles de productos o transacciones individuales. Proporcionaría una visión general del desempeño de ventas en ese período y permitiría evaluar el rendimiento global del negocio.

### ⚡Tecnologías utilizadas

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/t.jpg" width="550" height="" />

### ⚡Scripts

 + [Script Tablas](https://github.com/annarochav/wholesale_database/blob/main/tablas.sql)

 + [Script Vistas](https://github.com/annarochav/wholesale_database/blob/main/vistas.sql)

 + [Script Funciones](https://github.com/annarochav/wholesale_database/blob/main/funciones.sql)

 + [Script Stored Procedures](https://github.com/annarochav/wholesale_database/blob/main/stored_procedures.sql)

 + [Script Triggers](https://github.com/annarochav/wholesale_database/blob/main/triggers.sql)

 + [Script Importación de Datos](https://github.com/annarochav/wholesale_database/blob/main/importacion.sql)




 
