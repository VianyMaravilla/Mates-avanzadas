# Método Simplex en formato de Tabla

Utilizando notación previamente descrita, supongamos que iniciamos con una solución básica factible $x$ con base $B$. El programa lineal puede ser representado como sigue:

| minimizar | $z$                                                       |
| --------- | --------------------------------------------------------- |
| Sujeto a: | $$z-c_Bx_b-c_Nx_N = 0 \iff a)\\ Bx_B + Nx_N = b \iff b)$$ |

$$
\begin{eqnarray}
a) &\iff& z =c_Bx_B-c_Nx_N = (c_B, c_N)^T \begin{pmatrix}x_B\\x_N\end{pmatrix}\\
b) &\iff& [B | N] \begin{bmatrix}x_B\\x_N\end{bmatrix} = b
\end{eqnarray}
$$

De \* \*. obtenemos (multiplicando \*\* por $B^{-1}$)
$$
x_B+B^{-1}Nx_N= B^{-1}b \quad(***)
$$
Multiplicando *** por $c_B$ y sumando *
$$
z-c_Nx_N+c_BB^{-1}Nx_N= c_BB^{-1}b\\
z+0x_B+(c_BB^{-1}N-c_N)x_N = c_BB^{-1}b\\
\qquad z_k-c_k
$$
Considere la siguiente tabla

|       | $z$           | $x_B$         | $x_N$                      | $RHS$        |
| ----- | ------------- | ------------- | -------------------------- | ------------ |
| $z$   | 1             | $\varnothing$ | $c_BB^{-1}N-c_N \quad (1)$ | $c_BB^{-1}b$ |
| $x_B$ | $\varnothing$ | $I$           | $B^{-1}N$                  | $B^{-1}b$    |

**Nota:**
$$
B^{-1}N = [Y_1, Y_2, \cdots, Y_{n-m}]
\\
(1) \qquad z_1-c_1, \cdots, z_k-c_k, \cdots, z_{n-m}-c_{n-m}
$$


Deseamos obtener un esquema que realice las siguientes tareas:

1. Actualizar las variables básicas
2. Actualizar los valores $z_j-c_j$
3. Actualizar las columnas $Y_j$

## Pivoteo

Todas las tareas anteriores pueden ser realizadas simultáneamente, mediante la siguiente operación:

Si $x_k$ entra a la base y $X_{B_r}$ abandona la base entonces el pivoteo sobre $Y_{rk}$

1. Divida la fila $r-ésima$ por $Y_{rk}$
2. Para $i = 1,2,\cdots,m, \quad i \ne r$ actualice la $i-ésima$ fila sumándole a esta $-Y_{ik}$ veces la nueva $r-ésima$ fila
3. Actualice ls fila *cero* añadiendo a esta $c_k-z_k$ veces la nueva $r-ésima$ fila 

$$
\begin{matrix}
1 & 0 & \cdots & 0 & \cdots & 0\\
0 & 1 & \cdots & 0 & \cdots & 0\\
\vdots & \vdots &  & \vdots & & \vdots\\
0 & 0 & \cdots & 1 & \cdots & 0\\
\vdots & \vdots &  & \vdots & & \vdots\\
0 & 0 & \cdots & 0 & \cdots & 1\\
\end{matrix}
\qquad
\begin{matrix}
\cdots & z_j-c_j & \cdots & z_k-c_k & \cdots & c_B\bar{b}\\
\cdots & -Y_{ij} & \cdots & Y_{ik} & \cdots & \bar{b_1}\\
\vdots & \vdots &  & \vdots & & \vdots\\
\cdots & -Y_{rj} & \cdots & -Y_{rj} & \cdots & \bar{b_r}\\
\vdots & \vdots &  & \vdots & & \vdots\\
\cdots & -Y_{mj} & \cdots & -Y_{mk} & \cdots & \bar{b_m}\\
\end{matrix}
$$



## Algoritmo del método Simplex en formato de tabla

**Inicialización**: Encuentre una solución básica factible con base B. Conforme la siguiente tabla inicial

| 1             | $\varnothing$ | $c_BB^{-1}N-c_N$ | $c_B\bar{b}$ |
| ------------- | ------------- | ---------------- | ------------ |
| $\varnothing$ | $I$           | $B^{-1}N$        | $\bar{b}$    |

**Paso principal**

Sea $z_c-z_k=\text{Máximo}\{z_j-c_j | j \in R\}$ Si $z_k-c_k\le0$ para la solución es óptima. De otra forma examine $Y_k$, si $Y_k\le0$, para, la solución óptima es no acotado sobre el rango:
$$
\begin{bmatrix}B^{-1}b\\ \varnothing \end{bmatrix} + x_k \begin{bmatrix}-Y_k\\ c_k \end{bmatrix} | x_k\ge0
$$
 donde $c_k$ es un vector de ceros, a escepción de la posición $k-ésima$, la cual es $1$. Si $Y_k \ge 0 $
