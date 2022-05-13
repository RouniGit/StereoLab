function p=pendage(dip,coord)
rot_dip = [1,0,0;0, cosd(dip),sind(dip);0, -sind(dip), cosd(dip)];
p = rot_dip*coord;
end