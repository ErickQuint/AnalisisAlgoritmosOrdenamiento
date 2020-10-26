%%VALORES DE X
x=[100 1000 5000 10000 50000 100000 200000 400000 600000 800000 1000000 2000000 3000000 4000000 5000000 6000000 7000000 8000000 9000000 10000000];
real = [0.0000119209 0.0001769066 0.0012068748 0.0025959015 0.0172801018 0.0396029949 0.0838758945 0.1962869167 0.2916231155 0.4324190617 0.5192661285 1.2047410011 1.9465949535 2.7086930275 3.6381030083 4.3850071430 5.2346160412 6.2488410473 6.8895921707 8.3474898338];
 cpu = [0.0000170000 0.0001820000 0.0012120000 0.0026000000 0.0172830000 0.0396080000 0.0835880000 0.1962840000 0.2916280000 0.4317440000 0.5191840000 1.1998150000 1.9464810000 2.7074610000 3.6380150000 4.3842670000 5.2319670000 6.2417390000 6.8892570000 8.3460700000];
  es = [0.0000000000 0.0000000000 0.0000000000 0.0000000000 0.0000000000 0.0000000000 0.0002940000 0.0000000000 0.0000000000 0.0001940000 0.0000000000 0.0040090000 0.0000750000 0.0000000000 0.0000160000 0.0000180000 0.0000740000 0.0038870000 0.0000000000 0.0000190000];
%%VALORES DE Y = F(x)
y=[0.0000119209 0.0001921654 0.0013630390 0.0031859875 0.0170681477 0.0386910439 0.0840148926 0.1872608662 0.2848520279 0.4157049656 0.5094668865 1.1705238819 1.9059309959 2.6567611694 3.5743601322 4.3076448441 5.1210191250 6.1237020493 6.7596480846 8.2133541107];
format long;
%%OBTENER UN POLINOMIO QUE SE AJUSTE A LOS PUNTOS X Y Y
n=8; 				%%GRADO DEL POLINOMIO DE AJUSTE
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);
p3=polyfit(x,y,3);
p4=polyfit(x,y,4);
p8=polyfit(x,y,8);%%FUNCION QUE REALIZA EL AJUSTE POLINOMIAL

xi=linspace(0,10000000,60000);	%%ESPACIO DE PUNTOS PARA Xi

figure;
y1=polyval(p1,xi);
y2=polyval(p2,xi);
y3=polyval(p3,xi);
y4=polyval(p4,xi);
y8=polyval(p8,xi);%%EVALUACION DEL POLINOMIO P EN EL ESPACIO Xi

bt = [0.2286939621 0.2283450000;];
c = categorical({'Tiempo real', 'Tiempo CPU'});
format long;
bar(c,bt, .4);

%%plot(x, real, 'o', x, cpu, 'o', x, es, 'ok'), grid;
%%plot(x,y,'o',xi,y1,'-',xi,y2,'-',xi,y3,'-',xi,y4,'-',xi,y8,'-'),grid;
%%plot(x,y,'o',xi,y1,'-'),grid;
ylabel('Tiempo (segundos)');
xlabel('Tamaño del problema (n)');
title('Comparativa temporal real vs cpu Shell Sort');
