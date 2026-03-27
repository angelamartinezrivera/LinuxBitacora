# Integrantes
- Jaaziel Arellano Romero
- Angela Guadalupe Martínez Rivera

# Práctica #1

## Propósito de la práctica

Instalar una distribución de Linux para ubicar el archivo `index.html` de la página principal (home) y editar dicho archivo utilizando únicamente comandos en la consola de Linux.

## Paso 1: Actualización del sistema e instalación de editor

La distribución instalada no cuenta inicialmente con un programa para editar archivos del sistema, por lo que primero actualizamos el sistema e instalamos un editor de texto.

### Comandos utilizados:
- `bash` 
  Delata el usuario que estas usando para interactuar con la terminal.

- `apt upgrade`  
  Actualiza los programas instalados a su versión más reciente.

- `apt update`  
  Actualiza la lista de programas disponibles para saber si existen nuevas versiones.

- `apt list --upgradable`  
  Muestra qué programas tienen actualizaciones disponibles.

Después de actualizar el sistema, instalamos un editor de texto:

- `apt install nano`  
  Instala el programa **nano**, el cual nos permite editar, crear y eliminar archivos desde la terminal.

## Paso 2: Ubicación del archivo index

Identificamos que el archivo `index` se encuentra en la ruta:
- `/var/www/html`

Para acceder a esa carpeta usamos el siguiente comando:

- `cd /var/www/html`  
  Cambia a la carpeta `/var/www/html`, que normalmente es donde se almacenan los archivos de una página web en el servidor.

## Paso 3: Edición del archivo index

Una vez dentro de la carpeta, ejecutamos el siguiente comando para abrir y editar el archivo:

- `nano index.nginx-debian.html`  
  Abre el archivo `index.nginx-debian.html` con el editor **nano** para poder visualizarlo y modificar su contenido.

<img width="960" height="503" alt="Captura de pantalla 2026-03-02 132907" src="https://github.com/user-attachments/assets/40914cf4-f72d-46de-9c91-e05dc833de1b" />

Después de realizar los cambios:
- Presionamos `Ctrl + O` para guardar.
- Presionamos `Enter` para confirmar.
- Presionamos `Ctrl + X` para salir del editor.

## Paso 4: Verificación de cambios
Finalmente, verificamos los cambios realizados accediendo a la página de bienvenida desde el navegador.

### Antes:
<img width="960" height="503" alt="Captura de pantalla 2026-03-02 133049" src="https://github.com/user-attachments/assets/278c97e7-ac77-4328-a276-a557fdc5fc24" />

### Después:
<img width="960" height="503" alt="Captura de pantalla 2026-03-02 133159" src="https://github.com/user-attachments/assets/d8c9a1fa-ff04-4dae-b7c9-52c28ebb47b6" />


# Práctica #2

## Propósito de la práctica

Conseguir una conexión entre un repositorio personal de GitHub y nuestra distribución Ubuntu con Nginx, para descargar el archivo HTML de la página creada anteriormente y poder actualizarla cada vez que se realicen cambios desde la plataforma de GitHub hacia la consola de nuestra distribución.

## Paso 1: Verificar usuario en consola

Utilizamos el comando:

- `bash`  
  Nos permite asegurarnos de que estamos trabajando con el usuario correcto en la consola de Linux.

## Paso 2: Actualizar el sistema

Ejecutamos los siguientes comandos de manera consecutiva:

- `sudo apt upgrade`  
- `apt list --upgradable`  

Esto nos permite actualizar los programas del sistema y asegurarnos de que podemos instalar nuevas herramientas necesarias.

## Paso 3: Instalar Git

Instalamos Git en nuestra distribución con el siguiente comando:

- `apt install git`  

Presionamos `y` para aceptar las condiciones de instalación y continuar con el proceso.

## Paso 4: Ubicar la ruta del servidor web

Nos dirigimos a la carpeta donde el sistema proyecta los archivos HTML del servidor:

- `cd /var/www/html`  

