function [y,hnorm]=histograma(u)
%HISTOGRAMA(U) retorna um histograma da imagem fornecida f, a imagem deve ser do
%timpo uint8.H representa o número de vezes que um pixels de intensidade k
%é encontrada na imagem de entrada.HNORM é o valor normalizado de Y e indica a probabilidade de ocorrencia de k. 
u=im2uint8(u);
[M,N]=size(u);
h=zeros(1,256);
for i=1:1:M
    for j=1:1:N
    k=u(i,j);
    h(k+1)=h(k+1)+1;
    end
end
hnorm=h/numel(u);%função de probabilidade dos valores de intensidade da imagem 
horz=0:1:255;
y=h;
bar(horz,h,0.4)
ylim('auto')
xlim([0 255])
set(gca,'xtick',0:25:255)