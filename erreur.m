function erreur(A,B,C,D,E,F)
%A=type de faille; B=Azimuth; C=Pendage; D=Orientation; E=Azimuth Pitch; F=Orientation Pitch;
j=length(B);
for i=1:j
    a=A(i);b=B(i);c=C(i);d=D(i);e=E(i);f=F(i);
    if b==0
        if ismember(d,'N')||ismember(d,'S')
            errordlg ({"L'orientation de la faille rentré n'est pas conforme par rapport à son azimuth. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
    elseif b==90
        if ismember(d,'E')||ismember(d,'W')
            errordlg ({"L'orientation de la faille rentré n'est pas conforme par rapport à son azimuth. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
        if ismember(f,'N')||ismember(f,'S')
            errordlg ({"L'orientation du pitch rentré n'est pas conforme par rapport à son azimuth. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
    elseif b>=180||b<0
        errordlg ({"L'azimut rentré n'est pas conforme. ";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
    if ismember(a,'Fe')||ismember(a,'St')||ismember(a,'Pi')
        if ~isnan(e)
            errordlg ({"Ce type de faille ne peuvent pas avoir de pitch. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
    end
    if isnan(e)
        if ~cellfun(@isempty,f)
            errordlg ({"Il ne peut pas y avoir une orientation du pitch si il n'y a pas de valeur pour l'azimuth du pitch. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
    elseif e>90
        if ~cellfun(@isempty,f)
            errordlg ({"Soit l'azimuth du pitch est incorrect, soit cette azimuth de pitch ne peut pas avoir d'orientation. ";'Veuillez vérifier vos données !'})
            error('Veuillez vérifier vos données !')
        end
    elseif e>=180||e<0
        errordlg ({"L'azimut de pitch rentré n'est pas conforme. ";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
    if e==360
        errordlg ({"L'azimut de pitch rentré n'est pas conforme. ";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
    if c>=90||c<0
        errordlg ({"Le pendage rentré n'est pas conforme. ";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
    if ~ismember(a,'Fe') && ~ismember(a,'St') && ~ismember(a,'Pi') && ~ismember(a,'N') && ~ismember(a,'S') && ~ismember(a,'D') && ~ismember(a,'I')
        errordlg ({"Ce type de faille n'existe pas.";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
    if ~ismember(d,'W') && ~ismember(d,'E') && ~ismember(d,'S') && ~ismember(d,'N')
        errordlg ({"Ce type d'orientation de faille n'existe pas.";'Veuillez vérifier vos données !'})
        error('Veuillez vérifier vos données !')
    end
end

