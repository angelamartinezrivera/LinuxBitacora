# Práctica: Edición del archivo index.html en Linux

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

Después de realizar los cambios:
- Presionamos `Ctrl + O` para guardar.
- Presionamos `Enter` para confirmar.
- Presionamos `Ctrl + X` para salir del editor.

## Paso 4: Verificación de cambios
Finalmente, verificamos los cambios realizados accediendo a la página de bienvenida desde el navegador.

