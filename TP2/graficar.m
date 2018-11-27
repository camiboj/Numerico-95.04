function graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo)
  
  ##############################################################################################
  #      col1, col2, col3 y bla tienen que cambiar por nombre de atibuto de cada columna       #
  ##############################################################################################
  
  #     #     #     #     #     #     #     #     #     #     #     #     #
  #  tampoco se bien si son 4 o mas, pero de ultima es repetir la linea   #
  #     #     #     #     #     #     #     #     #     #     #     #     #

  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "col1", 1)
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "col2", 2)
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "col3", 3)
  _graficar(T, U_euler, U_lsode, U_rk2, U_rk4, titulo, "col4", 4)

endfunction