#funcion para generar vector de condiciones iniciales,el mismo para todos los escenarios
#no recibe parametros
#devuelve vector con las condiciones iniciales

function [V0] = condiciones_iniciales()
    V0(1)= 1000; #x1(0)
    V0(2)= 0.1;    #x2(0)
    V0(3)= 0.1;    #x3(0)
    V0(4)= 100;  #y1(0)
    V0(5)= 10;   #y2(0)
    V0(6)= 20;   #z1(0)
    V0(7)= 15;   #z2(0)
    V0(8)= 15;   #z3(0)
endfunction

