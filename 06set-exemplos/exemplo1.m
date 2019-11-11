#Exemplo aula 27-08

#rand(2,12) gera uma matriz com 2 linha e 12 colunas 
#rand gera apenas valores entre 0 e 1
#para ter uma rand entre [10,13] basta 3* rand(2,12) + 10;

Nexp = 1e6;

X = rand(1, Nexp);

# de -0.1 a 1.1 com passo 0.1
xbins = -0.1:0.01:1.1;
histograma_X = hist(X,xbins);

pdf_x_simul = histograma_X / trapz(xbins,histograma_X);

#plot(xbins,pdf_x_simul,'LineWidth',4);


#fazendo para o y
Y = X.^2;

ybins = -0.1:0.01:1.1;
histograma_Y = hist(Y,ybins);

pdf_y_simul = histograma_Y / trapz(ybins,histograma_Y);

plot(xbins,pdf_x_simul,'LineWidth',4)
hold on
plot(ybins,pdf_y_simul,'LineWidth',4,'r')
