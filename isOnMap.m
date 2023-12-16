function inBounds = isOnMap (x,y,width,height,boarder)
  %decide if the point x,y is on the map minus a boarder


  if (x > boarder && x < width-boarder && y > boarder && y < height-boarder)
    inBounds = true;
  else
    inBounds = false;
  endif
endfunction
