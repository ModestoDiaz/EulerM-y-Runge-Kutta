clc;
clear
format long %permite utilizar la maxima capacidad de la maquina
fprintf('RUNGE KUTTA\n\n\n');
function [x, y] = rungeKuttaOrdenCuatro(f, ti , tf,  h) 
  x = ti:h:tf;  % [ ti , ti=ti+h...   tf ]  
  y(1) = 4;  %asignando el primer valor al vector y[1] = 4
  
  for i=1:length(x)-1
     k1 = f(x(i), y(i));
     k2 = f(x(i) + (h/2), y(i) + ((k1*h)/2));
     k3 = f(x(i) + (h/2), y(i) + ((k2*h)/2));
     k4 = f(x(i) + h, y(i)+ k3*h);
     y(i+1) = y(i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4)*h;    
   endfor
endfunction   
 
f = @(x,t) (t + 1)*(x + 1)*cos(x^2 + 2*x);
ti = input("ingrese el valor del tiempo inicial ti: ");
tf = input("ingrese el valor del tiempo inicial tf: ");
h = input("ingrese el valor de paso h: ");
[x, y] = rungeKuttaOrdenCuatro(f, ti, tf, h);

fprintf("%s\t  %s\n", "x" ,"y");
for i=1:length(x) 
   fprintf("%.4f\t", x(i));
   fprintf("%.4f", y(i));
   fprintf("\n");
endfor
plot(x, y,"r*")
xlabel("Eje x")
ylabel("Eje y")
title("Grafica Runge-Kutta: ")