Esta es la ruta donde Nginx busca los archivos para mostrarlos en el navegador.

## Paso 5: Clonar el repositorio de GitHub

Descargamos el repositorio como una nueva carpeta dentro de la ruta seleccionada con el siguiente comando:

- `git clone [URL del repositorio]`  

Esto crea una carpeta con el nombre del repositorio dentro de `/var/www/html`.

## Paso 6: Verificar que el repositorio se descargó correctamente

Primero usamos:

- `ls`  

Aquí debe aparecer el nombre del repositorio (generalmente en color azul).

Después accedemos a la carpeta con:

- `cd /var/www/html/LinuxBitacora`  

Finalmente verificamos que el archivo HTML esté dentro usando nuevamente:

- `ls`  

Si aparece el archivo `Index.html`, significa que se descargó correctamente.

## Paso 7: Visualizar la página en el navegador

Escribimos en el navegador la dirección local de nuestro equipo y agregamos el nombre del repositorio y el archivo HTML, separados por diagonales.

En nuestro caso:
- `http://127.0.0.1/LinuxBitacora/Index.html`

Si todo está correcto, se mostrará la página web.

**Resultado:**  
<img width="960" height="503" alt="Captura de pantalla 2026-03-02 132004" src="https://github.com/user-attachments/assets/3da87104-2586-4d76-947e-2dbf69086685" />

# Práctica #3

## Paso 1: Crear contenedor MySQL en Docker

En Docker se ejecutó la imagen de **MySQL** para crear un nuevo contenedor llamado: `SQL_Prueba1`

Durante la configuración:

- Se asignaron los puertos:
  - `3306` (puerto principal de MySQL)
  - `33058` (puerto adicional configurado)

- Se configuró la variable de entorno: `MYSQL_ROOT_PASSWORD`
Finalmente, se estableció una contraseña creada por nosotros para asegurar el acceso a la base de datos.
<img width="960" height="503" alt="Captura de pantalla 2026-03-04 151952" src="https://github.com/user-attachments/assets/a52da3c4-c13e-4b19-ba42-691c203afaef" />

## Paso 2: Establecer conexión con la base de datos

Una vez creado el contenedor, se realizó la conexión a la base de datos utilizando el tipo de conexión: `MySQL`

Se ingresaron los datos correspondientes:
- Host
- Puerto
- Usuario (root)
- Contraseña configurada previamente

<img width="960" height="503" alt="Captura de pantalla 2026-03-04 152349" src="https://github.com/user-attachments/assets/698811d5-3d1e-4544-865e-51979e686b35" />

## Paso 3: Crear la base de datos

Se creó una base de datos llamada: `borrame`

Esta base de datos servirá para realizar pruebas y ejercicios.
<img width="960" height="503" alt="Captura de pantalla 2026-03-04 152809" src="https://github.com/user-attachments/assets/9a38515d-6342-4509-8418-e2d314cf1921" />

## Paso 4: Crear tablas mediante script SQL

### Creación de la tabla

A través de un script en lenguaje SQL creamos las tablas y las columnas necesarias para nuestra base de datos.  

Se recomienda importar el script que se encuentra en el repositorio una vez que la base de datos vacía ya esté creada.

```sql
CREATE TABLE alumnos (
    matricula VARCHAR(20) NOT NULL,
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (matricula),
    UNIQUE KEY (id)
);
```
El siguiente bloque crea la estructura de la tabla `alumnos`, definiendo el tipo de datos que se pueden insertar en los registros:

<img width="960" height="503" alt="Captura de pantalla 2026-03-04 153434" src="https://github.com/user-attachments/assets/7a5f2573-c129-4088-adb3-447697234382" />

Después, insertamos dos registros dentro de la tabla alumnos con el siguiente bloque:

```sql
INSERT INTO alumnos (matricula, nombre, fecha_registro) 
VALUES 
    ('377308', 'Ángela Martinez Rivera', '1988-01-12 00:00:00'),
    ('377132', 'Jaaziel Arellano Romero', '1988-01-16 00:00:00');
```

