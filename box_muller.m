%Criar um gaussiana sem o randn apenas com o rand

Nexp = 100000;

U1 = rand(1,Nexp);
U2 = rand(1,Nexp);

SU = -0.1:0.05:1.1;

freq_U1 = hist(U1,SU);
pdf_U1 = freq_U1 / trapz(SU,freq_U1);

freq_U2 = hist(U2,SU);
pdf_U2 = freq_U2 / trapz(SU,freq_U2);

figure(1)

subplot(2,2,1);
bar(SU,pdf_U1);

subplot(2,2,2);
bar(SU,pdf_U2);

%----Box-Miller---
R = sqrt(-2*log(U1));
T = 2*pi*U2;

Z0 = R.*cos(T);
Z1 = R.*sin(T);
%-----------------

SZ = -3:0.05:3;

freq_Z0 = hist(Z0,SZ);
pdf_Z0 = freq_Z0 / trapz(SZ,freq_Z0);

freq_Z1 = hist(Z1,SZ);
pdf_Z1 = freq_Z1 / trapz(SZ,freq_Z1);


subplot(2,2,3);
bar(SZ,pdf_Z0);

subplot(2,2,4);
bar(SZ,pdf_Z1);






