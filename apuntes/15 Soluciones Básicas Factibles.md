# Soluciones básicas factibles

En esta parte del curso abordaremos a los puntos extremos desde un punto de vista algebraico.

## Definición

> Considere el sistema $Ax=b$ y $x \ge 0$ donde $A$ es una matriz de dimensión $m\times n$ y b un vector de dimensión $m$. Supongamos que el $rango(A,b)=rango(A)=m$.

Después de reacomodar (posiblemente) las columnas de $A$, sea $A= [B,N]$ donde $B$ es una matriz de dimensión $m\times n$ invertible y $N$ es una matriz de dimensión $m\times (n-m)$ 
$$
\\
\\mA^n = nB^m nN^{n-(m)}
$$
 El punto 
$$
x =
\begin{bmatrix}
 x_B \\
 x_N \\
\end{bmatrix},\\\\
X_B = B^{-1}b \\
X_N = 0
$$
donde estrictamente una solución básica del sistema. Si $X_b \ge 0$
$$
Ax = [B,N]
\begin{bmatrix}
 x_B \\
 x_N \\
\end{bmatrix} = Bx_B + N X_N = BB^{-1}b + N0=b
$$
entonces $X_B$ es llamada la **solución básica factible**. En este caso $B$ es llamada la matriz básica y $N$ la matriz no básica. Las componentes de $X_B$ son llamadas variables básicas y las componentes de $X_N$ variables no básicas. Si $x_B \ge 0$, entonces $X$  es llamada **no degenerada**, si al menos una de las entradas de $X_B = 0$ entonces es llamada solución **degenerada**.

### Ejemplo

Considere el poliedro definido por las siguientes desigualdades:
$$
x_1+x_2\le 6\\
x_2\le 3\\
x_1,x_2\ge0
$$
Introduciendo variables de oleura:
$$
\begin{eqnarray*}
x_1+x_2+x_3 &=& 0\\
x_2+0+x_4 &=& 3\\
\end{eqnarray*}
$$

$$
X =
\begin{bmatrix}
 x_1 \\
 x_2 \\
 x_3\\
 x_4
\end{bmatrix}
\ge 0\\
Ax = b\\\\
\begin{bmatrix}
1 & 1 & 1 & 0\\
0 & 1 & 0 & 1
\end{bmatrix}x =\begin{bmatrix}6\\3\end{bmatrix}
\\
B \qquad N \qquad \qquad
\\
X = \begin{bmatrix}x_B\\X_N\end{bmatrix} = \begin{bmatrix}B\\0\end{bmatrix} = \begin{bmatrix}6\\3\\0\\0\end{bmatrix}
$$

Para una matriz de dimensión $m\times n$ arbitraria podemos considerar, a lo más $\binom{n}{m}$.

## Correspondencia entre soluciones factibles y puntos extremos

Veamos que un punto es una solución básica factible si y sólo si es un punto extremo.

Consideremos el siguiente problema lineal

| Minimizar | $cx$               |
| --------- | ------------------ |
| Sujeto a  | $$Ax=b \\ x\ge 0$$ |

Donde $A$ es una de la matriz de dimensión $m\times n$ con rango $m$. Sea $X$ un punto extremo de la región factible, veamos que $x$ es solución básica factible de $Ax=b, \quad x\ge 0$. Consideramos $x_1, x_2, \cdots, x_p$ las entradas de $x>0$ y $x_{p+1}, \cdots, x_n$ las entradas de $x = 0$. Veamos que $a_1, a_2, \cdots, a_p$ columnas de $A$ , son linealmente independientes.

Si estos vectores no son linealmente independientes, entonces existen escalares $\gamma_1,\gamma_2,\cdots,\gamma_p$ no todos 0 tal que
$$
\sum_{j=0}^n\gamma_ja_j = 0
$$
Exhibiremos 2 puntos de la región factible distintos tales que una de sus combinaciones lineales estricta es igual a $x$.

