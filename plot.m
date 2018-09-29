function plot(potencial)
  vector = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.8, 0.9, 1];
  x = [];
  y = [];
  z = [];
  contador = 1;
  for i=1 : length(vector)
    for j=1 : length(vector)
      x(length(x)+1) = vector(i);
      y(length(y)+1) = vector(j);
      if i == 0 || i == 10 
        z(length(z)+1) = vector(j)-vector(j)**2;
      endif
      if j == 0 || j == 10 
        z(length(z)+1) = 0;
      endif
      if j != 0 && j != 10 &&  i != 0 && i != 10
        z(length(z)+1) = potencial(contador);
        contador += 1;
      endif 
    endfor
  endfor
  scatter3 (x(:), y(:), z(:), [], z(:));
  title ({"hola", "chau"});
endfunction