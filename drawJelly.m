function jellyGraphics = drawJelly (xJelly,yJelly,thetaJelly,sizeJelly)

%getjelly
  jelly = getJelly (sizeJelly);

  %rotate
  R = getRotation(thetaJelly);
 jellyRotated = R * jelly;

%translate
T =getTranslation(xJelly,yJelly);
jelly = T * jellyRotated;


hold on

  pt1=jelly(:,1);
  pt2=jelly(:,2);
  pt3=jelly(:,3);
  pt4=jelly(:,4);
  pt5=jelly(:,5);
  pt6=jelly(:,6);
  pt7=jelly(:,7);
  pt8=jelly(:,8);
  pt9=jelly(:,9);
  pt10=jelly(:,10);
  pt11=jelly(:,11);
  pt12=jelly(:,12);
  pt13=jelly(:,13);
  pt14=jelly(:,14);
  pt15=jelly(:,15);

  %connect points

  %left side
  jellyGraphics(1) = drawLine (pt1,pt2,'m');
  jellyGraphics(2) = drawLine (pt2,pt3,'m');


  %right
  jellyGraphics(4) = drawLine (pt4,pt5,'m');
  jellyGraphics(5) = drawLine (pt5,pt6,'m');
  jellyGraphics(6) = drawLine (pt6,pt7,'m');

  %middle side
  jellyGraphics(7) = drawLine (pt8,pt9,'m');
  jellyGraphics(8) = drawLine (pt9,pt10,'m');
  jellyGraphics(9) = drawLine (pt10,pt11,'m');

  %top
  jellyGraphics(10) = drawLine (pt12,pt13,'m');
  jellyGraphics(11) = drawLine (pt13,pt15,'m');
  jellyGraphics(12) = drawLine (pt14,pt15,'m');
  jellyGraphics(13) = drawLine (pt14,pt12,'m');
  %hold on before the draw jelly

  endfunction
