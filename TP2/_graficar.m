function _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, atributo, columna)
  
  hold on;  
  
  title(titulo);
  title(atributo);
  xlabel("Trayectoria");
  ylabel("Tiempo");
  
  plot(T, U_euler(1:6001, columna), 'k-.',
       T, U_lsode(1:6001, columna), 'm:', 
       T, U_rk2(1:6001, columna), 'g--', 
       T, U_rk4(1:6001, columna), 'b-');
       
  
  h = legend('Euler', 'Lsode', 'Runge-Kutta Orden 2', 'Runge-Kutta Orden 4');
  legend(h, 'location', 'southwest');
  
  hold off;