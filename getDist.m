function dist = getDist (x1,y1,x2,y2)

  %dist = sqrt(ycrab-yNet)^2 + (xCrab-xNet)^2


  dX = x2-x1;
  dY = y2-y1;

  dist = sqrt(dX^2+dY^2);

endfunction



#Head - Tail

# A^2+B^2=C^2
