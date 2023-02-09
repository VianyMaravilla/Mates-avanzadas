# El Algoritmo Simplex

## Inicialización

Escoja una solución básica factile inicial con base $B$.

## Paso Principal

1. Resuelve el sistema $Bx_B=b$ (con solución única $x_B = B^{-1}b = \bar{b}$)

   Defina $x_B=\bar{b}, \quad x_N = 0$ y $z = c_Bx_B$

2. Resuelva el sistema $wB=c_B$ (con solución única $w=c_BB^{-1}$). Calcule $z_j-c_j=wa_j-c_j \quad \forall j$ no básica.

   Sea $z_k-c_k=\text{maximo}_{j\in R} \quad z_j-c_j$

   donde $R$ es el conjunto de índices no básicas actuales.

   Si $z_n-c_k = 0$, para la solución básica factible es óptima. En otro caso haga el paso 3.

3. Resuelva el sistema $BY_k=a_k$ (con solución única $Y_k= B^{-1}a_k$). Si $Y_k\le0$, entonces para la solución óptima es no acotada sobre el rango.
   $$
   \left\lbrace\begin{bmatrix}5\\0\end{bmatrix}+x_4\begin{bmatrix}-Y_k\\c_k\end{bmatrix}: x_k \ge0\right\rbrace
   $$
   donde $c_k$ es un vector de dimensión $n-m$ de  puros ceros a excepción de la $k-ésima$ posición con entrada $z_k-c_k=1$. Si $Y_k\le 0$ vaya al paso 4.

4. Aquí $x_k$ entra a la base y la variable $x_{B_r}$ sale donde el índice $r$ está determinado por la siguiente ecuación:
   $$
   \frac{\bar{b_r}}{Y_{rk}} = \left\lbrace\frac{\bar{b_i}}{Y_{ik}} : Y_{ik} >0 \right\rbrace
   $$
   Actualice la bse  $B$ donde $a_k$ y $a_{B_r}$ cambio de lugar.

| Minimizar $\quad z=cx$     | $z'=(-c)x$ |
| -------------------------- | ---------- |
| Sujeto a $\quad Ax=b\\x>0$ |            |



## Teorema 4

> En la ausencia de la degeneración, el método simplex para un número finito de pasos, ya sea con una solución óptima básica o con la conclusión de que la solución es no acotada.

$$
B\rightarrow X_{SBF} \rightarrow \begin{pmatrix}x_B\\0\end{pmatrix}\rightarrow \begin{pmatrix}B^{-1}b\\0\end{pmatrix} \rightarrow (z_j-c_j)_{j \in R}
$$



### Ejemplo

| Minimizar | $-x_1-3x_3$                                     |
| --------- | ----------------------------------------------- |
| Sujeto a  | $$2x_1+3x_2\le 6\\ -x_1+x_2=1\\ x_1, x_2\ge 0$$ |

Por lo tanto tendremos que minimizar $-x_1-3x_2$ sujeto a:
$$
2x_1+3x_2+x_3+0x_4 = 6\\
-x_1+x_2+0x_3+x_4=1\\
x_1,x_2\ge 0
$$

$$
c = \begin{pmatrix}-1\\-3\\0\\0\end{pmatrix} \qquad A=\begin{bmatrix}2&3&1&0\\-1&1&0&1\end{bmatrix} \qquad b= \begin{pmatrix}6\\1\end{pmatrix}
$$

Moviendo las filas 
$$
A=\begin{bmatrix}1&0&2&3\\0&1&-1&1\end{bmatrix} \qquad c = \begin{pmatrix}0\\0\\-1\\-3\end{pmatrix} \qquad b= \begin{pmatrix}6\\1\end{pmatrix}\\
x_1 =\begin{pmatrix}x_B\\0\end{pmatrix}=\begin{pmatrix}6\\1\\0\\0\end{pmatrix}
$$

$$
\begin{eqnarray}
z_3-c_3 &=& 0-(-1) = 1\\
z_4-c_4 &=& 0-(-3) = 3\\
z_j &=& c_BB^{-1}a_3 = 0\\
z_4 &=& c_BB^{-1}a_4 = 0
\end{eqnarray}
$$

Obtenemos $k = 4$
$$
x_{B_r}, \quad Y_k\\
Y_k = B^{-1}a_k = a_n = \begin{pmatrix}3\\1\end{pmatrix}
$$

$$
\text{Mínimo} \left\lbrace\frac{b_j}{Y_{jk}} : Y_{jk} >0 \right\rbrace = \frac{\bar{b_r}}{Y_{rk}} = x_k\\
\text{Mínimo} \left\lbrace\frac{6}{3},\frac{1}{1}\right\rbrace = 1\\
\frac{\bar{b_1}}{Y_{1k}} = \frac{\bar{b_2}}{Y_{2k}} \\
x_{B_r}= x_{B_2}, \quad x_k=x_4=1
$$

Siguiente iteración
$$
x =\begin{pmatrix}6\\0\\0\\1\end{pmatrix} \rightarrow \begin{pmatrix}6\\1\\0\\0\end{pmatrix}\\
 c = \begin{pmatrix}0\\-3\\-1\\0\end{pmatrix} \qquad A=\begin{bmatrix}1&3&2&0\\0&1&-1&1\end{bmatrix}  \qquad b= \begin{pmatrix}6\\1\end{pmatrix}
$$

$$
x = \begin{pmatrix} 6\\1\\0\\0\end{pmatrix} \qquad B = \begin{bmatrix}1&3\\0&1\end{bmatrix} \qquad B^{-1}=\begin{bmatrix}1&-3\\0&1\end{bmatrix}
\qquad x = \begin{pmatrix} 3\\1\\0\\0\end{pmatrix} \\
R = \{3,4\}\\
z_3-c_3 = c_bB^{-1}a_3 -c_3 = (0,-3)\begin{bmatrix}1&-3\\0&1\end{bmatrix}\begin{bmatrix}2\\-1\end{bmatrix}= 4 \\
z_4-c_4 = c_bB^{-1}a_4 -c_4 =(0,-3)\begin{bmatrix}1&-3\\0&1\end{bmatrix}\begin{bmatrix}0\\
1\end{bmatrix}= -3
$$

$$
B^{-1}a_k = Y_k= Y_3 = B^{-1}a_3=\begin{bmatrix}1&-3\\0&1\end{bmatrix}\begin{bmatrix}2\\-1\end{bmatrix}=\begin{bmatrix}5\\-1\end{bmatrix}\\
x_k= \text{Mínimo} \left\lbrace\frac{3}{5}\right\rbrace = \frac{3}{5}
$$

Tercera iteración
$$
x =\begin{pmatrix}6\\1\\0\\0\end{pmatrix} \rightarrow \begin{pmatrix}0\\1\\\frac{3}{5}\\0\end{pmatrix} \rightarrow \begin{pmatrix}\frac{3}{5}\\1\\0\\0\end{pmatrix} \qquad
 c = \begin{pmatrix}-1\\-3\\0\\0\end{pmatrix} \qquad A=\begin{bmatrix}2&3&1&0\\-1&1&0&1\end{bmatrix}  \qquad b= \begin{pmatrix}6\\1\end{pmatrix}
$$
