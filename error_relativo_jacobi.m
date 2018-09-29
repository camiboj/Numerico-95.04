function error = error_relativo_jacobi()
  
  A = generador_matriz();
  b = generador_vector();
  x_exacto = A\b;
  [x_jacobi, k_jacobi] = jacobi(A,b);
  
  error = norm(x_exacto-x_jacobi) / norm(x_exacto);
  
  error_componente_max = (x_exacto(1) - x_jacobi(1)) / (x_exacto(1));
  error_componente_min = error_componente_max;
  
  for i=1 : length(b)
    error_relativo = (x_exacto(i) - x_jacobi(i)) / (x_exacto(i));
    if(error_relativo > error_componente_max)
      error_relativo_max = error_relativo;
    endif
    if(error_relativo < error_componente_min)
      error_relativo_min = error_relativo;
    endif
  endfor
  
error_relativo_min 
error_relativo_max
end