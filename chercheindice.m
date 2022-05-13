function indice_strie=chercheindice(X,Y,a)
l=length(Y);
indicestock=10000;
indice_strie=[];
if a==90
    a=90.0001;
end
if a==270
    a=270.0001;
end
for i=1:l
    indice=Y(i)-tand(a)*X(i);
    if indice==0
        indice_strie=i;
        break
    elseif abs(indice)<abs(indicestock)
        indicestock=indice;
        indice_strie=i;
    end
end