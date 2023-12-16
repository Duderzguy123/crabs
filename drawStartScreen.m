function level = drawStartScreen (imgName)

  drawMap(imgName);
  hold on


  messageLoc = [450,750];
  myMessage = ['Enter a Level 1-9 '];
  myText = text(messageLoc(1), messageLoc(2), myMessage, 'FontSize', 40, 'Color', 'red');
  level = getLevel ();
  levelLoc = [300,300];



  pause(2)
  hold off

  endfunction
