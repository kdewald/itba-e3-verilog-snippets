# Verilog Tutorial - Instalación

En este tutorial veremos los pasos para ejecutar simulaciones con Verilog utilizando  `iverilog` (Icarus Verilog) y `gtkwave`, partiendo de un entorno de Ubuntu Linux. Aprovecharemos además herramientas como Makefile y Git para tal fin.

Para instalar ambas herramientas, se debe ejecutar el siguiente comando en una terminal:
> `sudo apt install make git iverilog gtkwave -y`

A nivel comportamiento, Icarus Verilog nos brinda dos herramientas:

- `iverilog`: Compilador de archivos .v a *vvp assembly*.
- `vvp`: Ejecutor de *vvp assembly*.

Para descargar todos los ejemplos del curso, ejecutar el siguiente comando:

> `git clone git@github.com:kdewald/verilog-course.git`

Para testear si la instalación fue correcta, acceder a la carpeta  **01-helloworld** y ejecutar los siguientes comandos dentro de la misma.

> `iverilog helloworld.v`
> `vvp a.out`

Se creará un archivo llamado `a.out`, que al ser ejecutado por `vvp` imprimirá en consola `Installation successful!` si todo ha salido bien.