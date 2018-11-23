#funcion principal, llamador de funciones
#obtiene los resultados para cada metodo y cada escenario

function tp2 ()
  ti = 0;
  tf = 60;
  h = 0.01;
  T = vector_tiempos(ti, tf, h); #se usa tiempo de 0 a 60 dias y paso 0.01
  cond_iniciales = condiciones_iniciales();
  resultado_exacto1 = lsode('fprima1',cond_iniciales, T);
  resultado_exacto2 = lsode('fprima2',cond_iniciales, T);
  resultado_exacto3 = lsode('fprima3',cond_iniciales, T);
  resultado_exacto4 = lsode('fprima4',cond_iniciales, T);
  resultado_euler1 = euler('fprima1', T, cond_iniciales, h);
  resultado_euler2 = euler('fprima2', T, cond_iniciales, h);
  resultado_euler3 = euler('fprima3', T, cond_iniciales, h);
  resultado_euler4 = euler('fprima4', T, cond_iniciales, h);
endfunction
