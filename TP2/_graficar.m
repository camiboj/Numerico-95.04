function _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, atributo, columna, plot_num)
  
  hold on;  
  

  figure (plot_num);
  
  
  
  plot(T, U_euler(1:6001, columna), 'k-.',
       T, U_lsode(1:6001, columna), 'm:', 
       T, U_rk2(1:6001, columna), 'g--', 
       T, U_rk4(1:6001, columna), 'b-');
  
  title(titulo);
  ylabel(atributo);
  xlabel("Tiempo");
  
  h = legend('Euler', 'Lsode', 'Runge-Kutta Orden 2', 'Runge-Kutta Orden 4');
  legend(h, 'location', 'southwest');
  
  filename = strcat(int2str(plot_num),"-", atributo, ".pdf");
  hgsave(filename);
  hold off;