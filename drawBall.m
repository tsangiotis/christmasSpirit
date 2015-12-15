%Draws a ball ornament with the given coordinate in the given color
%Note:Given coordinates apply to the center of the ball.
function drawBall(dx,dy,dz,color,scale) 

[x,y,z] = sphere;

%move ball to the right place and get the plot handle
ballHandle = surf(x*scale+dx, y*scale+dy, z*scale+dz);

%Assign colormap just to the plot handle object of the present, so the tree
%does not change color
set(ballHandle, 'FaceColor', color,'EdgeColor','none','LineStyle','none','FaceLighting','phong')

end % of function