# :file_folder: Creación Base de Datos para Comercializadora :file_folder:

### Introducción

En este proyecto, voy a desarrollar una base de datos para una comercializadora de joyería y relojes. La razón principal de crear esta base de datos es para poder almacenar y administrar la información de los productos, proveedores, empleados, clientes y ventas de la empresa.

La comercializadora de joyería y relojes maneja una gran cantidad de información diariamente, por lo que es vital tener una base de datos bien estructurada y organizada para evitar la pérdida de información, errores en la gestión y para facilitar la toma de decisiones.
Al crear una base de datos, se podrán almacenar datos como la descripción detallada de los productos, su precio, su proveedor, su stock disponible, entre otros. También se podrá almacenar información de los clientes, como su nombre, dirección, correo electrónico y número de teléfono, lo que permitirá llevar un registro de sus compras. La base de datos también permitirá a la empresa llevar un registro de las ventas realizadas, lo que le permitirá tener una visión clara de cuáles son los productos más vendidos.

Además, la base de datos será un elemento fundamental para poder crear informes y estadísticas de ventas y para realizar análisis de la situación financiera de la empresa. Esto permitirá a los gerentes y directivos tomar decisiones informadas y estratégicas para el crecimiento y la expansión del negocio.

### Objetivo

Diseñar y desarrollar una base de datos eficiente y bien estructurada que permita almacenar y administrar de manera precisa la información de productos, proveedores, empleados, clientes y ventas de la comercializadora de joyería y relojes, con el fin de evitar la pérdida de datos, optimizar la gestión interna, facilitar la toma de decisiones, generar informes y estadísticas de ventas, y brindar un análisis financiero que respalde el crecimiento y la expansión del negocio.

### Situaciones Problemáticas

 + **Seguridad y privacidad de los datos:** La comercializadora de joyería y relojes maneja información confidencial de sus clientes y empleados, por lo que es crucial garantizar la seguridad y privacidad de los datos almacenados en la base de datos. La falta de medidas de seguridad adecuadas podría comprometer la integridad de la información y poner en riesgo la confianza de los clientes.
 + **Requisitos de escalabilidad y rendimiento:** A medida que el negocio crece y se expande, la base de datos deberá manejar un mayor volumen de datos y proporcionar respuestas rápidas en las consultas y generación de informes. Si la base de datos no está diseñada y optimizada para manejar la carga y el rendimiento requeridos, podría haber problemas de rendimiento y tiempos de respuesta lentos.

### Modelo de Negocio 

El modelo de negocio de la comercializadora se basa en la venta de productos de joyería y relojes a través de canales de distribución, ya sea en tiendas físicas, en línea o a través de tiendas departamentales. La base de datos es una infraestructura clave para gestionar y optimizar todas las actividades relacionadas con la comercialización de los productos, desde el seguimiento del inventario y proveedores hasta el registro de ventas y datos de clientes.

### Diagrama entidad-relación

Un diagrama entidad-relación ayuda a visualizar de manera gráfica y clara la estructura de la información que se quiere almacenar en la base de datos. Se muestran las entidades más importantes, así como las relaciones que existen entre ellas para diseñar una estructura adecuada y eficiente. Este sería la primera prueba del diagrama antes de pasar al proceso de normalización: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/primer_diagrama_2.jpg" width="550" height="" />

Después de normalizar el diagrama entidad relación, surgen más entidades para evitar la redundancia y hacer más eficiente las consultas. Aplicamos el método reverse-engineering y así es como se ve el diagrama entidad relación finalmente:

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/diagrama_tablas_2.png" width="550" height="" />

### Listado de tablas

Las tablas son una parte fundamental en cualquier base de datos, ya que almacenan y organizan la información de manera estructurada. Las tablas pueden tener restricciones y validaciones que garantizan que los datos almacenados sean precisos y consistentes. Las restricciones también pueden evitar que se agreguen datos duplicados o que se agreguen valores incorrectos en campos específicos: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/tablas2.png" width="550" height="" />
