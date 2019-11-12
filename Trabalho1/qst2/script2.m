clc
clear all
close all

k = 5;
p = 2/5;
Nexp = 10000;

#----------Simulado---------------------------------------------------------------------

#---PMF_simulada---
for i = 1 : Nexp
  y(i) = rand_pascal(k,p);
end

maior = (k+max(y));

Sk = k: maior; 

hist_n = hist(y,Sk);
pmf_prat = hist_n/Nexp;

pmf_prat;
stem(Sk,pmf_prat);
hold on

#---Media_simulada---
x = k;
for i = 1 : max(y)
  med(i) = x*pmf_prat(i);
  x = x+1;
end
media_sim = sum(med);
media_sim

#---Variância_simulada---
z = k;
for i = 1 : max(y)
  ez(i) = (z**2)*pmf_prat(i);
  z = z+1;
end
ez2 = sum(ez);

var_prat = ez2 - (media_sim**2);
var_prat


#----------Teorico-------------------------------------------------------------------------

#---PMF_teorica---
pn = zeros(1,k+1);
n = k;
for i = 1 : (max(y)+1) 
  pn(i) = pmf_n(k,n,p);
  n = n+1;  
end
Sn = k:maior;
bar(Sn,pn,'g'); 


#---Media_teorica---

media_teor = media(k,p);
media_teor

#---Variancia_teorica---

var_teor = variancia(k,p);
var_teor
