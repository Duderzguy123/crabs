
function capt = getCapt (sizeCapt)
% Author Dr. Ken Owens
% IM BATMAN
% and im robin
% The function getCapt computes and returns the captain with zero heading located at the origin in the form of a matirx.
% The input parameters sizeCapt sets the size of the captain. The output is a matrix in which
% Each colunm of the returned matrix represents one point on the captain.

%{
                        The Captain
                            |
                            |                 |
                           |
                    14 ______12____________13          (Center 15)             17 |
                            |  \
                            |   \
                            |    \
               4________5________6
                        |   |    |
                        |   |    7 ---8
                        |   |    |    |
           ____________ | (0,0 ) |    | __________________ positive x-axis
                        |   |    |    |
                        |   |    10___9
                        |   |    |
               3________2________1
                            |  /
                            | /
                            |/
                            11
                            |
                            |
                            |
                            |
                         positive y-axis
%}

%right side
captPt1 = [   sizeCapt;  sizeCapt; 1];
captPt2 = [  -sizeCapt;  sizeCapt; 1];

%feet
captPt3 = [-3*sizeCapt;  sizeCapt; 1]; %left
captPt4 = [-3*sizeCapt; -sizeCapt; 1]; %right

%right side
captPt5 = [  -sizeCapt; -sizeCapt; 1];
captPt6 = [   sizeCapt; -sizeCapt; 1];

%head
captPt7 = [  sizeCapt;  -sizeCapt/2; 1];
captPt8 = [ 2 *sizeCapt;  -sizeCapt/2; 1];
captPt9 = [ 2*sizeCapt;   sizeCapt/2; 1];
captPt10 = [  sizeCapt;   sizeCapt/2; 1];



%hands
captPt11 = [   0;  2*sizeCapt; 1];  %left
captPt12 = [   0;  -2*sizeCapt; 1]; %right

%spear
captPt13=[ 3*sizeCapt; -2*sizeCapt; 1];
captPt14=[  -sizeCapt; -2*sizeCapt; 1];

%net
captPt13=[ 3*sizeCapt; -2*sizeCapt; 1];
captPt14=[ -sizeCapt; -2*sizeCapt; 1];
captPt15=[ 3*sizeCapt; -4*sizeCapt; 1];
captPt16=[ 5*sizeCapt; -4*sizeCapt; 1];
captPt17=[ 5*sizeCapt; -2*sizeCapt; 1];
captPt18=[ 5*sizeCapt; 0; 1];
captPt19=[ 3*sizeCapt; 0; 1];
captPt20=[ 4*sizeCapt; -2*sizeCapt; 1];

#mouth
captPt21 = [ 1.5*sizeCapt; 0; 1];

%Net Center
%CaptPt20=[4*sizeCapt; -2*sizeCapt; 1];


capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14 , captPt15, captPt16, captPt17, captPt18, captPt19, captPt20, captPt21];
endfunction
