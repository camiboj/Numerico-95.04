#funcion principal, llamador de funciones
#obtiene los resultados para cada metodo y cada escenario

function tp2 ()
  ti = 0;
  tf = 60;
  h = 0.01;
  T = vector_tiempos(ti, tf, h); #se usa tiempo de 0 a 60 dias y paso 0.01
  cond_iniciales = condiciones_iniciales();
  
  resultado_exacto_1 = lsode('fprima1',cond_iniciales, T);
  resultado_exacto_2 = lsode('fprima2',cond_iniciales, T);
  resultado_exacto_3 = lsode('fprima3',cond_iniciales, T);
  resultado_exacto_4 = lsode('fprima4',cond_iniciales, T);
  
  resultado_euler_1 = euler('fprima1', T, cond_iniciales, h);
  resultado_euler_2 = euler('fprima2', T, cond_iniciales, h);
  resultado_euler_3 = euler('fprima3', T, cond_iniciales, h);
  resultado_euler_4 = euler('fprima4', T, cond_iniciales, h);
  
  resultado_rungekutta2_1 = rungeKuttaOrden2('fprima1', T, cond_iniciales, h);
  resultado_rungekutta2_2 = rungeKuttaOrden2('fprima2', T, cond_iniciales, h);
  resultado_rungekutta2_3 = rungeKuttaOrden2('fprima3', T, cond_iniciales, h);
  resultado_rungekutta2_4 = rungeKuttaOrden2('fprima4', T, cond_iniciales, h);
  
  resultado_rungekutta4_1 = rungeKuttaOrden4('fprima1', T, cond_iniciales, h);
  resultado_rungekutta4_2 = rungeKuttaOrden4('fprima2', T, cond_iniciales, h);
  resultado_rungekutta4_3 = rungeKuttaOrden4('fprima3', T, cond_iniciales, h);
  resultado_rungekutta4_4 = rungeKuttaOrden4('fprima4', T, cond_iniciales, h);  
  
  [e_euler_1, e_euler_2, e_euler_3, e_euler_4] = error(resultado_exacto_1, resultado_exacto_2, resultado_exacto_3, resultado_exacto_4, resultado_euler_1, resultado_euler_2, resultado_euler_3, resultado_euler_4);
  [e_rk2_1, e_rk2_2, e_rk2_3, e_rk2_4] = error(resultado_exacto_1, resultado_exacto_2, resultado_exacto_3, resultado_exacto_4, resultado_rungekutta2_1, resultado_rungekutta2_2, resultado_rungekutta2_3, resultado_rungekutta2_4);
  [e_rk4_1, e_rk4_2, e_rk4_3, e_rk4_4] = error(resultado_exacto_1, resultado_exacto_2, resultado_exacto_3, resultado_exacto_4, resultado_rungekutta4_1, resultado_rungekutta4_2, resultado_rungekutta4_3, resultado_rungekutta4_4);
  
endfunction