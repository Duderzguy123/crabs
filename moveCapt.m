function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta );
dTheta = pi/6;
dStep = 50;
if( cmd == "w" || cmd == "w"); %move forward
xCapt = x+dStep*cos(theta);
yCapt = y+dStep*sin(theta);
thetaCapt = theta;
elseif ( cmd == "d" || cmd == "D"); %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;
elseif ( cmd == "a" || cmd == "A"); %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;
else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction
