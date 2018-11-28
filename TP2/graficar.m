<<<<<<< HEAD
function graficar(T, U_euler, U_lsode, U_rk2, U_rk4)

  hold on;
  
  title("Escenario 1");
  xlabel("Trayectoria");
  ylabel("Tiempo");
  
  plot(T, , 'k-.',
       T, U_lsode(:, 1), 'm*', 
       T, U_rk2(:, 1), 'g--', 
       T, U_rk4(:, 1), 'b-');
       
  plot(T, U_euler(:, 3), 'k-.',
       T, U_lsode(:, 3), 'm*', 
       T, U_rk2(:, 3), 'g--', 
       T, U_rk4(:, 3), 'b-');
  
  h = legend('Euler', 'Lsode', 'Runge-Kutta Orden 2', 'Runge-Kutta Orden 4');
  legend(h, 'location', 'southwest');
  
  hold off;
=======
function graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, num)
>>>>>>> b2a7a2d8c330b3c204a7f1fa26bf2dcfec779ace
  

  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Susceptibles", 1, num+1);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Infecciosos", 2, num+2);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Inmunes", 3, num+3);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, " Mosquitos maduros no portadores del virus", 4, num+4);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Mosquitos maduros portadores del virus ", 5, num+5);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Huevos viables", 6, num+6);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Larvas viables", 7, num+7);
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "Pupas viables", 8, num+8);


endfunction