Defina $x',x''$ donde 
$$
x_j' = \left\lbrace
\begin{array}{ll}
x_j + \lambda \gamma_j \qquad j = 1,2,\cdots,p\\
0 \qquad j = p+1,\cdots,n 
\end{array}\right. \\ \\
x_j'' = \left\lbrace
\begin{array}{ll}
x_j - \lambda \gamma_j \qquad j = 1,2,\cdots,p\\
0 \qquad j = p+1,\cdots,n 
\end{array}\right. \\
$$

$$
\Gamma_m = \max_j \{|\gamma_j|\} > 0 \qquad \text{hint: l.i.}\\
X_{\min}=\min_j\{x_j\}\\\\
\lambda=\frac{X_{\min}}{\Gamma_m} \ge 0
$$

Luego
$$
x_j + \lambda\gamma_j \ge x_j \ge 0\\\\
x_j + \frac{x_{\min}\gamma_j}{\Gamma_m} \ge x_j-x_{\min} \qquad \gamma_j > 0 \quad\gamma\le0
$$
$$
\text{Si } X \text{ es punto extremo} \Rightarrow X \text{ es una solución factible}
$$

$$
\begin{eqnarray*}
Ax' &=& \sum_{j=1}^p a_jx'_j=\sum_{j=1}^p\left(x_j+\lambda\gamma_j\right)a_j = \sum_{j=1}^p\left(x_j\right)a_j+\sum_{j=1}^p\left(\lambda\gamma_j\right)a_j\\
&=& Ax + \cancel{\lambda \sum_{j=1}^p\gamma_ja_j}^0\\
&=& b
\end{eqnarray*}
$$

