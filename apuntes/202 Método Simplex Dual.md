# Método simplex dual

## Inicialización

Encuentre una base $B$ tal que $z_j-c_j=c_BB^{-1}a_j-c_j \le 0 \quad \forall_j$

## Paso principal

1. Si $\bar{b}= B^{-1}b\ge 0$ para la solución es óptima. En otro caso elija la fila pivote $r$ (tal que)
   $$
   \bar{br}=  \text{mínimo}\{\bar{b_i}\}
   $$
   
2. Si $Y_{rj}\ge0 \quad \forall_j$, para el problema dual es no acotado, por lo tanto la región factible primal es vacía. En otro caso escoja $k$ como
   $$
   \frac{z_k-c_k}{Y_{rk}} = \min_j\left\lbrace\ \frac{z_j-c_j}{Y_{rj}} : Y_{rj} <0 \right\rbrace
   $$
   
3. Pivotee en $Y_{rk}$ y regrese al paso 1 del paso principal.

### Ejemplo 6.6

| P:   | Minimizar; | $2x_1+3x_2+4x_3$                                             |
| ---- | ---------- | ------------------------------------------------------------ |
|      | sujeto a:  | $$x_1+2x_2+x_3\ge 1\\2x_1-x_2 +3x_3\ge 4\\ x_1, x_2, x_3 \ge 0$$ |

$$
\begin{matrix}
-(x_1+2x_2+x_3-x_4+0x_5=1)\\
-(2x_1-x_2+3x_3+0x_4-x_5 = 4)\\
\begin{bmatrix}
-1 & -2 & -1 & 1 & 0\\
-2&1 & -3 & 0 & 1
\end{bmatrix}
\quad
\begin{bmatrix}
-3 \\ -4
\end{bmatrix}
\end{matrix}
$$

**Nota:** Se debe cumplir que 5 y 6 sean menores o iguales que 0
$$
\begin{matrix}
&& x_1& x_2 & x_3 & x_4 & x_5 & RHS\\
 & 1 &-2&-3&-4&0&0&0\\
 x_4 & 0 & -1 & -2 & -1 & 1 & 0 & -3\\
 x_5 &0 & -2 & 1 & -3 & 0 & 1 & -4
\end{matrix}
$$

Sabiendo que en este particular ejemplo $z_j-c_j = -c_j$ ya que $c_BB^{-1}a_j = 0$

$r = 5$
$$
\left\lbrace\ \frac{z_1-c_1}{Y_{51}} , \frac{z_3-c_3}{Y_{53}} \right\rbrace = \left\lbrace\ \frac{-2}{-2} , \frac{-4}{-3} \right\rbrace = \left\lbrace\ 1 , \frac{4}{3} \right\rbrace\\
\Longrightarrow \min\left\lbrace\ 1 , \frac{4}{3} \right\rbrace = 1
$$
Por lo que, $Y_{41}$
$$
\begin{matrix}
&& x_1& x_2 & x_3 & x_4 & x_5 & RHS\\
 & 1 & 0 & -4 & -1 & 0 & -1 & 4\\
 x_4 & 0 & 0 & -\frac5 2 & \frac1 2 & 1 & - \frac1 2 & -1\\
 x_5 &0 & 1 & -\frac1 2 & -\frac3 2 & 0 & \frac1 2 & 2
\end{matrix}
$$
Salió $x_5$ y entra $x_1$
$$
\left\lbrace\ \frac{z_2-c_2}{Y_{42}} , \frac{z_5-c_5}{Y_{45}} \right\rbrace = \left\lbrace\ \frac{-4}{-\frac5 2} , \frac{-1}{-\frac1 2} \right\rbrace =
\left\lbrace\ \frac{8}{5} , 2 \right\rbrace\\
\Longrightarrow \min\left\lbrace\ \frac{8}{5} , 2 \right\rbrace = \frac 8 5
$$
Entonces $Y_{42}$
$$
\begin{matrix}
&& x_1& x_2 & x_3 & x_4 & x_5 & RHS\\
 & 1 & 0 & 0 & -\frac{11}{5} & -\frac{8}{5} & -\frac1 5 & \frac{25}{5}\\
 x_2 & 0 & 1 & 0 & \frac7 5 & -\frac1 5  & -\frac2 5 & \frac {11} {5}\\
 x_1 &0 & 0 & 1 & -\frac1 5 & -\frac2 5 & \frac1 5 & \frac {2}{5}
\end{matrix}
$$
La solución está dada por:
$$
x=\begin{pmatrix}\frac{11}{5}, \frac2 5, 0, 0, 0\end{pmatrix}
$$
