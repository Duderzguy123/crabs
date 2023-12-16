function restart = drawEndScreen (imgName,crabsCaught,numCrabs)

%draw endscreen
drawMap (imgName);
hold on

textLoc = [300,750];
myMessage= ['Good Job! You Caught ', num2str(crabsCaught), 'out of ', num2str(numCrabs)];
textHandle = text(textLoc(1), textLoc(2), myMessage, 'Fontsize', 40, 'Color', 'red');

pause(5)

delete(textHandle);


textHandle = text(textLoc(1), textLoc(2), strcat('Play again? Y/N'), 'Fontsize', 40, 'Color', 'red');

%read keyboard

while(1)

cmd=kbhit(1);
if(cmd=="y"||cmd=="Y")
restart = 1;
break;
elseif(cmd=="N"||cmd=="n")
restart=0;
break
endif


fflush(stdout);
pause(.01)

endwhile

endfunction
