function XdFk = comp_X(Fkmod,loadP)
% Fkmod is the product of the normal force by the ratio of the radius of the disk
% brake and the radius of the wheel.
XdFk = Fkmod*0.35/loadP;
end
