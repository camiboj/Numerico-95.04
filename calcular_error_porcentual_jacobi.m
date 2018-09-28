function error = calcular_error_porcentual_jacobi()
  
  A = generador_matriz();
  b = generador_vector();
  x_exacto = A\b;
  [x_jacobi, k_jacobi] = jacobi(A,b);
  
  error = norm(x_exacto-x_jacobi) / norm(x_exacto);
  
  error_componente_max = (x_exacto(1) - x_jacobi(1)) / (x_exacto(1));
  error_componente_min = error_componente_max;
  
  for i=1 : length(b)
    error_porcentual = (x_exacto(i) - x_jacobi(i)) / (x_exacto(i));
    if(error_porcentual > error_componente_max)
      error_porcentual_max = error_porcentual;
    endif
    if(error_porcentual < error_componente_min)
      error_porcentual_min = error_porcentual;
    endif
  endfor
  
error_porcentual_min 
error_porcentual_max
end