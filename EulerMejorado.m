clc
clear
format long %permite utilizar la maxima capacidad de la maquina
fprintf('EULER MEJORADO\n\n\n');
F=input('Ingrese la Función f: ');
X(1)=input('Ingrese X(1): ');
Y(1)=input('Ingrese Y(1): ');
XP=input('Ingrese XP: ');
N=input('Ingrese el número de intervalos n: ');
H=abs(XP-X(1))/N;
X=[X(1):H:XP];%Calculo de las x
for i=[1:N]
  Y(i+1)=Y(i)+H*F(X(i),Y(i));
  Y(i+1)=Y(i)+H/2*(F(X(i),Y(i))+F(X(i+1),Y(i+1)));
endfor
printf('YP: %.5f\n',Y(N+1))
