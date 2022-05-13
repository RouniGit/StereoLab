function coordpitch=tracepitch(pitchplan,dip)
%calcul les coordonnée du pitch par rapport au pendage

y = 0*pitchplan;
x=cosd(pitchplan); 
z=sind(pitchplan);
coord= [x,x;y,y;z,-z];
coordpitch=pendage(90-dip,coord);
end