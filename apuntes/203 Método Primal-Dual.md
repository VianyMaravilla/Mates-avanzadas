# Método Primal-Dual

En esta sección describimos en método en el algoritmo primal-dual, de manera similar al método simplex dual, tratamos de ampliar las posibilidades de arranque de nuestros métodos. Una diferencia importante respecto del método simplex dual es que el método primal-dual **no necesita una solución básica**, sólo que sea factible.

De manera general, dada una solución factible dual no necesariamente básica, las variables primales que corresponden a igualdades en las restricciones duales son determinadas. 
$$
\begin{equation*}
x_i^* \Longrightarrow w^*a_i=c_i \qquad
Q = \{i\}
\end{equation*}
$$
Usando la *fase 1* del método simplex, tratamos de obtener factibilidad primal usando sólo estas variables, si no somos capaces de obtener la factibilidad primal, cambiamos la solución dual factible de manera que admita al menos una nueva variable a la fase 1 del problema. Este proceso se continua hasta alcanzar **factibilidad primal** o que el problema dual posea **solución no acotada**.

Nota: *Tomar un conjunto $Q$ cuyas desigualdades sean igualdades e introducir nuevas variables hasta alcanzar la factibilidad primal o tener una solución no acotada en el problema dual.*

Consideremos el siguiente problema primar y dual en la forma estándar, donde $b \ge 0$ 
$$
P:\quad\begin{matrix}\text{mínizar}; & cx\\ \text{sujeto a;} & \begin{matrix}Ax = b \\  x \ge 0 \end{matrix} \end{matrix}\qquad\qquad
D:\quad\begin{matrix}\text{maximizar}; & wb\\ \text{sujeto a;} & \begin{matrix} wA \le c \\  w \quad \text{sin restricciones} \end{matrix} \end{matrix}
$$
Sea $W$ una solución dual factible inicial, esta en $wa_j\le c_j \quad \forall j$ . Entonces, si $wa_j=c_j$ entonces $x_j$ puede ser positivo, utilizando estas variables para obtener la factibilidad primal. Sea:
$$
Q=\{j | wa_j-c_j=0\}
$$
Defina a lo que llamamos **Problema primal restringido**
$$
\begin{matrix}\text{mínimizar}; & \sum_{j\in Q} 0x_j + \mathbb 1x_n\\ \text{sujeto a;} & \begin{matrix}\sum_{j\in Q}a_jx_j+Ix_a = b \\ x_j\ge 0 \text{ para } j\in Q \\  x_a \ge 0 \end{matrix} \end{matrix}
$$
En el óptimo del *PPR* (problema dual restringido) $x_0=0$ ó $x_0>0$.

Si $x_0 = 0$, entonces se ha llegado al óptimo del problema primal.

Si $x_0>0$ construimos una nueva solución dual que admita una nueva variable al problema primal restringido que haga decrecer $x_0$
$$
P:\quad\begin{matrix}\text{mínizar}; & cx\\ \text{sujeto a;} & \begin{matrix}Ax = b \\  x \ge 0 \end{matrix} \end{matrix}\quad \Longrightarrow \quad
D:\quad\begin{matrix}\text{maximizar}; & wb\\ \text{sujeto a;} & \begin{matrix} wA \le c \\  w \quad \text{sin restricciones} \end{matrix} \end{matrix}
$$

### IS (Inicialization step)

Encuentre un vector $W$ tal que $wa_j-c_j\le 0 \quad \forall_j$   ($WA\le c$).

### MS (Main Step)

1. Sea $Q = \{j |wa_j -c_j =0\}$ y resuelva el siguiente problema primal restringido
   $$
   \begin{matrix}\text{mínimizar}; & \sum_{j\in Q} 0x_j + \mathbb 1x_n\\ \text{sujeto a;} & \begin{matrix}\sum_{j\in Q}a_jx_j+Ix_a = b \\ x_j\ge 0 \text{ para } j\in Q \\  x_a \ge 0 \end{matrix} \end{matrix}
   $$

2. 

1. Denote por $x_0$ la evaluación en la función objetivo. Si $x_0 = 0$ pare, ya que la solución óbtenida es óptima. De otra forma sea $V^*$ la solución dual óptima del problema dual del problema primal restringido

2. SI $V^*a_j\le0 \quad \forall_j$, entonces pare, la solución dual es no acotada y la región factible del problema primal es vacía. De otra forma sea
   $$
   \theta = \text{minimizar}\left\lbrace\ \frac{-(wa_j-c_j)}{V^*a_j} : V^*a_j > 0 \right\rbrace 
   $$
   Y rescriba $w$ por $W+\theta V^*$. Repita el paso 1

   

$$
P_1 \iff D_1(w\& Q) \rightarrow PR(x_{\text{óptima}}) \rightarrow DPR(V^*) \rightarrow \theta.
$$

## Ejemplo

Considere el siguiente problema

| Minimizar; | $3x_1+4x_2+6x_3+7x_4+x_5$                                    |
| ---------- | ------------------------------------------------------------ |
| sujeto a:  | $$2x_1-x_2+x_3+6x_4-5x_5-x_6 = 6\\x_1+x_2+2x_3+x_4+2x_5-x_7=3\\ x_1, x_2, x_3, x_4, x_5, x_6, x_7 \ge 0$$ |

$$
b = \begin{pmatrix}6\\3\end{pmatrix}\qquad
A = \begin{bmatrix}2 & -1&1&6&-5&-1&0\\ 1&1&2&1&2&0&-1\end{bmatrix}\qquad
w = (w_1, w_2)
$$

$$
D: \quad \begin{matrix}\text{maximizar;} & wb = 6w_1+3w_2\\ \text{sujeto a;} & \begin{matrix} wA\ge c\\w_1, w_2 \ge 0 \end{matrix} \iff E \end{matrix}
$$

$$
E \iff (w_1, w_2)\begin{bmatrix}2 & -1&1&6&-5&-1&0\\ 1&1&2&1&2&0&-1\end{bmatrix} \le \begin{pmatrix}3\\4\\6\\7\\1\\0\\0\end{pmatrix} \iff
\begin{eqnarray}
w_1+2w_2 &\le& 3\\
w_1-w_2 &\le& 4\\
2w_1+w_2 &\le& 6\\
w_1+6w_2 &\le& 7\\
2w_1-5w_2 &\le& 1\\
-w_1, -w_2 &\le& 0
\end{eqnarray}
$$

$$
\begin{eqnarray}
Q &=& \{i|wa_j&-&c_i=0\} = \{6,7\}\\
\end{eqnarray}
$$

