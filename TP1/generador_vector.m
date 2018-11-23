function vector = generador_vector()
  casos = [0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1];
  for i=1 : length(casos)
    casos(i) = casos(i) * (1-casos(i));
  endfor
  vector = [-casos(1)];
  contador = 1;
  for i=2 : 81
   vector(i) = 0;
    if rem(i,9) == 0
      vector(i) = -casos(contador);
    endif
    if rem(i,9) == 1
      contador += 1;
      vector(i) = -casos(contador);
    endif
  endfor
  vector = transpose(vector);
 end