Finalmente, realizamos una consulta sencilla para verificar que los registros fueron insertados correctamente:

```sql
SELECT * FROM alumnos;
```

Si todo está correcto, deberán mostrarse los 2 registros almacenados en la tabla.

**Resultado:** 
<img width="960" height="503" alt="Captura de pantalla 2026-03-04 153538" src="https://github.com/user-attachments/assets/b1f34100-d15e-4120-bd0d-ffd23e4c4794" />

# Práctica #4

## Antes que nada
### Corremos este bloque de comandos consecutivamente para poder descargar los programas que necesitemos. 

    Bash
    cd
    apt upgrade
    apt update
    apt list --upgradable

Ubicamos la carpeta donde se encuentra el html de nginx.

    cd /var/www/html

Instalamos git para acceder a algún proyecto de Streamlit (example) y python tambien, indispensable para correr la página y por si acaso descargamos y actualizamos los compiladores de C, para evitar incompatibilidades:

    apt install git
    
    apt install -y python3

    pt update && apt install -y gcc g++

## Duplicamos el repositorio de Git-Hub con este comando: 
    git clone https://github.com/streamlit/demo-seattle-weather.git
Recomendamos usar el comando "ls" para verificar que el repositorio se bajó completo.

Ahora es necesario usar estos comandos para poder instalar "uv" que a su vez necesario "curl" para crear el entorno virtual y correr streamlit:

    apt install curl 
    curl -LsSf https://astral.sh/uv/install.sh | sh 
    source $HOME/.local/bin/env
    ls
    cd /var/www/html/demo-seattle-weather
    
## Creamos el entorno dentro de la carpeta con:
    uv venv
Lo activamos:

    source .venv/bin/activate 
Sincronizamos las dependencias:

    uv sync 
# Últimos pasos 
## Para liberar el puerto del navegador y liberar poder proyectar nuestra página de streamlit:
Instalamos nano para editar la configuración del puerto del navegador con:
 
    apt install nano

    nano /etc/nginx/sites-available/default 
El úlltimo comando abrirá el archivo de configuración para poder editarlo, deberás borrar todo el contenido y pegar el siguiente script:

    server {
        listen 80;
        location / {
            proxy_pass http://127.0.0.1:8501;
            proxy_http_version 1.1;
            proxy_set_header Upgrade $http_upgrade;
            proxy_set_header Connection "upgrade";
            proxy_set_header Host $host;
        }
    }
### Estando adentro y editado el archivo, pondrás los siguientes comandos para guardar y salir:
Teclear:
- control + O 
- presiona Enter
- control + X para salir

Después tienes que cerrar el servicio nginx para dar paso a que la página de streamlit se pueda proyectar correctamente en el localhost del navegador:

    service nginx stop

Si todo sale bien deberías seguir dentro de la carpeta donde creamos el entorno virtual (se verá así: “(Nombre-del-repositorio)”), ahora corremos el proyecto de streamlit: 

    streamlit run nombre-de-tu-proyecto.py

### Ahora con escribir el localhost en tu navegador y podrás ver tu página streamlit.

