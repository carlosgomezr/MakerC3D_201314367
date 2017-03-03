# MakerC3D
Repositorio base para las hojas de trabajo del curso de Organización de Lenguajes y Compiladores 2 para generar código de tres direcciones.

## Requerimientos
El entorno de desarrollo en el que fue realizado este proyecto está compuesto por los siguientes elementos.
* NetBeans 8.1
* JDK 1.8.0_121
* JFlex 1.6.1
* CUP 11a
* git 2.7.4

**Nota:** _Para quienes sean nuevos en git (sistema de control de versiones) les dejamos [esta guía](filimx.github.io/git/)_

## ¿Cómo usar este proyecto?
El proyecto cuenta con dos archivos ejecutables (dos archivos con extensión .java con un método main cada uno), el formulario `Inicio.java` es la aplicación como tal que incluye interfaz gráfica y el proceso de parsear una cadena de entrada; El otro archivo ejecutable es `GeneradorDeCompiladores.java` que, como su nombre lo indica, es la clase encargada de analizar los archivos `lexico.flex` y `sintactico.cup` para generar las clases que componen el parser que estamos diseñando (para correr este archivo basta con colocar el cursor sobre él y presionar Shift + F6.

## Hoja de trabajo No. 2
Esta hoja de trabajo consiste en:

1. Clonar/descargar el proyecto y hacerlo funcionar en el ambiente local
2. Agregar sobre el archivo `lexico.flex` los tokens y acciones necesarias para reconocer:
	* Operadores relacionales
		* == igual
		* != diferente
		* > mayor que
		* < menor que
		* >= mayor o igual que
		* <= menor o igual que
	* Operadores lógicos
		* && and (conector lógico y)
		* || or (conector lógico o)
		* ! not (negación lógica)
3. Agregar sobre el archivo `sintactico.cup` las acciones necesarias para genera el código de tres direcciones para todas las nuevas operaciones (aritméticas, relacionales y lógicas) asumiendo que todos los operadores pueden ser utilizados como operadores binarios en una asignación.

**Nota:** _La precedencia y asociatividad son las que se utilizan habitualmente para estas operaciones_

### Ejemplo
Cadena de entrada: `5 + a * b < a + 1 && b > 5`

Código tres direcciones resultante:
```c
t$0 = a * b;
t$1 = 5 + t$0;
t$2 = a + 1;
t$3 = t$1 < t$2;
t$4 = b > 5;
t$5 = t$3 && t$4;
//Último valor: t$5
```
### Fecha y formato de entrega
Para entregar esta y las próximas hojas de trabajo el estudiante debe contar con:
* Cuenta personal en [GitHub](https://github.com)
* Un repositorio con nombre: **MakerC3D_\<carnet>** como por ejemplo **MakerC3D\_200915291**
* __Mucho ojo__ para entregar una hoja de trabajo, se debe realizar un commit con el siguiente mensaje:
```
Hoja de trabajo No. 2
Nombre: Fulano de Tal
Carnet: 201711223
```
**La Hoja de Trabajo No. 2 se entregará el día: jueves 2 de marzo antes de las 23:59 horas (para los estudiantes del laboratorio del día MIÉRCOLES), ese mismo día se estará publicando un formulario en donde el estudiante tendrá que ingresar su número de carnet y el link de su repositorio.**

**A los estudiantes del laboratorio del día sábado se les estará informando de la nueva dinámica de las hojas de trabajo y las fechas que aplican a su laboratorio el día 4 de marzo en su horario de laboratorio**