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
  
endfunction