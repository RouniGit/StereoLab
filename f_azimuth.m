function a=f_azimuth(azimuth,p)
rot_azimuth =[cosd(azimuth),sind(azimuth),  0; -sind(azimuth), cosd(azimuth),0; 0,0,1];
a = rot_azimuth*p; 
end