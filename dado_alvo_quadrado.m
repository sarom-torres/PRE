%problema do jogador inexperiente jogando dardos.(Caderno)

Nexp = 1000000;

X = rand(1,Nexp); %sorteia uma matriz com 1 linha e Nexp colunas entre 0 e 1
Y = rand(1,Nexp);

figure(1)
scatter(X,Y); %plot os valores como pontos no grafico

D = sqrt((X-0.5).^2 + (Y-0.5).^2); %0.5 pq o grafico esta de 0-1 no x e 0-1 no y entao no centro e (0.5,0.5)
SD = -0.1:0.01:0.8; %config o espaço amostral da variavel (-0.1 para poder os valores anteriores a 0)
                    %o passo influencia na quantia das barras


freq_D = hist(D,SD); 
pdf_D = freq_D / trapz(SD,freq_D) %normalizando a freq com o metodo dos trapezios(eixox, eixoy) 

figure(2)
bar(SD,pdf_D,'r')%plotar em barra que fica mais agradavel

figure(3)
plot(SD,pdf_D,'b')%assim tambem esta correto so que fica menos agradavel 
