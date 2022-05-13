function [B]=frtoit(B,D)
%B=azimuth
%C=pendage
%D=orientation pendage
%Permet de passer à une descritpion des azimuths française à italienne
%Car plus simple à utiliser pour la suite 

j=length(B);
for i=1:j
    b=B(i);d=D(i);
    if b==0
        if ismember(d,'N')||ismember(d,'S')
            error ('erreur')
        elseif ismember(d,'E')
            b=90;
        elseif ismember(d,'W')
            b=270;
        end
    elseif b>0 && b<90
        if ismember(d,'N')||ismember(d,'W')
            b=b+270;
        elseif ismember(d,'S')||ismember(d,'E')
            b=b+90;
        end
    elseif b==90
        if ismember(d,'E')||ismember(d,'W')
            error ('erreur')
        elseif ismember(d,'S')
            b=180;
        elseif ismember(d,'N')
            b=360;
        end
    elseif b>90 && b<180
        if ismember(d,'N')||ismember(d,'E')
            b=b+270;
        elseif ismember(d,'S')||ismember(d,'W')
            b=b+90;
        end
    elseif b>=180||b<0
        error ("L'azimut rentré n'est pas conforme")
    end
    B(i)=b;
end
