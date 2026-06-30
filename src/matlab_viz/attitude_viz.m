close all
clear 
clc
figure
hold on
grid on
axis equal
view(3)

origin = [0 0 0];
L = 0.5;

xAxis = L*[1 0 0];
yAxis = L*[0 1 0];
zAxis = L*[0 0 1];

xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
q1=quiver3(origin(1),origin(2),origin(3),xAxis(1),xAxis(2),xAxis(3),'r','LineWidth',1);
q2=quiver3(origin(1),origin(2),origin(3),yAxis(1),yAxis(2),yAxis(3),'g','LineWidth',1);
q3=quiver3(origin(1),origin(2),origin(3),zAxis(1),zAxis(2),zAxis(3),'b','LineWidth',1);
tic
for i=1:100
    q1.XData=i/200;
    q2.XData=i/200;
    q3.XData=i/200;
    q1.YData=i/200;
    q2.YData=i/200;
    q3.YData=i/200;
    q1.ZData=i/200;
    q2.ZData=i/200;
    q3.ZData=i/200;
    
    drawnow 
    target = i*0.05;
    while toc < target
    end
end
toc



