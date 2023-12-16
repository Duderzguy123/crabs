function crabs(level)
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
%initialize command and map dimensions and drawmap
[mapHeight , mapWidth] = drawMap( "BGImage.png" );

restart = 1;



%drawMap ( "intro..." );

%want the crabs to always move so we get it moving

% Initialize captain location, heading and size

cmd = "null";

%initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 50;
crabsCaught = 0;

numBubbles=6;

%initialize crab
numCrabs = level;
xCrab = rand(1,numCrabs)*mapWidth;
yCrab = rand(1,numCrabs)*mapHeight/4 + 3*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
sizeCrab = 50;
crabsCaught = 0;
isCrabCaught=zeros(1,numCrabs);



numJelly = level;
%initialize jellyfish
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numJelly)*mapHeight;
thetaJelly = pi/2;
sizeJelly = 25;
jellySting = 2;




% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

%*******************************************************

%initialize graphics for capt, crabs and jelly and bubble

[captainGraphics,xNet,yNet,xMouth,yMouth] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);
for k=1:numCrabs
crabGraphics(:,k) = drawCrab (xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
endfor

for j=1:numJelly
jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly,sizeJelly);
endfor

%initialize bubbles
maxBubbleSize = 30;
xBubble = xMouth*ones(1,numBubbles);
yBubble = yMouth*rand(1,numBubbles);
sizeBubble = 5 + maxBubbleSize*rand(1,numBubbles);

for b=1:numBubbles
bubbleGraphics(b) = drawBubble(xBubble(b),yBubble(b),sizeBubble(b));
endfor

%*******************************************************


%print number stuff for health and crabs caught

%binary representation of values, computer reads it



% print health status
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 18, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 18, 'Color', 'red');

%main loop
%catch status

##%play background sounds

## this is music we want to loop

##[signal, sampleRate] = audioread('C:/Users/pasta/OneDrive/Documents/GitHub/Crabs_Octave/crabs-main/Sounds/ [put sound thing here]');
##player = audioplayer(signal,sampleRate);
##play(player);


%while (restart)


while(1) %start game loop
commandwindow();
cmd=kbhit(1);

%level changing keyboard hit

##if (cmd == '1' ||cmd == '2' ||cmd == '3' ||cmd == '4' ||cmd == '5' ||cmd == '6' ||cmd == '7' ||cmd == '8' ||cmd == '9' ||);
##level = str2num(cmd);
##break
##endifpause (.1)


%remove old and plot new health and points status to screen
delete(healthStatus);
delete(crabsCaughtStatus);

healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 18, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 18, 'Color', 'red');



    %erase old jellyfish
  for j=1:numJelly
    set(jellyGraphics(:,j),'Visible','off');
    %draw jellyfish
  %moveJelly
  [xJelly(j),yJelly(j),thetaJelly] = moveJelly (level,xJelly(j),yJelly(j), thetaJelly, sizeJelly, mapHeight, mapWidth);
%drawJellyfish
jellyGraphics(:,j) = drawJelly (xJelly(j),yJelly(j),thetaJelly,sizeJelly);
endfor




%check if captain got stung by a jellyfish if so drop hp
for j=1:numJelly
  if(getDist (xJelly(j),yJelly(j),xCapt,yCapt) < 5*sizeCapt)
  healthCapt = healthCapt - jellySting;
endif
endfor

  %check if crab is caught, add points and erase them
for k=1:numCrabs
  if(!isCrabCaught(k) && (getDist(xCrab(k),yCrab(k),xNet,yNet) < 2*sizeCapt)) %crab caught

  %crab caught counter
  crabsCaught = crabsCaught + 1;
  isCrabCaught(k)=1;
  set(crabGraphics(:,k),'Visible','off');
  endif
  endfor

%use danger function to make crabs run away from the net

## if(!isCrabCaught(k)  && ( getDist (xCrab(k),yCrab(k),xNet,yNet) < 7*sizeCapt)) %crab runs
##
##  for k=1:numCrabs
##    %crab movement
##    set(crabGraphics(:,k),'Visible','off');
##  thetacrab(k)=getTheta(xNet - xCrab(k),yNet - yCrab(k));
##
##  [xCrab(k),yCrab(k),thetaCrab(k)] = moveCrab ("k",xCrab(k),yCrab(k),thetaCrab(k),size,height,width)
##
##  crabGraphics(:,k) = drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
##
##  endfor
##endif


##%draw crabs
##for k=1:numCrabs
##
##endfor

%quit out, die or all crabs caught


if (cmd == "Q" || healthCapt<0 ||crabsCaught == numCrabs)
 break
endif
%in the gameover screen, if you die this sound plays

if (healthCapt < 0)
   [signal, sampleRate] = audioread('C:\Users\pasta\OneDrive\Documents\GitHub\Crabs_Octave\crabs-main\Sounds\mixkit-arcade-retro-game-over-213.wav');
gameover = audioplayer(signal,sampleRate);
play(gameover);
   endif



%check captains health status and break if its too low



##if (healthCapt < 0)
##  break;
##  endif
##endfor



  %captain movement
  if(cmd=="w"||cmd=="a"||cmd=="d"|| cmd=="W"||cmd=="A"||cmd=="D") %movement commands
##erases old captain
   for i=1:length(captainGraphics)
     set(captainGraphics(i),'Visible','off');
   endfor
   %move capt
   [xCapt,yCapt,thetaCapt]=moveCapt(cmd,xCapt,yCapt,thetaCapt);
   %draw new capt
   [captainGraphics,xNet,yNet,xMouth,yMouth] = drawCapt(xCapt,yCapt,thetaCapt,sizeCapt);
endif

for b=1:numBubbles

  set(bubbleGraphics(b),'Visible','off');

  %move bubble
  [xBubble(b),yBubble(b)] = moveBubble (xBubble(b),yBubble(b),xMouth,yMouth);

  %drawBubbles
  bubbleGraphics(b) = drawBubble(xBubble(b),yBubble(b),sizeBubble(b));
endfor

  fflush(stdout);
  pause (0.1);


endwhile %main game while loop
%draw endscreen
restart = drawEndScreen ("image image.png",crabsCaught,numCrabs);
drawMap( "endscreen" );

%endwhile %restart game while loop
%close all
endfunction
