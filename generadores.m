function matriz = generar_matriz_sel()
  matriz = [];

  matriz(end+1) = -4;
  matriz(end+1) = 1;
  for i=1 : 79
    matriz(end+1) = 0;
  endfor
  matriz(10) = 1;
  
  for i=1 : 80
    vector = [];
    for j=1 : 81
      vector(end+1) = 0;
    endfor
    if rem(i,9) != 0
      vector(i) = 1;
    endif
    vector(i+1) = -4;
    if i < 80 & rem(i,9) != 8
      vector(i+2) = 1;
    endif
    if i > 8
      vector(i-8) = 1;
    endif
    if i < 72
      vector(i+10) = 1;
    endif
      matriz = [matriz; vector];
    endfor
end

function vector = generar_vector()
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
 end