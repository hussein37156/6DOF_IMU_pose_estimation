close all
clear 
clc
%matlab provided function
viewer=HelperOrientationViewer;
period = 0.00488;
counter=0;
Q=quaternion(dcm2quat(eye(3)));
viewer(Q);
pause(2)
loop_timer=tic;
for i=1:1000
    delay_timer=tic;
    Q=quaternion(dcm2quat(z_rotation(counter*360/1000.0)));
    viewer(Q);
    while toc(delay_timer) < period
    end
    counter=counter+1;
end
toc(loop_timer)
