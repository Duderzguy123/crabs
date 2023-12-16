function jelly = getJelly (sizeJelly)

  %define jellyfish points
% left
  pt1 = [sizeJelly;-sizeJelly;1];
  pt2 = [3*sizeJelly;-2*sizeJelly;1];
  pt3 = [6*sizeJelly;-sizeJelly;1];

  % right
 pt4 = [sizeJelly;1.125*sizeJelly;1];
  pt5 = [3*sizeJelly;2*sizeJelly;1];
  pt6 = [5*sizeJelly;sizeJelly;1];
  pt7 = [7*sizeJelly;1.5*sizeJelly;1];

%start at right

% middle
 pt8 = [1*sizeJelly;0.5*sizeJelly;1];
 pt9 = [3.5*sizeJelly;-sizeJelly;1];
  pt10 = [6*sizeJelly;0.5*sizeJelly;1];
  pt11 = [9*sizeJelly;-sizeJelly;1];

  %HEAD
  pt12 = [sizeJelly;2*sizeJelly;1];
  pt13=[-2*sizeJelly;sizeJelly;1 ];
  pt14 = [sizeJelly; -2*sizeJelly;1];
  pt15 = [-2*sizeJelly;-sizeJelly;1];
  %return
  jelly=[pt1,pt2,pt3,pt4,pt5,pt6,pt7,pt8,pt9,pt10,pt11,pt12,pt13,pt14,pt15];

  endfunction