Luego $x'$ y $x''$ estan en la region factible y además
$$
x = \frac{1}{2}(x'+x'') \\
\begin{eqnarray*}
\frac{1}{2}(x'+x'')_j &=& \frac{1}{2}(x_j'+x_j'')\\ &=& \frac{1}{2}(x_j+\cancel{\lambda\gamma_j}+x_j-\cancel{\lambda\gamma_j}) \\
&=& x_j\qquad j = 1,2,\cdots,p
\end{eqnarray*}
$$
Lo anterior contradice que $x$  es punto extremo $\therefore \quad a_1,\cdots,a_p \quad l.i.$. Como A tiene rango completo ($rango(A)= m$), entonces podemos completar $\{a_1, \cdots, a_n\}$. Sea 
$$
B = [a_1, a_2, \cdots, a_m]\\
[a_1, \cdots, a_m, a_{m+1},\cdots, a_n]\\
[B \quad| \quad N]\\
X = \begin{bmatrix}x_1\\ \vdots \\ x_p \\ \vdots \\ 0 \\ 0 \\ \vdots \end{bmatrix} \qquad p < m \le n
$$


Se concluye que $X$ es básica factible.

Supongamos que $X$ es básica factible del sistema $Ax=b, \quad x\ge0$. Sea $B$ la base correspondiente a $x$, y $x = \begin{bmatrix}x_B\\0\end{bmatrix}$. Supongamos que $x=\lambda x'+(1-\lambda)x''$ donde $0\le \lambda \le 1$ y $x'$ y $x''$ soluciones factibles.

Sea $x'=\begin{bmatrix}x_B'\\x_N'\end{bmatrix}$ y $x''=\begin{bmatrix}x_B'\\x_N'\end{bmatrix}$.

Luego
$$
\begin{bmatrix}x_B'\\0\end{bmatrix}= \lambda\begin{bmatrix}x_B'\\x_N'\end{bmatrix} + (1-\lambda)\begin{bmatrix}x_B''\\x_N''\end{bmatrix}
\qquad x_N', x_N''\ge0 \therefore\quad x_N' = 0 = x_N''
$$
Ahora 
$$
\begin{eqnarray}
b &=& Ax' = Bx'_B+\cancel{Nx'_n}\\
&=&Bx'_B
\end{eqnarray}
$$
y
$$
\begin{eqnarray}
b &=& Ax'' = Bx''_B+\cancel{Nx''_n}\\
&=&Bx''_B
\end{eqnarray}
$$

$$
\therefore \quad x_B'= B^{-1}b =x_B''\\
\therefore x' = x''
$$

## Existencia de los puntos extremos

Veamos que todo conjunto poliédrico 
$$
X=\{x | Ax=b, x\ge0\}
$$
 posee al menos una solución básica factible.

Primero supongamos que $ran(A) = m$ y sea $x$ una solución factible. Además suponga que $x_1, \cdots, x_p \ge0, \qquad x_{p+1}=\cdots = x_n=0.$ Si $a_1, \cdots, a_p$ son linealmente independientes, entonces $x$ es **solución básica factible óptima**. En otro caso existen $\gamma_1,\cdots, \gamma_p$ con al menos un $\gamma_r>0$ tal que $\sum_{j=1}^p\gamma_ja_j = 0$.

Considere el punto
$$
x_j' = \left\lbrace
\begin{array}{ll}
x_j - \lambda \gamma_j \qquad j = 1,2,\cdots,p\\
0 \qquad j = p+1,\cdots,n 
\end{array}\right.
$$
donde 
$$
\lambda = minimo\left\lbrace
\frac{x_j}{\gamma_j} : \gamma_j >0\right\rbrace = \frac{x_k}{\gamma_k}\ge0
$$
Sea $j \in \{1,\cdots, p\}$. Si $\gamma_j\le0$, entonces $x_j'>0$(pues $x_j\quad y \quad \lambda_j$ son  positivos), $\gamma_j>0$, entonces por definición de $\lambda$ 
$$
\frac{x_j}{\lambda_j}\ge\lambda \quad \therefore \quad x_j\ge\gamma_j\lambda\ge0 \quad \therefore \quad x_j' > 0 \quad \& \quad x' \ge 0
$$
Nota: Mínimo es el índice $k$
$$
x_k = x_k - \lambda\gamma_k = \cancel{ x_k - \frac{x_k}{\lambda_k} \lambda_k} = 0
$$
**Tarea:** $Ax' = b$

## Teorema 1

> La colección de puntos extremos corresponde a la colección de soluciones básicas factibles, y ambos son no vacíos, dado que la región factible es no vacía 

## Teorema 2

> Asumiendo que la región factible es no vacía, una solución óptima finita existe si y sólo si $Cd_j \ge 0$ para $j = 1, \cdots,l$, donde $d_1, \cdots, d_l$ son las direcciones extremas de la región factible. De otra  manera la solución óptima es no acotada.

## Teorema 3

> Si una solución óptima existe, entonces un punto extremo óptimo existe.

$$
SF \rightarrow SBF
$$



## Mejorar una solución básica factible

Dada una solución básica factible, describimos un método para obtener una nueva solución básica factible, con una mejor solución en la función objetivo.

Consideramos el problema 

| Minimizar | $cx$               |
| --------- | ------------------ |
| Sujeto a  | $$Ax=b \\ x\ge 0$$ |

A es una matriz de dimensión $m\times n$ con rango $m$. Supongamos que tenemos la solución **SBF** $\begin{pmatrix}B^{-1}b \\ 0\end{pmatrix} = \begin{pmatrix}x_B \\ x_N\end{pmatrix}$ con evaluación $Z_0$ dada por
$$
Z_0 = C\begin{pmatrix}B^{-1}b \\ 0\end{pmatrix} = (C_B,C_N)\begin{pmatrix}B^{-1}b \\ 0\end{pmatrix}\\
C = (C_B, C_N) = C_BB^{-1}b
$$
Como $X$ es factible, se tiene que $X_B \ge 0 \quad X_N \ge 0$ y 
$$
b = Ax = B x_B+Nx_N
$$
multiplicando por $B^{-1}$
$$
\begin{eqnarray}
B^{-1}b &=& B^{-1}Ax = x_B+B^{-1}NX_N\\
&=& B^{-1}b - \sum_{j\in R}B^{-1}a_jx_j\\
R &=& \{\text{Indices de las comlumnas NO-básicas}\}
\end{eqnarray}
$$

$$
\begin{eqnarray}
Z &=& cx = C_Bx_B+C_Nx_N\\
&=& C_B\left(B^{-1}b-\sum_{j\in R}B^{-1}a_jx_j\right)+\sum_{j\in R}c_jx_j\\
&=&C_BB^{-1}b-\sum_{j\in R}C_BB^{-1}a_jx_j+\sum_{j\in R}c_jx_j\\
&=& z_0+\sum_{j \in R}\left(c_j-C_BB^{-1}a_j\right)x_j\\
&=&z_0-\sum_{j\in R}\left(C_BB^{-1}a_j-c_j\right)x_j\\
&=&z_0-\sum_{j\in R}\left(z_j-c_j\right)x_j\\
\end{eqnarray}
$$

$$
Z_0= C_BB^{-1}b = cx_1 \qquad x_1 = \begin{pmatrix} B^{-1}b\\0 \end{pmatrix}\\
Z = cx= z_0-\sum_{j \in R}(z_j-c_j)x_j\\
z\le z_j \qquad \begin{matrix}z_j =C_BB^{-1}a_j\\z_j - c_j \ge 0 \end{matrix}
$$

$X$ se construye tal que su evaluación en la función objetivo sea menos que la solución **BF** original, es decir:
$$
z_0\ge z
$$
Si se encuentra $k\in R$ tal que $z_k-c_k >0$, Tome $x_j = 0 \quad \forall j\in R\quad j \ne k$ entonces:
$$
z = z_0-(z_n-c_k)x_k \le z_0
$$
Será entonces de nuestro beneficio elegir $x_k$ tan grande como sea posible.
$$
\begin{eqnarray}
X_B &=& B^{-1}a_jx_j\begin{pmatrix}B^{-1}b\\0\end{pmatrix}\\
&=&B^{-1}b - B^{-1}a_kx_k \qquad x = (x_B, x_N)\\
&=& \bar{b} - Y_kx_k\\
&=& \bar{b}-x_kY_k
\end{eqnarray}
$$
Si $Y_{ik}= (Y_K)_i \le 0$ entonces $X_{Bi}$ incrementa cuando $x_k$ incrementa (no se genera problema alguno).

Si $Y_{ik} = (Y_K)_i > 0$ entonces la entrada $X_{Bi}$ disminuye cuando $x_k$ aumenta.

Escoga a $x_k$ de la siguiente forma
$$
x_k = \min_{1 \le i \le m}\left\lbrace
\frac{\bar{b_i}}{Y_{ik}} : Y_{ik} >0 \right\rbrace = \frac{\bar{b_r}}{Y_{rk}}
$$
En el caso de escribir $x_k$ como en la expresión inmediata anterior, la variable $x_r$ sale de la base y la variable $x_k$ entra a la base. Esta operación conserva la estructura de la matriz $A$, en el sentido de que esta está formada por un primer bloque, $B$ el cual resulta nuevamente una base (es invertible).

### Ejemplo 3.4

| Minimizar | $x_1+x_2$                                      |
| --------- | ---------------------------------------------- |
| Sujeto a  | $$x_1+2x_2 \le4 \\ x_2\le 1 \\ x_1,x_2 \ge 0$$ |

$$
\begin{eqnarray}
x_1+2x_2+x_3+0&=&4\\
x_2+0+x_4&=&1
\end{eqnarray}
$$

| Minimizar $Z=z(x)=cx$                                        | $(c_1,c_2,c_3,c_4)\\(1,1,0,0)$                               |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Sujeto a $Ax=b$  $$\qquad A=\begin{bmatrix}1&2&1&0\\0&1&0&1\end{bmatrix}$$ | $$x=\begin{pmatrix}x_1\\x_2\\x_3\\x_4\end{pmatrix}\\b=\begin{pmatrix} 4\\1\end{pmatrix}$$ |

Definimos $B$ escogiendo $m$ columnas de $A$, *l.i.* $(A \in \mu_{m \times n}(\mathbb R),\quad rank(A)=m)$, digamos:
$$
B=\begin{bmatrix}1&2\\0&1\end{bmatrix}, \quad N=\begin{bmatrix}1&0\\0&1\end{bmatrix},
$$
Construimos la solución básica factible:
$$
\begin{pmatrix}x_B\\x_N\end{pmatrix} = \begin{pmatrix}B^{-1}b\\0\end{pmatrix}=
\begin{pmatrix}2\\1\\0\\0\end{pmatrix}
$$
Veamos si podemos mejorar el rendimiento de $x_1$. Calcularemos $x_j, j \in R = \{\text{indicar No básicos}\} = \{3,4\}$ 
$$
\begin{eqnarray}
z_x&=&c_BB^{-1} \mathbb a\\
z_3 &=& (1,1)\begin{bmatrix}1&-1\\0&1\end{bmatrix}\begin{pmatrix}1\\0\end{pmatrix}\\
&=& (1,-1)\begin{pmatrix}1\\0\end{pmatrix} = 1\\
z_j&-&c_j=1-0=1\\
\\
z_4 &=& (1,1)\begin{bmatrix}1&-2\\0&1\end{bmatrix}\begin{pmatrix}0\\1\end{pmatrix}\\
&=& (1,-1)\begin{pmatrix}0\\1\end{pmatrix} = -1
\end{eqnarray}
$$

$$
k=3 \qquad Y_k=B^{-1}a_k \sim Y_3=B^{-1}a_3\\
\begin{eqnarray}
\bar{x_B} &=& B^{-1}b -Y_kx_k\\
&=&\begin{bmatrix}2\\1\end{bmatrix}-\begin{pmatrix}1\\0\end{pmatrix}x_3
\end{eqnarray}
$$


$$
x_3= 2=x_k = \min_{1 \le i \le m}\left\lbrace
\frac{\bar{b_i}}{Y_{ik}} : Y_{ik} >0 \right\rbrace = \frac{\bar{b_r}}{Y_{rk}}=x_k=x_3
$$
Hemos calculado que $k = 3.\quad r=1,\quad x_k = 2$. Actualizando los datos intercambiando los valores de las variables $1$ y $3$.
$$
x_2=\begin{pmatrix}0\\1\\2\\0\end{pmatrix}\qquad x_2=\begin{pmatrix}2\\1\\0\\0\end{pmatrix}\\
A=\begin{bmatrix}1&2&1&0\\0&1&0&1\end{bmatrix}\\
b=\begin{pmatrix}4\\1\end{pmatrix}\qquad x_2=\begin{pmatrix}0\\1\\1\\0\end{pmatrix}
$$
Así seguiremos el proceso de manera iterativa hasta ver si se puede seguir consiguiendo una mejor solución, que se explica en la siguiente sección.

## Interpretación de $z_x-c_k$

Dos preguntas lógicas surgen inmediatamente ¿Qué sucede si para cada variable no básica $x_j$ se tiene $z_j-c_k\le0$?. Segundo, supongamos que $z_x-c_k>0$ pero $Y_k\le0$ ¿Qué sucede en $r$?.

En el primer caso **hemos alcanzado una solución básica factile óptima**. 

En el segundo caso, se concluye que la solución **no es acotada**.

Supongamos que $X^*$ es una solución básica factible con base $B$ 
$$
X^* = \begin{pmatrix}B^{-1}b\\0\end{pmatrix}\quad sea \quad z^*
$$
Definida como
$$
z^* = c_BB^{-1}b
$$
que $z_j -c_j\le 0 \quad \forall j$  no básica entonces para cualquier otra solución básica factible $x$ en evaluación $z$
$$
z^*-z= \sum_{j\in R}(x_j-c_j)x_j\le0\\
z^*\le z
$$
Si $z_j-c_j<0 \quad \forall j$ no básica, entonces la solución es única, si no, es decir existe $z_j-c_j = 0$ con $j$ básica, entonces se puede variar $x_j$ y obtener una infinidad de soluciones óptimas.

## Condiciones de acotamiento

Supongamos que tenemos una solución básica factible de $Ax=b, \quad x\ge 0$ y que encontramos $k$ no básico tal que $z_k-c_k>0$ y que $Y_k \le 0$. Luego 
$$
z = z_0- \sum_{j\in R}(z_k-c_k)x_k\\\
x_B = B^{-1}b-Y_kx_k
$$
