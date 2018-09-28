function resultado = jacobi()
  A = generador_matriz();
  b = generador_vector();
  n = length(b);
  error = 10^-5;
  
  x0 = [];  
  for i=1: 81
    x0(end+1) = 0; %semilla
  endfor
  x0 = transpose(x0);
   
  for j = 1 : n
    x(j) = ((b(j) - A(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / A(j,j));
  endfor
  x1 = transpose(x);
  
  k=1;
  while (norm(x1-x0, inf) > error && k<150)
    for j = 1 : n
      x_ny(j) = ((b(j) - A(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / A(j,j));
    endfor
     x0 = x1;
     x1 = transpose(x_ny);
     k = k + 1;
  endwhile
  if(k==150)
    disp("Supero el numero de iteraciones permitido")
  endif
  resultado = x1;
end  