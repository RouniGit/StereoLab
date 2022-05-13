function pitch=werepitch(a,dp,pitch)
%a=azimuth
%dp=direction pitch
%pitch=renvoie le pitch corrigé celon son orientation par rapport à l'azimuth du plan
if a==0
    if ismember(dp,'S')
        pitch=pitch+180;
    elseif ismember(dp,'E')||ismember(dp,'W')
        error 'ceci est une erreur :)'
    end
elseif a>0 && a<90
    if ismember(dp,'N')||ismember(dp,'E')
        pitch=pitch+180;
    end
elseif a==90
    if ismember(dp,'E')
        pitch=pitch+180;
    elseif ismember(dp,'N')||ismember(dp,'S')
        error 'ceci est une erreur :)'
    end
elseif a>90 && a<180
    if ismember(dp,'E')||ismember(dp,'S')
        pitch=pitch+180;
    end
elseif a==180
    if ismember(dp,'S')
        pitch=pitch+180;
    elseif ismember(dp,'E')||ismember(dp,'W')
        error 'ceci est une erreur :)'
    end
end
end