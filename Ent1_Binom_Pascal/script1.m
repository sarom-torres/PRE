n = 6; #numero de lancamentos

p = 0.5; #probabilidade de sucesso

Nexp = 100000; #numero de experimento

#-----Simulado------------------------------------------------------------------


#---PMF_pratica---
for j = 1: Nexp
  y(j) = rand_binom(n,p);
end

Sk = 0: n;

hist_y = hist(y,Sk);
hist_prat = hist_y/Nexp; #conferir o numero de experimentos
stem(Sk,hist_prat);
hold on

#---Media_pratica---
x = 0;
for j = 1: (n+1)
  med(j) = x*hist_prat(j);
  x = x+1;
end
av_prat = sum(med)



#-----Teorico-------------------------------------------------------------------

#---PMF_teorica---  
pk = zeros(1,n+1);

k = 0;
for i = 1 : (n+1)
  pk(i) = pmf_k(n,p,k);
  k = k+1;
end

Sk;
pk;
bar(Sk,pk,'y');

#---Media_teorica---
av_teor = media(n,p) 


