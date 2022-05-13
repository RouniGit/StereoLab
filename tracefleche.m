function [a,b]=tracefleche(A,X,Y)


if ismember(A,'N')||ismember(A,'I')
    a=[0.05250 0.07 0 0.07 0.05250];
    b=[0.0175 0 0 0 -0.0175];
    coord=[a;b];
    if X<0 & Y>0
        t=abs(atand(X/Y));
    elseif X<0 & Y<0
        t=abs(atand(Y/X))+90;
    elseif X>0 & Y<0
        t=abs(atand(X/Y))+180;
    elseif X>0 & Y>0
        t=abs(atand(Y/X))+270;
    end
    if ismember(A,'I')
        t=t+180;
    end
end

if ismember(A,'D')
    c=[-0.035 0 0 0.035];
    d=[0.035 0.07 -0.07 -0.035];
    coord=[c;d];
    if X<0 & Y>0
        t=abs(atand(X/Y))+90;
    elseif X<0 & Y<0
        t=abs(atand(Y/X))+180;
    elseif X>0 & Y<0
        t=abs(atand(X/Y))+270;
    elseif X>0 & Y>0
        t=abs(atand(Y/X));
    end
end

if ismember(A,'S')
    e=[0.035 0 0 -0.035];
    f=[0.035 0.07 -0.07 -0.035];
    coord=[e;f];
    if X<0 & Y>0
        t=abs(atand(X/Y))+90;
    elseif X<0 & Y<0
        t=abs(atand(Y/X))+180;
    elseif X>0 & Y<0
        t=abs(atand(X/Y))+270;
    elseif X>0 & Y>0
        t=abs(atand(Y/X));
    end
end
 rot= [cosd(t),sind(t);-sind(t), cosd(t)];
    rc=rot*coord;
    a=rc(1,:)+Y; b=rc(2,:)+X;
end
