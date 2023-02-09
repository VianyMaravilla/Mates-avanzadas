library(gtools)

# Exercise 3.9 from Bazaraa Linear programming and network flows

B = matrix(c(1, 1, -1, 2), ncol = 2, byrow = TRUE)
print(B)
N = matrix(c(1, 0, 0, 1), ncol = 2, byrow = TRUE)
print(N)
A = cbind(B, N)
print(A)
b = c(2, 3)
print(b)
b_aux = matrix(c(2, 3))
print(b_aux)

indices = c(1, 2, 3, 4)
combinaciones_6 = combinations(4, 2, indices)
#print(combinaciones_10)

for (i in 1:6) {
  indices_b = combinaciones_6[i,]
  B_aux = A[,indices_b]
  prueba <- tryCatch(solve(B_aux) %*% B_aux, error = function(e) e)
  bandera = any(class(prueba) == "error")
  if (bandera == FALSE) {
    B_aux_inv = solve(B_aux)
  }
  
  cat("\n\nIndices básicos", indices_b, "\n")
  indices_nb = indices[-(indices_b)]
  #cat("Indices no básicos", indices_nb, "\n")
  if (bandera == FALSE) {
    #print(B_aux)
    print(B_aux_inv)
    #print(b_aux)
    
    x_b = (B_aux_inv %*% b_aux)[,1]
    x_n = rep.int(0, 2)
    x = c(x_b, x_n)
    
    orden = c(indices_b, indices_nb)
    
    sbf = data.frame(i = orden, x_i = x)
    print(sbf)
  }
  else {
    cat("La matriz siguiente no es invertible\n")
    print(B_aux)
  }
}