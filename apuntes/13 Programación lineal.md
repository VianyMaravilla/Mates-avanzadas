# Programación lineal

En 1949 George B. Danterg publicó el método simplex para resolver programas lineales, como de sus investigaciones en transporte óptimo.

El método simplex de programación lineal posee una amplia aceptación debido a 2 razones principalmente.

Su habilidad  para **modelar** problemas complejos (núcleos variables)

Su capacidad para **producir** soluciones en una cantidad de tiempo razonable.

En esta parte de nuestro curso introduciremos el concepto de "Problema de programación lineal"

## Asumpciones y ejemplos

### Definición

> Un problema de programación lineal es un problema de minimización o maximización de una función lineal con restricciones (ecuaciones e inecuaciones lneales), es decir
>
> minimizar/maximizar $\qquad ax_1+ax_2+\cdots+a_nx_n$
>
> Sujeto a 
> $$
> \begin{gather*}
> ax_1+ax_2+\cdots+a_nx_n \ge b_1\\
> 
> ax_1+ax_2+\cdots+a_nx_n \ge b_2\\
> \vdots\\
> 
> a_{m1}x_1+a_{m1}x_2+\cdots+a_{mn}x_n \ge b_m \\
> NN \qquad x_1, x_2,\cdots,x_n\ge0
> \end{gather*}
> $$
>
> #### Notación
>
> $$
> Z = 
> \begin{bmatrix}
>     c_1 \\
>     c_2 \\
>     \vdots \\
>     c_n
> \end{bmatrix}, 
> \quad X = 
> \begin{bmatrix}
>     x_1 \\
>     x_2 \\
>     \vdots \\
>     x_n
> \end{bmatrix}, \rightarrow \text{Variabes de desición}
> $$
>
> $$
> \therefore Z^tX = c_1x_1+c_2x_2+\cdots+c_nx_n \rightarrow \text(Coeficientes de costo)
> $$
>
> 
> $$
> \begin{gather*}
> \sum_{j=1}^n a_{ij}x_1 \ge b_i \quad \rightarrow \quad \text{iésima restricción}\\
> a_{ij} \quad i = 1,2,\cdots,m \qquad j=1,2,\cdots,n\\
> A = \left(a_{ij}\right)^{nk} \quad \rightarrow \quad \text{Matriz de restricción}\\
> 
> \text{sujeto a }\quad A\mathbb x \ge\mathbb b \quad (\iff(A_x)_i \ge b_i)\\
> \qquad \mathbb x \ge 0 \quad (\iff x_i \ge 0)
> \end{gather*}
> $$

### Definición

> Un conjunto de variables $x_1, x_2, \cdots, x_n$ que satisface las restricciones $1,2,\cdots,m$ así como la restricción $NN$ se llama parte factible o vector factible.

El conjunto de todos los puntos anteriores se denomina región.

#### Ejemplo: 

Minimizar $2x_1+5x_2$, sujeto a $x_1+x_2\ge 6 \qquad -x_1-2x_2 \ge -18 \qquad x_1,x_2 \ge 0$.

Con el fin de representar un problema de optimización como uno de programación lineal debemos asumir algunas cosas que están implícitas en la formulación previamente discutidas.

### 1) Proporcionalidad

Dada una variable $x_j$, su contribución con el costo, $C_jx_j$ y su contribución a la $iésima$ restrición es $a_{ij}x_j$.

Esto significa que la variación $x_j$ es proporcional a la variación de contribución al costo y a la variación .
$$
x_j r (jx_j\cap a_ij)x_j
$$

### 2) Aditividad

Esta asumpción garantiza que el costo total es la suma de los costos individuales y que la contribución total a la $iésima$ restricción es la suma de las contribuciones individuales.

### 3) Divisibilidad

Las variables de decisión pueden ser divididas en niveles continuos.

## Manipulación algebraica

El uso de operaciones algebraicas son muy útiles para llevar un problema de una forma a otra y así poder estudiarlos a detalle. Veamos algunos ejemplos que podemos considerar.

### Desigualdades y ecuaciones

