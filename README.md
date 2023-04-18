# :file_folder: Creación Base de Datos para Comercializadora :file_folder:

### Introducción

En este proyecto, voy a desarrollar una base de datos para una comercializadora de joyería y relojes. La razón principal de crear esta base de datos es para poder almacenar y administrar la información de los productos, proveedores, empleados, clientes y ventas de la empresa.

La comercializadora de joyería y relojes maneja una gran cantidad de información diariamente, por lo que es vital tener una base de datos bien estructurada y organizada para evitar la pérdida de información, errores en la gestión y para facilitar la toma de decisiones.
Al crear una base de datos, se podrán almacenar datos como la descripción detallada de los productos, su precio, su proveedor, su stock disponible, entre otros. También se podrá almacenar información de los clientes, como su nombre, dirección, correo electrónico y número de teléfono, lo que permitirá llevar un registro de sus compras. La base de datos también permitirá a la empresa llevar un registro de las ventas realizadas, lo que le permitirá tener una visión clara de cuáles son los productos más vendidos.

Además, la base de datos será un elemento fundamental para poder crear informes y estadísticas de ventas y para realizar análisis de la situación financiera de la empresa. Esto permitirá a los gerentes y directivos tomar decisiones informadas y estratégicas para el crecimiento y la expansión del negocio.

### Diagrama entidad-relación

Un diagrama entidad-relación ayuda a visualizar de manera gráfica y clara la estructura de la información que se quiere almacenar en la base de datos. Se muestran las entidades más importantes, así como las relaciones que existen entre ellas para diseñar una estructura adecuada y eficiente. Este sería la primera prueba del diagrama antes de pasar al proceso de normalización: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/primer_diagrama_2.jpg" width="550" height="" />

Después de normalizar el diagrama entidad relación, surgen más entidades para evitar la redundancia y hacer más eficiente las consultas. Aplicamos el método reverse-engineering y así es como se ve el diagrama entidad relación finalmente:

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/diagrama_tablas_2.png" width="550" height="" />

### Listado de tablas

Las tablas son una parte fundamental en cualquier base de datos, ya que almacenan y organizan la información de manera estructurada. Las tablas pueden tener restricciones y validaciones que garantizan que los datos almacenados sean precisos y consistentes. Las restricciones también pueden evitar que se agreguen datos duplicados o que se agreguen valores incorrectos en campos específicos: 

<img src="https://github.com/annarochav/wholesale_database/blob/main/imagenes/tablas_2.png" width="550" height="" />
