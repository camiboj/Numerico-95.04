#funcion para generar el vector de tiempos
#cada componente es un valor de tiempo para el que se calcula el valor de cada variable
#recibe el valor inicial, el final y el paso
#devuelve el vector traspuesto

function [T] = vector_tiempos(t0, tf, h)
  T = t0:h:tf;
  T = T';
endfunction
