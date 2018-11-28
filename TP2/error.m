function [e1, e2, e3, e4] = error(exacto1, exacto2, exacto3, exacto4, r1, r2, r3, r4)
  
  #Set de las variables en 0 para iniciar la función
  e1 = 0;
  e2 = 0;
  e3 = 0;
  e4 = 0;
  
  #Se calcula el error maximo del escenario 1 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto1(1,:))
    error = norm(exacto1(:, i) - r1(:, i), inf) / norm(r1(:, i));
    if(error > e1)
      e1 = error;
    endif
  endfor
 
  #Se calcula el error maximo del escenario 2 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto2(1,:))
    error = norm(exacto2(:, i) - r2(:, i), inf) / norm(r2(:, i));
    if(error > e2)
      e2 = error;
    endif
  endfor  
  
  #Se calcula el error maximo del escenario 3 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto3(1,:))
    error = norm(exacto3(:, i) - r3(:, i), inf) / norm(r3(:, i));
    if(error > e3)
      e3 = error;
    endif
  endfor  
  
  #Se calcula el error maximo del escenario 4 tomando como vector la columna adecuada (variable)  
  for i=1 : length(exacto4(1,:))
    error = norm(exacto4(:, i) - r4(:, i), inf) / norm(r4(:, i));
    if(error > e4)
      e4 = error;
    endif
  endfor   
  
end