Una desigualdad puede ser fácilmente transformada en una ecuación. Para ilustrarlo consideremos la notación.
$$
\sum_{j=1}^na_{ij}x_j \ge b_i\qquad (1)
$$
Esta restricción puede ser transformada en una ecuación de 
$$
x_{n+1}=\sum_{j=1}^n a_{ij}x_j-b_i\ge0
$$
Luego $(1)$ es equivalente a:
$$
\sum_{i=1}^n a_{ij}x_j-x_{n+1}=b_i
$$
similarmente la restricción
$$
\sum_{i=1}^n a_{ij}x_j+x_{n+1}=b_i \text{con}\\
x_{n+1}= b_i - \sum_{i=1}^n a_{ij}x_j
$$

### No negatividad de las variables

En los problemas prácticos las variables usualmente representan cantidades físicas y por lo tanto deben ser no negativos. Si una variable $x_j$ no tiene restricciones entonces esta puede ser reemplazada por $x_j = x_j.x_j''$.

donde $x_j', x_j''\ge 0$ y por definición
$$
x_j' = \left\lbrace
\begin{array}{ll}
x_j \qquad x_j \ge 0\\
0 \qquad x_j \le 0 
\end{array}
\right. \\\\
x_j'' = \left\lbrace
\begin{array}{ll}
-x_j \qquad -x_j \ge 0\\
0 \qquad -x_j \le 0 
\end{array}
\right. \\
$$
Si la restricción del tipo
$$
x_j \ge l_j
$$
entonces:
$$
\begin{eqnarray*}
x_j'&=& x_j-l_j \ge 0\\
&si& x_j\le u_j
\end{eqnarray*}
$$
donde $u_j\ge 0$ entonces
$$
x_j=u_j-x_j
$$
Num 2x, sujeto a $Ax\ge b$
$$
NN \qquad x_1.x_2,\cdots,x_j \ge 0 
$$

### Problemas de minimización y maximización

$$
\text{máximo} \sum_{j=1}^n c_jx_j = -\text{mínimo} \sum_{j=1}^n -c_jx_j\\
(c_1, c_2, \cdots, c_n) = z
$$

|                | Problema de Minimización                                     | Problema de Maximización                                     |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Forma Estándar | $\text{sujeto a j} \\ \sum_{j=1}^n a_jx_j=b_i\\ x_j \ge 0\\ (i,j) \in \mathbb N⁺$ | $\text{sujeto a j} \\ \sum_{j=1}^n a_jx_j=b_i\\ x_j \ge 0\\ (i,j) \in \mathbb N⁺$ |
| Forma Canónica | $\text{sujeto a j} \\ \sum_{j=1}^n a_jx_j\ge b_i\\ x_j \ge 0\\ (i,j) \in \mathbb N⁺$ | $\text{sujeto a j} \\ \sum_{j=1}^n a_jx_j\le b_i\\ x_j \ge 0\\(i,j) \in \mathbb N⁺$ |

#### Ejemplo 1

Un molino agricultor manufactura comida para que esto se hace mezclando varios ingredientes, tales como el maíz, cal, alfalfa. El mezclado se lleva a cabo de tal forma que el alimento alcance niveles dados para diferentes tipos de nutrientes como, proteínas, carbohidratos y vitamínas.

De manera más concreta, supongamos $n$ ingredientes $j = 1,2,\cdots,n$ y $m$ nutrientes. Sea el costo unitario por ingrediente $j$, el valor $c_j$ y sea la cantidad $x_j$ de ingrediente $j$ para  ser usado. Por tanto el costo total es:
$$
\sum_{j = 1}^n c_jx_j
$$
Si la cantidad de producto final es $b$, entonces debemos tener:
$$
\sum_{j=1}^n x_j= b
$$
Además suponga que $a_{ij}$ es la cantidad de nutrientes $i$ presente en el ingrediente $j-ésimo$ y que los límites superior e inferior del nutriente $i$ en una unidad de comida son $l_i'$ y $u_i'$ respecticamente
$$
l_i'b\le \sum_{j = 1}^n a_{ij}x_j \le a_i'b
$$
 Finalmente, debido a la escazes, supongamos que el molino no puede adquirir más de $u_j$ unidades del ingrediente $j$.


$$
\begin{gather*}
\text{minimizar} \sum_{j=1}^n c_jx_j\\
\text{con restricciones:}\\
l_i'b\le \sum_{j = 1}^n a_{ij}x_j \le a_i'b\\
0\le x_j \le u_j \qquad (i,j)\in \mathbb N⁺\\
x_1+x_2+\cdots+x_n=b
\end{gather*}
$$
Acortando
$$
\text{minimizar } cx\\
\text{sujeto a } ba \ge A_x \ge bl\\
u-x\ge0\\
xl = b
$$

