# Puntos extremos y optimización

Veamos ahora que, dado un programa lineal, siempre que posea una solución óptima, entonces un punto extremo óptimo también existe.

## Teorema 2 (p68)

> Sea $A = \{x | Ax = b, x\ge 0\}$ no vacío. Entonces el conjunto de puntos extremos es no vaciío y contiene un número finito de puntos, digamos $x_1, x_2, \cdots, x_n$. Además el conjunto de direcciones extremas es vacío si y sólo si $X$ es acotado.
>
> Si $X$ es no acotado, entonces el conjunto de direcciones extremas es no vacío y es finito, digamos $\{d_1, d_2, \cdots,d_i\}$. Además $x\in  X$ si y sólo si puede ser representado como combinación lineal famosa de $x_1, x_2, \cdots, x_n$ más una combinación lineal no negativa de $d_1, d_2, \cdots, d_n$, esto es
> $$
> \begin{gather*}
> x = \sum_{j=1}^k \lambda_j x_j + \sum_{i = 1}^l u_id_i\\
> \sum_{j=1}^n \lambda_j = 1,\\
> (\lambda_j, u_i) \ge 0, \quad i = 1,2,\cdots,l, \quad j = 1,2,\cdots,k
> \end{gather*}
> $$

Veamos que, siempre que un programa lineal tiene solución óptima, existe un punto extremo óptimo.

Consideremos el siguiente **programa lineal**:

| Minimizar | $cx$            |
| :-------: | --------------- |
| Sujeto a  | $Ax=b\\ x\ge 0$ |

Sean $x_1, x_2,\cdots, x_\alpha$ puntos extremos del conjunto $X$ (constraint set), sean $d_1,d_2,\cdots,d$ de direcciones extremas del conjunto $X$. Recuerde que cualquier punto $x$ de $X$ puede ser representado.
$$
x = \sum_{j=1}^n\lambda_jx_j + \sum_{i=1}^l u_id_i \quad \text{donde}\\
\sum_{j=1}^k \lambda_j = 1, \quad \lambda_j \ge 0 \quad j =1,2,\cdots,k \quad u_i \ge 0, \quad i=1,2,\cdots, l
$$
Por lo tanto el problema se puede transformar de la siguiente forma:

| Minimizar | $$\sum_{j=1}^k(cx_j) \lambda_j + \sum_{i=1}^l(cd_i)u_i$$     |
| :-------: | ------------------------------------------------------------ |
| Sujeto a: | $\sum_{j=1}^k \lambda_j = 1,\\ \quad \lambda_j \ge 0 \quad j =1,2,\cdots,k \quad u_i \ge 0, \quad i=1,2,\cdots, l$ |

Como los $\mu_i$ pueden ser escogidos relativamente grandes, si $cd_i<0$ para algún $i \quad (1\le i\le l)$ entonces el mínimo es $-\infty$.

Si $cd_i \ge 0 \quad \forall i = 1,2,\cdots,l$ entonces 

Como se supone que existe el óptimo se debe tener $cd_j\ge 0 \quad \forall \quad j=1,2,\cdots,l$ .(En caso contrario no existe el mínimo). EN tal caso tome $\mu_i = 0 \quad \forall i$

Por último escogemos al menor de los $c_j$ y el $\lambda_m = 1$.
$$
\min_{1\le j \le k} cx_j = cx_m\\
\lambda_m = 1
$$
Se concluye $x=x_m$ (el cual es el punto extremo).

