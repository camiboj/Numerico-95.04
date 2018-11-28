function [e1, e2, e3, e4, error_maximo] = error_euler(exacto1, exacto2, exacto3, exacto4, euler1, euler2, euler3, euler4)
  
  #Set de las variables en 0 para iniciar la función
  e1 = 0;
  e2 = 0;
  e3 = 0;
  e4 = 0;
  errores = [];
  
  #Se calcula el error maximo del escenario 1 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto1(1,:))
    error = norm(exacto1(:, i) - euler1(:, i), inf) / norm(euler1(:, i));
    if(error > e1)
      e1 = error;
    endif
  endfor
  errores(end+1) = e1;
 
  #Se calcula el error maximo del escenario 2 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto2(1,:))
    error = norm(exacto2(:, i) - euler2(:, i), inf) / norm(euler2(:, i));
    if(error > e2)
      e2 = error;
    endif
  endfor  
  errores(end+1) = e2;
  
  #Se calcula el error maximo del escenario 3 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto3(1,:))
    error = norm(exacto3(:, i) - euler3(:, i), inf) / norm(euler3(:, i));
    if(error > e3)
      e3 = error;
    endif
  endfor  
  errores(end+1) = e3;
  
  #Se calcula el error maximo del escenario 4 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto4(1,:))
    error = norm(exacto4(:, i) - euler4(:, i), inf) / norm(euler4(:, i));
    if(error > e4)
      e4 = error;
    endif
  endfor   
  errores(end+1) = e4;
  
  error_maximo = errores(1);
  
  #Se obtiene el error maximo entre los 4 obtenidos
  for i=2: length(errores)
    if (errores(i) > error_maximo)
      error_maximo = errores(i);
    endif
  endfor
      
end