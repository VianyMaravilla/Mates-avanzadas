# Ambiente Anaconda

## ¿Qué es Anaconda?

Anaconda es una **distribución de los lenguajes de programación Python y R para computación científica** (ciencia de datos, aplicaciones de Machine Learning, procesamiento de datos a gran escala, análisis predictivo, etc.).

Tiene como ventaja **simplificar la gestión e implementación de paquetes**. La distribución incluye paquetes de “data science” adecuados para Windows, Linux y macOS. 

**Conda es tanto un administrador de paquetes como un administrador de entorno**. Esto ayuda a los usuarios a asegurarse de que cada versión de cada paquete tenga todas las dependencias que requiere y funcione correctamente.

### ¿Porqué usar un ambiente en Anaconda?

#### Organización

Es conveniente tener controladas las librerías y las versiones con las que estamos trabajando para que no existan problemas de incompatibilidades, y para ello, es mejor organizar todo en entornos virtuales, así, no tendremos nuestra instalación de Python con multitud de librerías instaladas.

#### Estabilidad

Es un hecho que las librerías que usamos cambian de versión muy a menudo, esto puede ocasionar que si queremos llevarnos nuestros programas a otra máquina nos encontremos con versiones de librerías que han cambiado y hacen que nuestros programas ya no funcionen.

#### Varias versiones de Python

Existen muchas aplicaciones en la versión 2.7 de Python y algunas no cuentan con soporte para Python 3. También podemos encontrarnos que tenemos que trabajar con un servidor cuya versión de Python no es la misma que la que tenemos instalada en nuestro ordenador. Creando distintos entornos virtuales podremos cambiar de versión de Python en dos líneas de código.

## ¿Cómo creas ambiente?

`conda create -n nombreenv python=x.x`

y para **activar el ambiente**

`source activate nombreenv`

información

`conda info`

instalar paquetes

`conda install nombrepaquete`

## ¿Cómo sales de él?

`conda deactivate`

## ¿Cómo eliminas el ambiente?

`conda remove --name pandas_tuto --all`