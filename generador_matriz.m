function matriz = generador_matriz()
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
    if i < 80 && rem(i,9) != 8
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