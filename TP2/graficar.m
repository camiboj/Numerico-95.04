function graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, num)
  

  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Susceptibles", 1, num+1);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Infecciosos", 2, num+2);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Inmunes", 3, num+3);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, " Mosquitos maduros no portadores del virus", 4, num+4);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Mosquitos maduros portadores del virus ", 5, num+5);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Huevos viables", 6, num+6);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Larvas viables", 7, num+7);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Pupas viables", 8, num+8);


endfunction