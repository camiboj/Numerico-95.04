#funciones derivadas para escenario 3
#recibe escenario, vector con valor de cada varaible y tiempo para evaluar
#devuelve vector de resultados de evaluar cada funcion con los valores de entrada
#V(1)=x1 V(2)=x2 V(3)=x3 V(4)=y1 V(5)=y2 V(6)=z1 V(7)=z2 V(8)=z3

function [valor_derivada] = fprima3(V, t)
  nu=0.004;
  betaxy=0.75;
  tita=0.1428;
  mu=0.00042;
  delta=0.143;
  phi=0.49;
  omega123=0.2;
  epsilon123=0.143;
  tau=7;
  T1=3;
  T2=7;
  T3=3;
  u1=0;
  u2=0;
  u3=0;  
  
  valor_derivada(1)=nu*(V(1)+V(2)+V(3)) - (betaxy*(1-u1)*V(5)/(V(4)+V(5)))*V(1) - mu*V(1); #valor x1'
  valor_derivada(2)=(betaxy*(1-u1)*V(5)/(V(4)+V(5)))*V(1) - tita*V(2)*(t-tau) - mu*V(2); #valor x2'
  valor_derivada(3)=tita*V(2)*(t-tau) - mu*V(3); #valor x3'
  valor_derivada(4)=omega123*V(8)*(t-T3) - (betaxy*V(2)/(V(1)+V(2)+V(3)))*V(4) - (delta+u2)*V(4); #valor y1'
  valor_derivada(5)=(betaxy*V(2)/(V(1)+V(2)+V(3)))*V(4) - (delta+u2)*V(5); #valor y2'
  valor_derivada(6)=phi*(V(4)+V(5)) - omega123*V(6)*(t-T1) - (epsilon123+u3)*V(6); #valor z1'
  valor_derivada(7)=omega123*V(6)*(t-T1) - omega123*V(7)*(t-T2) - (epsilon123+u3)*V(7); #valor z2'
  valor_derivada(8)=omega123*V(7)*(t-T2) - omega123*V(8)*(t-T3) - (epsilon123+u3)*V(8); #valor z3'
endfunction