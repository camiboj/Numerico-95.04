function plotear(potencial, modo)
  vector = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];
  x = [];
  y = [];
  z = [];
  contador = 1;
  for i=1 : length(vector)
    for j=1 : length(vector)
      x(length(x)+1) = vector(i);
      y(length(y)+1) = vector(j);
      if vector(i) == 0 || vector(i) == 1 
        z(length(z)+1) = vector(j)-vector(j)**2;
      elseif vector(j) == 0 || vector(j) == 1 
        z(length(z)+1) = 0;
      endif
      if j != 1 && j != 11 &&  i != 1 && i != 11
        z(length(z)+1) = potencial(contador);
        contador += 1;
        
      endif 
    endfor
  endfor
  scatter3 (x(:), y(:), z(:), 10, z(:));
  title ({"potencial", modo});
endfunction