#### Ejemplo 2: El problema del transporte

Cantidades $a_1, a_2, \cdots, a_m$ respectivamente de un cierto producto que serán enviadas de cada uno de $m$ puertos y se recibirán en $n$ destinos con la distribución $b_1,b_2,\cdots, b_n$ . Digamos que una compañía de café produce café en $m$ plantas. El cafe es mandado todas las semanas a $n$ tiendas para su distribución. Supongamos que el costo por kilogramo de café al cual la planta $i-ésima$ vende a la tienda $j-ésima$ es $c_{ij}$. Además suponga que la capacidad de producción de la planta $i-ésima$ es simplemente $a_i$ y la demanda de la tienda $j-ésima$ es $b_j$. 

Se desea encontrar la distribución de producción $(x_{ij})_{ij}^{mn}$ que minimiza el costo de envío .
$$
\begin{gather*}
\text{Minimizar} \sum_{i=1}^m \sum_{j=1}^n c_{ij}x_{ij}\\
\text{sujeto a } \sum_{j=1}^n x_{ij} \le a_i, \qquad j = 1,2,\cdots,n\\
\sum_{i=1}^m x_{ij} = b_j \qquad i = 1,2,\cdots,m\\
x_{ij}\ge0
\end{gather*}
$$

### Definición

> Un conjunto $S \subset \mathbb R^n$, se dice convexo si $\forall x,y\in S$.
> $$
> \lambda_x + (1-\lambda)y\in S, \forall \lambda\in[0,1]
> $$

#### Ejemplo

Los siguientes conjuntos son ejemplos de conjuntos convexos

- **a)** $\{(x_1,x_2) | x_1²+x_2² \in 1\}$
- **b)** $\{x | Ax = b\}$ donde $A$ es una muestra de dimensión $m\times n$ y $b$ un vector de dimensión $m$
- **c)** $\{x | Ax = b, x \ge 0 \}$, donde A es una matriz de dimensión $m\times n$ y $b$ es un vector de dimensión $m$.

$$
\mathbb X_1, \mathbb X_2 \quad [\lambda \mathbb x_1 + (1-\lambda) \mathbb x_2]
$$

**Nota:**

La intersección de cualquier familia de conjuntos convexos es convexo.

### Definición

> Un punto $x$ en un conjunto convexo $X$ es llamado un punto extremo de $X$, si $x$ no puede ser representado como una combinación lineal convexa estricta de puntos distintos de $x$.

### Hiperplano y Semiplano

Un hierplano en $\mathbb R^n(E^n)$ generaliza la noción de línea en $\mathbb R²$ y la noción de un plano en $\mathbb R³$ . Un hiperplano $H$ en $\mathbb R^n$ es un conjunto de $h$ convexo.
$$
H=\{x|px = k\}
$$
Si $x_0 \in H$, entonces $Px_0=k$, y todo $x\in H$ cumple que $px=k \quad \therefore$
$$
P(x-x_0)= 0
$$
 Luego $H = \{x | P(x-x_0 = 0, x_0 \in H)\}$

**Nota:** Cualquier biplano es un conjunto convexo y donde a $\mathit E^n$ en 2 regiones llamadas semiplanos, a sobre,
$$
\{x | P(x-x_0 \ge 0, x_0 \} = \{x| px \ge k\}\\
\{x | P(x-x_0 \le 0, x_0 \} = \{x| px \le k\}
$$
 Otro ejemplo de conjunto convexo es un rayo
$$
\{x_0 + \lambda d | \lambda \ge 0\}
$$
Dado un conjunto convexo, un vector no cero es llamado dirección del conjunto si para cada $x_0$, el rayo $\{x_o + \lambda d | x \ge 0\}$
$$
X=\{x | Ax = b, x\ge 0\}
$$


Se tiene que $d$ es dirección de $x$ si y sólo si, las componentes
$$
d\ge0,\qquad d\not=0, \qquad Ad=0
$$
Y que dicho conjunto de direcciones es también convexo. *Nota: la demostración de este hecho se encuentra definida en nuestro libro de texto.*

Una dirección extrema  de un conjunto convexo es una dirección del conjunto que no puede ser expresada como combinación lineal positiva de 2 direcciones del conjunto.

