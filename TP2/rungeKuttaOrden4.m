#metodo de Runge Kutta de Orden 4
#recibe funciones derivadas, vector de tiempos, vector de condiciones iniciales y paso(h)
#devuelve martiz con valores de las varaibles
#cada columna corresponde a una variable, cada fila a un tiempo en el que se quiere conocer el valor

function [valor_variables] = rungeKuttaOrden4(fprima, T, cond_iniciales, h)

  M = length(T); #el numero de filas debe ser la cantidad de tiempos en los que calculo
  N = length(cond_iniciales); #el numero de columnas debe ser la cantidad de incognitas
  valor_variables = zeros(M,N);
  
  for i = 1:N #la primera fila es t=0 entonces evaluo en las condiciones iniciales
    valor_variables(1,i) = cond_iniciales(i);
  endfor

  for j = 1 : (M-1)
    K1 = h * feval(fprima, valor_variables(j, :), T(j));
    K2 = h * feval(fprima, valor_variables(j, :) + K1/2, T(j) + h/2);
    K3 = h * feval(fprima, valor_variables(j, :) + K2/2, T(j) + h/2);
    K4 = h * feval(fprima, valor_variables(j, :) + K3, T(j) + h);
    
    valor_variables(j+1, :) = valor_variables(j, :) + (K1 + 2*K2 + 2*K3 + K4)/6;
  endfor
  
endfunction