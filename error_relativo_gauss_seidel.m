function error = error_relativo_gauss_seidel()
  
  A = generador_matriz();
  b = generador_vector();
  x_exacto = A\b;
  [x_gs, k_gs] = gauss_seidel(A,b);
  
  error = norm(x_exacto-x_gs) / norm(x_gs)
   
  error_componente_max = (x_exacto(1) - x_gs(1)) / (x_exacto(1));
  error_componente_min = error_componente_max;
  
  for i=1 : length(b)
    error_relativo = (x_exacto(i) - x_gs(i)) / (x_exacto(i));
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