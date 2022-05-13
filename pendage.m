function p=pendage(dip,coord)
%Permet de calculer les coordonnees après rotation d'angle dip

rot_dip = [1,0,0;0, cosd(dip),sind(dip);0, -sind(dip), cosd(dip)];
p = rot_dip*coord;
end