# Práctica 1

## Propósito de la práctica

Instalar una distribución de Linux para ubicar el archivo `index.html` de la página principal (home) y editar dicho archivo utilizando únicamente comandos en la consola de Linux.

## Paso 1: Actualización del sistema e instalación de editor

La distribución instalada no cuenta inicialmente con un programa para editar archivos del sistema, por lo que primero actualizamos el sistema e instalamos un editor de texto.

### Comandos utilizados:

- `sudo apt upgrade`  
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


# Práctica 2

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

# Práctica 3

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
### Corremos éste bloque de comandos consecutivamente para poder descargar los programas que necesitemos  

    Bash
    cd
    apt upgrade
    apt update
    apt list --upgradable

Ubicamos la carpeta donde se encuentra el html de nginx

    cd /var/www/html

Instalamos git para acceder a algún proyecto de Streamlit (example) y python tambibén, indispensabel para correr la página y por si acaso descargamos y actualizamos los compiladores de C, para evitar incompatibilidades:

    apt install git
    
    apt install -y python3

    pt update && apt install -y gcc g++

## Duplicamos el repositorio de Git-Hub con éste comando: 
    git clone https://github.com/streamlit/demo-seattle-weather.git
recomendamos usar el comando "ls" para verificar que el repositorio se bajó completo

Ahora es necesario usar éstos comandos para poder instalar "uv" que a su vez necesario "curl" para crear el entorno virtual y correr streamlit:

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
# Ultimos pasos 
## Para liberar el puerto del navegador y liberar poder proyectar nuestra pag. de streamlit:
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

Después un tienes que cerrar el servicio nginx para dar paso a que la pag. de streamlit se pueda proyectar correctamente en el localhost del navegador:

    service nginx stop

si todo sale bien deberías seguir dentro de la carpeta donde creamos el entorno virtual (ser verá así: “(Nombre-del-repositorio)”), ahora corremos el proyecto de streamlit: 

    streamlit run nombre-de-tu-proyecto.py

### Ahora con escribir el localhost en tu navegador, y podrás ver tu pag. streamlit.

Aviso de errores con Docker-Desktop:
Los últimos 2 pasos no funcionarán correctamente por lo estrechamente implantado que está nginx en la distribución de ubuntu, cuando corres “service nginx stop” se cierra todo el contenedor con la consola, lo que no permite abrir paso a que la pag. de streamlight pueda proyectarse en el puerto 80 del navegador (que está siempre siendo usado por nginx), y arreglarlo requiere de configurar y editar código fuente de la distribución, cosa que no recomendamos por lo complicado y que criticó que puede resultar para la terminal; por lo que si utilizas éste programa terminará viéndose algo así:
![image.png](https://raw.githubusercontent.com/bucketio/img1/main/2026/03/10/1773176283654-05158509-5b87-4f69-97ad-5bc1897646ec.png 'image.png')


