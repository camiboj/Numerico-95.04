function [resultado,k] = gauss_seidel(A,b)
  n = length(b);
  error = 10^-5;
  
  x0 = [];  
  for i=1: 81
    x0(end+1) = 0; %semilla
  endfor
  x0 = x0';

  x=[];  
  for j = 1 : n
    suma_2 = A(j, [j+1:n]) * x0([j+1:n]);
    x(j) =  ((b(j) -  A(j, [1:j-1]) * (x([1:j-1]))' - suma_2) / A(j,j));  
  endfor
  x1 = x';

  x_iterate = [];  
  k = 1;
  while (norm(x1-x0, inf) > error && k<150)
    for j = 1 : n
      suma_2 = A(j, [j+1:n]) * x1([j+1:n]);
      x_iterate(j) = ((b(j) - A(j, [1:j-1]) * transpose(x_iterate([1:j-1])) - suma_2) / A(j,j));
    endfor
     x0 = x1;
     x1 = transpose(x_iterate);
     k = k + 1;
  endwhile
  
  if(k==150)
    disp("Supero el numero de iteraciones permitido");
  endif
  
  resultado = x1;
end  