Aviso de errores con Docker-Desktop:
Los últimos 2 pasos no funcionarán correctamente por lo estrechamente implantado que está nginx en la distribución de ubuntu, cuando corres “service nginx stop” se cierra todo el contenedor con la consola, lo que no permite abrir paso a que la página de streamlight pueda proyectarse en el puerto 80 del navegador (que está siempre siendo usado por nginx), y arreglarlo requiere de configurar y editar código fuente de la distribución, cosa que no recomendamos por lo complicado y crítico que puede resultar para la terminal; por lo que si utilizas este programa terminará viéndose algo así:
![image.png](https://raw.githubusercontent.com/bucketio/img1/main/2026/03/10/1773176283654-05158509-5b87-4f69-97ad-5bc1897646ec.png 'image.png')

# Práctica #5
## Paso 1: Crear base de datos

En **DBeaver** creamos una nueva base de datos llamada:

`tarea`
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 174351" src="https://github.com/user-attachments/assets/2185bde3-f02c-496a-948c-bebb371daf93" />

## Paso 2: Importar archivo CSV

Seleccionamos la opción **“Import Data”** para importar el archivo:

`denue_inegi_.csv`

Este archivo fue brindado por el docente.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172337" src="https://github.com/user-attachments/assets/e5f4d624-f64e-465d-80ed-b65a540cbcfd" />

## Paso 3: Iniciar el asistente de importación

Aparece en pantalla la ventana **“Importar desde archivo CSV”**, donde damos clic en **“Siguiente”**.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172420" src="https://github.com/user-attachments/assets/dc348b56-af64-452e-9f4a-0574e28c288a" />

## Paso 4: Buscar el archivo en el ordenador

Seleccionamos la opción **“Browse”** para navegar en los documentos de nuestro ordenador.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172438" src="https://github.com/user-attachments/assets/b176d602-78e7-461c-b453-3094647fcb3e" />

## Paso 5: Seleccionar el archivo

Elegimos el archivo **CSV** correspondiente y damos clic en **“Abrir”**.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172525" src="https://github.com/user-attachments/assets/7f139f12-167d-40c5-833f-fffe90b62732" />

## Paso 6: Confirmar configuración

Nuevamente presionamos **“Siguiente”** para continuar con el proceso.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172553" src="https://github.com/user-attachments/assets/06aabf09-38d3-4285-9676-90c27ef6ac40" />

## Paso 7: Ajustar opciones de importación

En nuestro caso seleccionamos las opciones:

- **Truncate target table(s) before load**
- **Disable batches**

Estas opciones se activaron debido a algunos errores que aparecieron más adelante durante la importación.

Después presionamos **“Siguiente”**.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172751" src="https://github.com/user-attachments/assets/71e5755a-6316-4ba0-a972-bece331bd0cd" />

## Paso 8: Iniciar importación

Seleccionamos **“Continuar”** para comenzar el proceso de importación del archivo CSV.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172855" src="https://github.com/user-attachments/assets/00e42eab-1811-4220-9786-f138d3f5b60d" />

## Paso 9: Proceso de carga

En pantalla aparece una **barra de progreso** mostrando el avance de la importación. 

Este proceso puede tardar aproximadamente **2 a 3 minutos**, dependiendo del tamaño del archivo.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172214" src="https://github.com/user-attachments/assets/fe81ba4f-c269-47f2-b98a-81b1acced5a8" />

## Paso 10: Manejo de errores durante la importación

Durante la carga pueden aparecer errores como los mencionados en el **Paso 8**.

En estos casos se puede:

- Presionar **“Parar”** para detener el proceso.
- Presionar **“Skip all”** para continuar y revisar cuántos registros se han importado.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 173454" src="https://github.com/user-attachments/assets/c87b5725-f9a0-42e0-ad78-bd9afbbfdebe" />

Posteriormente repetimos el proceso desde el **Paso 2** hasta lograr que todos los datos del archivo CSV se importen correctamente.

## Paso 11: Corrección de errores en columnas

Para corregir los errores mencionados en el paso anterior, modificamos el tamaño del **VARCHAR** en algunas columnas de la tabla:

- `nom_estab`
- `nom_v_e_1`
- `nomb_asent`
- `raz_social`
- `nom_vial`
- `nom_v_e_2`
- `nom_v_e_3`
- `nom_CenCom`
- `correoelec`

Para hacerlo, damos **doble clic en la opción VARCHAR de la columna** y modificamos el número de caracteres permitidos.
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 172823" src="https://github.com/user-attachments/assets/358b61f3-1fe7-49c5-9e14-6bcb48807445" />

## Paso 12: Abrir el Editor SQL

Después, en el menú de **DBeaver** ubicado en la parte superior, seleccionamos la opción: `Editor SQL`

Esto nos permite ejecutar consultas sobre nuestra base de datos.

<img width="295" height="486" alt="Captura de pantalla 2026-03-10 180759" src="https://github.com/user-attachments/assets/d17b48fd-6858-48ba-84a1-33f9128205a1" />

## Paso 13: Consulta para verificar los registros

Finalmente ejecutamos la siguiente consulta SQL para contar cuántos registros (filas) existen en la tabla `denue_inegi`:

```sql
SELECT COUNT(*) FROM denue_inegi di;
```
<img width="960" height="503" alt="Captura de pantalla 2026-03-10 181002" src="https://github.com/user-attachments/assets/9149230e-828f-4f16-b481-f2faf737a0af" />

# Práctica #6
El propósito de ésta práctica es poder automatizar respaldos de una base de datos montada en nuestro computador y potencialmente cualquier base de datos que manejes solo con la dirección IP.

##### Ésta práctica en cuestión requiere:
1. montar una pequeña base de datos en tu computador y conectarla a tu gestor de bases de datos favoritos
2. contar también con una consola linux ajena a dicha conexión.

Cosas que ya hizimos es practicas anteriores, por lo que, se asume que <u>las prácticas 1, 3 y 5</u> han sido completadas.

### Instalar herramientas necesarias:
Iniciamos primero en nuestra consola linux.

### Nano:
Es un<u> editor de texto</u> basado en la terminal que se encuentra disponible en la mayoría de distribuciones de Linux y Unix. 
A diferencia de editores más complejos como Vim o Emacs, Nano no tiene modos de operación; esto significa que **puedes comenzar a escribir y editar texto inmediatamente al abrir un archivo.**
- Lo instalamos con el siguiente comando: `apt install nano`

### MYSQLDUMP:
Es una herramienta esencial en MySQL para **realizar copias de seguridad de bases de datos**, <u>genera un archivo con sentencias SQL que permiten recrear tanto la estructura como los datos de las tablas</u>. 
Este archivo puede ser utilizado para **restaurar** la base de datos en el mismo servidor o en otro.
- Para la distribución específica que hemos usado en practicas pasadas (**Ubuntu/nginx**) lo instalamos con el siguiente comando:
- `apt-get install -y default-mysql-client`

### Crontab Guru:
Crontab Guru es una herramienta gratuita que permite a los usuarios principiantes y avanzados **editar y programar tareas** cron de manera rápida y sencilla. 
Ofrece un generador de horarios y ejemplos de expresiones de programación de crontab, <u>facilitando la automatización de tareas en sistemas Linux.</u>
- Lo instalamos con el siguiente comando: `apt install cron`

## Pasamos a la base de datos:
Dejamos la consola linux para <u>ir al gestor de bases de datos que estamos usando</u>; esto por que **necesitamos crear un usuario nuevo** y asignarle permisos **de acceso remoto** para que pueda <u>descargar los respaldos desde ótro computador</u> (consola linux).

Una vez en la base de datos <u>nos ubicamos en un nuevo script de consulta SQL</u> y corremos los siguientes comandos **uno por uno**:


```language
CREATE USER 'Tu_Nuevo_Usuario'@'%' IDENTIFIED BY 'Tu-DataBase_password';

GRANT ALL PRIVILEGES ON Name_DataBase.* TO 'Tu_Nuevo_Usuario';

GRANT PROCESS ON *.* TO 'Tu_Nuevo_Usuario';
```
## Volvemos a la Consola de Linux: 
 
- Primero debemos ubicarnos en una carpeta facil de recordar, como con el comando `cd /home`.

Luego seguimos con una <u>instrucción de prueba</u> para asegurarnos que las herramientas que instalamos funcionan en conjunto, correrás el siguiente código:
```language
mysqldump -h IP_de_tu_computador -u Tu_Nuevo_Usuario -p'DataBase_Password' DataBase_name > /home/respaldo_$(date +\%Y\%m\%d_\%H\%M).sql
```
Seguido de el comando `ll` para asegurarnos de que efectivamente hizo un respaldo y dícho respaldo nó está vacio, se debería ver similar a la imagen a continuación:

![image.png](https://raw.githubusercontent.com/bucketio/img17/main/2026/03/26/1774587977996-f68632c2-d0d8-435d-b4c0-edbbb9df2f8f.png 'image.png')
La instrucción de prueba ya utiliza la herramienta nativa de linux "date" para concatenar parametros actuales (**fecha y hora**) al nombre del archivo donde se guarda el respaldo para reconocer diferenciar entre respaldos repetidos por su fecha de creación.

## Etapa final - Automatizar la Instrucción -
Para poder automatizar la instrucción que sabemos que funciona debemos no basta con escribir un solo comando, se se trata<u> hacer uso de la herramienta **crontab**</u>, y ése proceso se divide en un par de pasos que explicaremos a continuación:
1. 1-**Activamos el "sistema" de automatización de Crontrab**, como lo acabamos de instalar, **es necesario activarlo** la primera vez que lo usemos, eso es sencillo, solo con correr el comando `service cron start` en consola.
2. 2- **Accedemos al archivo de crontab**; es estrictamente necesario correr el comando `crontab -e`, el comando abre un archivo a travez de nano, y se deberá ver de la siguiente manera:
![image.png](https://raw.githubusercontent.com/bucketio/img14/main/2026/03/26/1774590152876-cbb741d4-f298-4fba-8161-761dbdc08889.png 'image.png')
3. 3- **Editamos el archivo**; si <u>bajamos hasta la última línea</u> y escribimos cualquier cosa <u>sin los gatos</u> (#) el sistema lo tomará como una <u>instrucción/sentencia que debe ser repetida</u> determinadas veces al día.
Sin embargo nuestra instrucción anterior no está completa para poder ser automatizada, debemos establecer la **frecuencia de repetición** y establecer un límite de respaldos dentro de la carpeta para evitar errores.
`* 3 * * *`: delimita el periodo, en éste bloque dice que el proceso se ejecutará la primera tercer hora de cada día de cada semana de cada mes y de cada año.
`/usr/bin/find /home/ -name "respaldo_*.sql" -type f -mtime +7 -delete`: éste bloque establece un sistema donde cada vez que se ejecute el la instrucción se analizará si es el el nombre del archivo, la fecha supera mas de 7 días a la fecha actual, de superarlos, se borran para evitar superar mas antiguas a una semana.
De manera que el código completo de la instrucción automatizada queda de la siguiente forma: 

```language
* * * * * /usr/bin/mysqldump -h 192.168.100.54 -u Tu_Nuevo_Usuario -p'vegeta777' borrame > /home/respaldo_$(date +\%Y\%m\%d_\%H\%M).sql 2> /home/error_log.txt; /usr/bin/find /home/ -name "respaldo_*.sql" -type f -mtime +7 -delete
```
Este ultimo bloque de código deberá pegarse en el archivo que acabamos de abrir con nano, deberá verse de la siguiente forma: 
![image.png](https://raw.githubusercontent.com/bucketio/img9/main/2026/03/26/1774594599923-a7aa455c-20cd-4f5b-af18-590a05ede5c1.png 'image.png')
(Observación, utilizamos "* * * * *" para que hiziera respaldos cada minuto y tener resultados lo mas rapido posible, recomendamos consultar la documentación de crontab guru para entender como adaptar ésa sentencia a sus necesidades)
- **4- Finalmente** una vez pegamos la instrucción completa en el archivo, **lo guardamos y cerramos** con: 
  - 1.`Contr` + `O`
  - 2.``Enter``
  - 3.``Control`` + `X`
El resultado final, eventualmente se debería reflejar una serie de respaldos consecutivos similar a los siguientes:
![image.png](https://raw.githubusercontent.com/bucketio/img8/main/2026/03/27/1774595394676-3c3004f0-64b4-48b1-8564-924b49540db6.png 'image.png')
(Comentario Extra: si necesitas detener el sistema automatico, solo basta con escribir un gato antes de la isntrucción para convertirlo en un comentario imposibilitando su ejecución.)
