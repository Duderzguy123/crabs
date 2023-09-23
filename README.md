# crabs

This read me describes the function of a game called crabs. It describes their inputs/outputs and how they work.

function crabs(): void -> image
-Purpose: Using the drawMap and drawCapt functions it draws the captian and the map
over the bg image file included

-Inputs: Nothing

-Outputs: The image of the game

-Dependencies of function: drawMap() and drawCapt()

-Example call: crabs

-Side Effects: none

function drawCapt(): xCapt(int), yCapt(int), thetaCapt(int), sizeCapt(int) -> vector
-Purpose: This function draws the Captain using the drawLine functions to connect the points from getCapt
-Inputs: xCapt and yCapt is the position, thetaCapt is the header, and sizeCpat is the size of the captain
-Outputs: This function returns a vector which is the captiain
-Dependencies of function: getCapt() and drawLine()
-Example call: drawCapt(xCapt, yCapt, thetaCapt, sizeCapt)
-Side Effects: plots points

function drawLine(): p(int), q(int), color -> void
-Purpose: Draws a line between p and q
-Inputs: p which is a starting position, q which is an ending position, color
-Outputs: none
-Dependencies of function: plot(), set()
-Example call: drawLine(10, 10, red)
-Side Effects: plots a point between p and q, and sets the color 

function drawMap(): imageName -> heght, weight
-Purpose: This function draws the background map for the game using the image named imageName
-Inputs: imageName which is the name of an image to draw the stuff over 
-Outputs: 
-Dependencies of function: imshow(), title(), imread()
-Example call: 
-Side Effects:

function getCapt(): number(integer) -> matrix
-Purpose: 
-Inputs: The input is the Capt Size
-Outputs: The output is Capt
-Dependencies of function: 
-Example call: capt = getCapt(10)
-Side Effects: none

function getTranslation(): deltaX, deltaY, -> matrix
-Purpose:
-Inputs:
-Outputs:
-Dependencies of function:
-Example call: 
-Side Effects:

