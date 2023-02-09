# Dualidad y Sensibilidad

Para cada programa lineal podemos **definir otro programa lineal asociado**. Ese nuevo PL satisface algunas propuestas importantes, y además provee de información importante para resolver el primer PL. Distinguiremos dichos PL's como **programa primal** y el **programa dual**.

Primero formularemos (definiremos) dicho PL, luego desarrollaremos algunas de sus características más importantes, las cuales nos darán como una consecuencia el algoritmo primal dual. Finalmente, discutiremos el efecto en la variación de los datos iniciales (*la matriz $A$, el vector $c$ y el vector $b$*).

*Nota: Si el problema que tenemos no es lineal como una integral, se buscará el margen de error llamada teoría de la estabilidad.*

## Formulación del problema dual

Asociado con cada programa lineal definiremos a su programa dual, este último puede definirse en su sucesión canónica o estándar, y ambos son equivalentes.

### Forma dual canónica

Supongamos un PL en la forma
$$
P:\quad\begin{matrix}\text{mínimo}; & cx\\ \text{sujeto a;} & \begin{matrix}Ax \ge b \\  x \ge 0  \end{matrix} \end{matrix}
$$
Entonces el programa lineal dual está definido por:
$$
D:\quad\begin{matrix}\text{maximizar}; & wb\\ \text{sujeto a;} & \begin{matrix} wA \le c \\  w \ge 0 \end{matrix} \end{matrix}
$$
**Ejemplo**

| P:   | Minimizar; | $6x_1+8x_2$                                        |
| ---- | ---------- | -------------------------------------------------- |
|      | sujeto a:  | $$3x_1+x_2\ge 4\\5x_1+2x_2\ge 7\\ x_1, x_2 \ge 0$$ |

$$
b = \begin{pmatrix}4\\7\end{pmatrix}\qquad
A = \begin{bmatrix}3 & 1\\ 5 & 2\end{bmatrix}\qquad
w = (w_1, w_2)
$$

$$
D: \quad \begin{matrix}\text{maximizar;} & wb = 4w_1+7w_2\\ \text{sujeto a;} & \begin{matrix} wA\ge c\\w_1, w_2 \ge 0 \end{matrix} \iff E \end{matrix}
$$

$$
E \iff (w_1, w_2)\begin{bmatrix}3 & 1 \\ 5 & 2\end{bmatrix} \le \begin{pmatrix}6\\8\end{pmatrix} \iff\begin{matrix}3w_1+5w_2\le 6\\w_1+2w_2\le 8\\ w_1, w_2 \ge 0\end{matrix}
$$

### Forma dual estándar

Otra forma dual equivalente está dada en la forma siguiente
$$
P:\quad\begin{matrix}\text{mínimo}; & cx\\ \text{sujeto a;} & \begin{matrix}Ax = b \\  x \ge 0 \end{matrix} \end{matrix}
$$
Entonces el programa lineal dual está definido por:
$$
D:\quad\begin{matrix}\text{maximizar}; & wb\\ \text{sujeto a;} & \begin{matrix} wA \le c \\  w \quad \text{sin restricciones} \end{matrix} \end{matrix}
$$
**Ejemplo:**

| P:   | Minimizar; | $6x_1+8x_2+0x_3 +0x_4$                                       |
| ---- | ---------- | ------------------------------------------------------------ |
|      | sujeto a:  | $$3x_1+x_2-x_3= 4\\5x_1+2x_2-x_4 = 7\\ x_1, x_2, x_3, x_4 \ge 0$$ |

$$
b = \begin{pmatrix}4\\7\end{pmatrix}\qquad
c = \begin{pmatrix}6\\8\\0\\0 \end{pmatrix} \quad
A = \begin{bmatrix}3 & 1 &-1 & 0\\ 5 & 2 & 0 & -1\end{bmatrix}\qquad
w = (w_1, w_2)
$$

$$
D: \quad \begin{matrix}\text{maximizar;} & wb = 4w_1+7w_2\\ \text{sujeto a;} & wA\le c \iff E \end{matrix}
$$

$$
E \iff (w_1, w_2)\begin{bmatrix}3 & 1 &-1 & 0\\ 5 & 2 & 0 & -1\end{bmatrix} \le\begin{pmatrix}6\\8\\0\\0 \end{pmatrix} \iff\begin{matrix}3w_1+5w_2\le 6\\w_1+2w_2\le 8\\ -w_1, -w_2 \ge 0\end{matrix}
$$

**Nota:** Los problemas PC y PE son equivalentes y análogamente se tiene que los problemas duales de un mismo problema primal son equivalentes.
$$
\begin{matrix}
PC & \iff & PE\\
\downarrow & & \downarrow\\
DPC & \iff & DPE
\end{matrix}
$$
No importa si se trabaja con la forma canónica o estándar, ya que las soluciones son las *equivalentes*, de manera similar ocurre con sus respectivos problemas duales.

## Dual del dual

Puesto que el programa lineal dual de un programa lineal es a su vez un programa lineal, podemos preguntarnos a cerca del dual de este.

Consideramos el problema dual en forma canónica:
$$
\begin{matrix}\text{maximizar}; & wb\\ \text{sujeto a;} & \begin{matrix}wA \le c  \\  w \ge 0 \end{matrix} \end{matrix}
$$
Reescribimos
$$
\begin{matrix}\text{minimizar}; & (-b^t)w^t\\ \text{sujeto a;} & \begin{matrix}(-A^t)w^t \ge (-c)^t  \\  w^c \ge 0 \end{matrix} \end{matrix}
$$
Luego calculamos el dual:
$$
\begin{matrix}\text{maximizar}; & y^t(-c^t)\\ \text{sujeto a;} & \begin{matrix}y^t(-A^t) \le (-b)^t  \\  y^t \ge 0 \end{matrix} \end{matrix}
$$
Entonces:
$$
\begin{matrix}\text{mínimo}; & cy\\ \text{sujeto a;} & \begin{matrix} Ay \ge b \\  y \ge 0 \end{matrix} \end{matrix}
$$
El cual es nuestro programa inicial, por lo que el dual del dual es el original primal.

### Lema 1

> El problema dual del dual es el primal.

## Relación primal dual

Consideramos la forma canónica dual y sean $x_0 \text{ y } w_0$ dos soluciones básicas factibles a los programas dual y primal respectivamente. Entonces $Ax_0 \ge b$, $x_0\ge 0$, $w_0A \le c$ y $w_0  \ge 0$. 

Multiplicando $Ax_0 \ge b$
$$
\begin{eqnarray}
w_0Ax_0 &=& w_0b \Longrightarrow cx_0 \ge w_0Ax_0 \ge w_0b\\
w_0Ax_0 &\ge& cx_0
\end{eqnarray}
$$


### Lema 2

> La función objetivo del problema primal evaluada en cualquier solución factible es mayor a la función objetivo del problema dual evaluada en cualquier solución factible.
> $$
> cx_0 \ge w_0Ax_0\ge w_0b
> $$

### Colorario 1

> Si $x_0 \text{ y } w_0$ son soluciones factibles del problema primal y el problema dual respectivamente tales que
> $$
> cx_0 = w_0b
> $$
> entoncecs $x_0 \text{ y } w_0$ sean soluciones de sus respectivos problemas
> $$
> \begin{matrix}
> cx_0 \ge w_0Ax_0\ge w_0b\\
> \min \qquad \qquad \max
> \end{matrix}
> $$

### Colorario 2

> Si, alguno de los problemas posee solución **no acotada**, entonces el otro posee región factible **vacía**. 

Sin embargo, existen casos dado uno de los problemas posee región factible vacía y el otro problema no posee solución no acotada.

## Dualidad y las condiciones de optimalidad de Kohn-Tucker

Se puede demostrar (Capítulo 5) que para que un programa lineal, condiciones necesarias y suficientes para que $x*$ sea solución óptima son las siguientes:

1) $Ax*\ge b; \quad x*\ge 0$
2) $w*A\le c\quad, w*\ge 0$
3) $w*(Ax*-b)=0, \quad (c-x*A)x*=0$

### Lema 3

> Si uno de los problemas posee una solución óptima. entonces, ambos problemas poseen solución óptima y las evaluaciones de dichas soluciones óptimas en sus respectivas funciones objetivo coinciden.
> $$
> \begin{matrix}
> Primal & , & Dual\\
> x_0 & \iff & w_0
> \end{matrix}
> $$
>
> $$
> \bar{w}b \le cx_0 = w_0b
> $$

### Teorema 1

> Considerando un programa lineal (primal) y su problema dual, exactamente uno de los siguientes casos se cumple. 
>
> 1. Ambos programas poseen soluciones óptimas $x*$ y $w*$ con $cx*=w*b$
> 2. Uno de los problemas posee solución no acotada, en cuyo caso el otro programa posee región factible vacía
> 3. Ambos problemas poseen región factible vacía 

En el caso **1)** 
$$
w^*(Ax^*-b)= 0, \quad Ax^*-b\ge 0\\
\Longrightarrow w_1^*(a^ix^*-b_i)=0 ,\quad i= 1, \cdots, m\\
\sum_{i=1}^m w_1^*(a^ix^*-b_i)=0
$$
Análogamente
$$
(c_j-x^*a_j)x_j^*=0, \quad j = 1, \cdots, n
$$

### Teorema 2

> Si $x*$ y $w*$ son cualesquiera puntos óptimos del problema primal y el problema dual en la forma canónica, entonces 
> $$
> (c_j-w^*a_j)x_j^*=0,\qquad j = 1, \cdots, n\\\text{y}\\
> w_j^*(a^ix^*-b_i)=0, \qquad i = 1, 2, \cdots, m
> $$

En particular
$$
\begin{eqnarray}
x_j^*> 0 &\Longrightarrow& w^*a_j = c_j \qquad \text{del primal al dual}\\
c_j> w^*a_j &\Longrightarrow& x_j^*=0 \qquad \text{del dual al primal}\\
w_i^*>0 &\Longrightarrow& a^ix^*=b_i \qquad \text{del dual al primal}\\
a^ix^*> b_i &\Longrightarrow& w_i^*=0 \qquad \text{del primal al dual}
\end{eqnarray}
$$

## El problema Dual auxiliar para solucionar el problema primal

Veamos primero un ejemplo que ilustra las ideas principales que se utilizan para utilizar el problema Dual como apoyo 

| Minimizar; | $2x_1+3x_2+5x_3 +2x_4+3x_5$                                  |
| ---------- | ------------------------------------------------------------ |
| sujeto a:  | $$x_1+x_2+2x_3+x_4+3x_5\ge 4\\2x_1-2x_2+3x_3+x_4+x_5 \ge 3\\ x_1, x_2, x_3, x_4, x_5 \ge 0$$ |

| D:   | Minimizar; | $4w_1+3w_2$                                                  |
| ---- | ---------- | ------------------------------------------------------------ |
|      | sujeto a:  | $$w_1+2w_2\le2 \\w_1-2w_2\le 3\\ 2w_1+3w_2\le 5\\ w_1+w_2\le 2\\3w_1+w_2\le 3\\ w_1, w_2 \ge 0$$ |

$$
w^*=\left(\frac{4}{5}, \frac{3}{5}\right)\qquad \frac{16}{5}+\frac{9}{5}=5=z^*\\
x_j^*>0\qquad w^*a_j=c_j\\
w^*a_j< c_j \Longrightarrow \quad x_j^*=0, w_i^*>0 \Longrightarrow a^ix^* = b_i\\
w^*a_j-c_j<
$$



El problema Dual puede ser resuelto de manera inmediata encontrando gráficamente los puntos extremos.

1. El problema del transporte y de asignación (353-382)
2. El problema de flujo de redes mínimo (404-426)
3. Flujo máximo, el camino más corto y problema de flujo de multiactivos (474-492, 307)

## El método simplex dual

En esta sección describimos el método simplex dual, el cual resuelve el problema dual directamente utilizando la tabla del método simplex. En cada iteración nos movemos de  una solución básica factible del problema dual y una solución mejorada del problema dual hasta que la optimilidad del problema (y del problema primal también) o concluir que la solución del problema dual no es acotada por lo tanto la región factible del problema primal vacía.
$$
\begin{matrix}\text{maximizar}; & cx\\ \text{sujeto a;} & \begin{matrix}Ax \ge b  \\  x \ge 0 \end{matrix} \end{matrix}
$$
Sea $B$ una base que no es necesariamente factible y considere la siguiente tabla

![image-20221024100026392](/home/ivn/snap/typora/76/.config/Typora/typora-user-images/image-20221024100026392.png)	

Si $\bar{b_i}\ge 0 \quad \forall i= 1,2,\cdots, m$ entonces $\bar{b}=B^{-1}b\ge0$. Por lo tanto, la tabla una solución óptima si $z_j-c_j\le 0 \quad \forall j = 1,2,\cdots,n+m$ Definimos
$$
    w = c_BB^{-1} \quad \forall j=1,2,\cdots,n \text{ tenemos}\\
    z_j-c_j=c_BB^{-1}a_j-c_j=wa_j-c_j
$$
Por o tanto, $z_j-c_j \le 0 \quad \forall j=1,2,\cdots,n$ implica $wA_j-c_j\le0 \quad \forall j = 1,\cdots,n$ lo cual es calculado a $wA\le 0$. Además note que $a_{n+1}=-e_i$ y $c_{n+i}=0$ para $i =1,2,\cdots,m$
$$
\begin{eqnarray}
z_{n+i}-c_{n+i} &=& wa_{nm}-c_{n+i} \\
&=&w(-e_i)-0\\
&=& -w_i
\end{eqnarray}
$$
i además $z_{n+i}-c_{n+i}\le 0$ entonces $w_i\ge0$ y así si esto sucede para $i=1,2,\cdots, m$, entonces $w\ge 0$. Es decir, $z_j-c_j\le 0 \quad \forall j= 1,2,\cdots, n+m \Longrightarrow wA\le c$ y $w\ge0$ donde $w=c_BB^{-1}$.

En otras palabras factibilidad dual es equivalente al criterio $z_j-c_j\le \quad \forall j$.

En el óptimo $w^*=c_BB^{-1}$ con $w^*b =(c_BB^{-1})b = c_B(B^{-1}b)=c_B\bar{b}=z^*$

### Lema 4

> En el óptimo $C$ del problema primal en su forma canónica, ($z_j-c_j\le0\quad \forall _j$), $w^*=c_BB^{-1}$ es una solución de problema dual. Además
> $$
> w_i^*=-(z_{n+i}-c_{n+i}), \quad \forall i = 1,2,\cdots, m
> $$
> 

La columna $k$ está determinada por:
$$
\frac{z_k-c_k}{Y_{rk}} = \min_j\left\lbrace\ \frac{z_j-c_j}{Y_{rj}} : Y_{rj} >0 \right\rbrace\\
\bar{b} = Y_{rk}
$$
*Se escoge un $Y_{rk}$ tal que es el mínimo de los $z_k-c_k$ dividido con $Y_{rk}$ para encontrar el índice $k$. Para pivotear en ese número.*

Note que las entradas en el vector cero después de pivotear están dadas por
$$
(z_j-c_j)=(z_j-c_j)-\frac{Y_{rj}}{Y_{rk}}\\
c\quad z_k-c_k
$$
Esta parte se salta, suponiendo que cada iteración sigue siendo una solución factible y está va mejorando.

Se puede probar que

- $(z_j-c_j)\le0$
- La nueva solución tiene un mejor rendimiento del problema dual ($wb$)