$$
x_k = \frac{br}{Y_{rk}} = \min_{1 \le i \le m}
$$


Y las no básicas, y repita el paso principal.

Actualice la tabla pivoteando por $Y_k$ . Actualice las variables no básicas.

## Ejemplo 3.9

| Minimizar | $x_1+x_2-4x_3$                                               |
| --------- | ------------------------------------------------------------ |
| Sujeto a  | $x_1+x_2+2x_3 \le 9 \\x_1+x_2-x_3\le 2\\ -x_1+x_2+x_3 \le 4\\ x_1, x_2, x_3 \ge 0$ |

Introducimos las variables de holgura:
$$
\begin{eqnarray}
x_1+x_2+2x_3 +x_4+0+0 &\le& 9 \\
x_1+x_2-x_3+0+x_5+0 &\le& 2\\
-x_1+x_2+x_3+0+0+x_6 &\le& 4
\\ x_1, x_2, x_3, x_4, x_5, x_6 &\ge& 0
\end{eqnarray}
$$
Tenemos las base
$$
B= 
\begin{bmatrix}
1&0&0\\
0&1&0\\
0&0&1
\end{bmatrix} = I \qquad \quad \bar{b} = B^{-1}b\ge0
$$
Debemos de llegar a lo siguiente:
$$
\begin{bmatrix}
1 & 0 & c_BB^{-1}N-c_N & c_B\bar{b}\\
0 & I & B^{-1}N & \bar{b}
\end{bmatrix}
$$
Por lo que tenemos que:
$$
c=
\begin{pmatrix}\begin{pmatrix}1\\1\\4 \end{pmatrix} =c_N\\
\begin{pmatrix}0\\0\\0\end{pmatrix} = c_B\end{pmatrix}
\qquad
b = \begin{pmatrix}9\\2\\4\end{pmatrix}
\qquad
A = 
\begin{bmatrix}
1&1&2&&1&0&0\\
1&1&-1&&0&1&0\\
1&1&1&&0&0&1
\end{bmatrix} \sim N|B
$$
Con esto podemos hacer nuestra tabla:


$$
\begin{bmatrix}
1 && 0&0&0&& -1&-1&4 && 0\\
0 && 1&0&0&& 1&1&2 && 9\\
0 && 0&1&0&& 1&1&-1 && 2\\
0 && 0&0&1&& -1&1&1\circ && 4\\
\end{bmatrix}
$$
El pivoteo se aplica por la entrada $\circ$, sin embargo al dividir por la entrada, al ser 1 queda igual. mientras que las demás filas  tomamos la fila $r$ y divdimos cada una de sus entradas por el pivote. Después realizamos las operaciones
$$
F_1 \iff F_1-Y_{1k}F_r\\
F_2 \iff F_2-Y_{2k}F_r
$$

$$
\begin{bmatrix}
1 && 0&0&0&& -1&-1&4 && 0\\
0 && 1&0&-2&& 3&-1&0 && 1\\
0 && 0&1&1&& 0&2&0 && 6\\
0 && 0&0&1&& -1&1&1 && 4\\
\end{bmatrix}
$$

Por último actualizamos el renglón sumándoles $c_k-z_k$ veces el renglón $r$.
$$
F_0 \rightarrow F_0 -4F_r\\
\begin{bmatrix}
1 && 0&0&-4&& 3&-5&0 && -16\\
0 && 1&0&-2&& 3&-1&0 && 1\\
0 && 0&1&1&& 0&2&0 && 6\\
0 && 0&0&1&& -1&1&1 && 4\\
\end{bmatrix}
$$
Por lo que nuestro conjunto de variables básicas está dado por $V_B= \{x_4, x_5, x_3\}$.

Repetimos el mismo procedimiento:
$$
\begin{bmatrix}
1 & -1 & 0 & -2 & 0 & -4 & 0 & -17 \\
0 & 1/3 & 0 & 2/3 & 1 & -1/3 & 0 & 1/3\\
0 & 0 & 1 & 1 & 0 & 2 & 0 & 6\\
0 & 1/3 & 0 & 1/3 & 0 & 2/3 & 1 & 13/3
\end{bmatrix}
$$
Ahora el conjunto de las variables no básicas es $V_B = \{x_2,x_4, x_6 \}$ Por lo que la solución queda de la forma: 
$$
x = \begin{pmatrix}
1/3 \\ 0 \\ 13/3 \\ 0 \\ 6 \\ 0
\end{pmatrix}
$$
