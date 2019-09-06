#Exercicio 3 lista 1

#numero de experimentos -- valor alto para se aproximar da realidade
Nexp = 1e4; 

#gerando numeros aleatorios
# randi([intervalo], nlin, ncol)
D = randi([1 3], 1, Nexp);
X = zeros(1,Nexp);
Sx = [0,1,2,3];

for i = 1 : Nexp
  moedas = randi([0 1], 1 , D(i));
  X(i) = sum(moedas);
end

# hist(dados_al, bins) bins ´e como se divide o eixo x  (0 1 | 2 3)

histograma = hist(X,Sx);

#divide por Nexp para obter em 0.000
pmf_X_simul = histograma / Nexp;

#plotando o grafico da pmf_X_simul
bar(Sx, pmf_X_simul);

#media
mean(X)

#variancia
var(X)