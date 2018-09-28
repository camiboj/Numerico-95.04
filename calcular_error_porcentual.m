function error = calcular_error_porcentual_jacobi()
  
  A = generador_matriz();
  b = generador_vector();
  x_exacto = A\b;
  [x_jacobi, k_jacobi] = jacobi(A,b);
  
  error = norm(xexacto-xjacobi) / norm(xexacto)
end