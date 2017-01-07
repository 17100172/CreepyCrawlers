> Summary:
Use the arrow keys to control the green caterpillar. Eating a bus increases a caterpillar’s length by 1 unit but not more than 4 units. If the green caterpillar collides with the purple caterpillar head-on, if its length is greater than the purple caterpillar, it eats the purple caterpillar and gains 1 unit length. If any caterpillar collides with the other caterpillar at a right angle from behind, it cuts off that caterpillar’s length. Eating a bus gains the player 5 points, eating a caterpillar 10 points and cutting the other caterpillar’s length gets him 0 points.
> Usage:
Start the game by clicking on the runme.m file. A GUI will open. Click on ‘Start’, choose the level of difficulty and start playing the game using the arrow keys.
> Programming:
I started off with taking a screenshot of the background of the game and editing it to make a grid. The background was a map with roads and building. The caterpillars and buses could only move on the roads. I figured that using if conditions in the code for x and y coordinates of the caterpillars and the buses to keep them on the roads would be an excessively lengthy process. So instead I edited the background to make a grid of 40x40 pixel units. Similarly I created a corresponding double array of the grid that represented roads by 1 and building by 0. So, for each iteration I checked if the position of each handle after adding the velocity fell into a 1 or a 0 and calculated the velocity accordingly.
Next I structured my code in a single while loop in a way that all the structures in the grid moved one complete unit and then checked the velocities of all the structures and if the coordinates of the heads of the caterpillars collided with each other, each other’s length or a bus.
I made a MoveUnit.m function file that took the output velocities of the structures from all the velocity-checking function files and added them to their current position. This is the only file in my code that contains pause. A for loop runs in this file with pause, sufficient number of times to move all the structures by one unit.
A function file CheckVelocityCaterpillar.m uses keyboard input function to determine the velocity of the green caterpillar. It stores the key pressed by the player in a variable and changes the velocity at the next road. For example, if the caterpillar is going up and the user presses the right arrow key, at every iteration the function file checks if the unit to the right of the caterpillar in the grid is a 0 or a 1. As soon as the file detects a road (a 1 in the grid) it changes the x and y velocity of the caterpillar accordingly.
A function file CheckVelocityBus.m moves the bus randomly on the roads. For this code I created a variable GridV that stored the values of the units up, down, left and right of the bus in the grid. If this vector only had a single 1 this meant the bus has reached a dead end and it has to turn back. If this vector had two 1’s one was the way the bus came from, so the other 1 represented the only way forward for the bus. More than two 1’s meant the bus was at crossroads so I used rand to determine which road the bus took.
I made three function files to check the velocity of the purple computer-operated caterpillar (crawler) according to the difficulty levels. In the hard level, the file checks the x position of the bus as compared to that of the crawler. If it is to the right, the crawler gets a positive velocity in x direction, of course when the grid allows. The same is then repeated for the y position. In the function files for the easy and medium level, I included the same code as that for the random motion of the bus. The probability that the crawler gets a random velocity instead of following the bus is greater in the easy level code as compared to the medium level code.
A function file CheckConditions.m checked if the head of the caterpillar or crawler collided with a bus and consequently, increased its length, added score (if caterpillar ate the bus) and made a new bus. However the maximum length for both the caterpillars is four units including the head. Eating more buses helps gain score but does not increase the length further.
Another function file CheckCollisions.m checked for head-on collisions between the caterpillars. If they collided, the function compared the lengths of the caterpillars. If the length of the green caterpillar was greater than that of the crawler, the caterpillar ate the crawler, its length increased (not more than four units), the player’s score increased and a new crawler was generated. Else, the crawler eats the caterpillar and the game is over. A message box appears which displays the player’s core.
The function file CheckCollisions2.m checked for other collisions between the caterpillars. If one of the caterpillars approached the other caterpillars perpendicularly and collided with its body, it cut off the other caterpillar’s length. This makes the other caterpillar’s length shorter and enabled it to eat the other caterpillar by a head-on collision. I included a for loop in this code to check if any of the caterpillar’s head collided with the other caterpillar’s body. For example, if the crawler’s length is 3 units, excluding its head, it has a body of 2 units. Every iteration of the for loop will check if the head of the caterpillar collided with any of these units. A problem I faced in this part of the code, that took me a while to figure out was that every time the caterpillar ran into the first of these 2 units, the if condition was met and the the body of the crawler was deleted. However, the for loop then continued to check for collisions for the complete initial length of the crawler and tried to access the 3rd unit of the crawler which has been deleted. So, at the very start of the function file, I stored the initial length of the crawler (and the caterpillar) in a variable CrLength (and CatLength). For every iteration it checked if the length of the crawler was still the same as its initial length. If that was the case, it continued with the iterations. If the new length of the crawler was less than the initial length of the crawler, it stopped checking for collisions with the previous length and in the process try to access index values out of bounds. Also initially my code for this function file was very long since I listed every possible output for every possible length of the caterpillars and the unit of the length with which it collided. I condensed the code by checking if the collision occurred on the first iteration (which meant the caterpillar collided with the second unit), I directly deleted the second unit, then deleted the third unit if the crawler’s length was greater than two and deleted the fourth unit if the crawler’s length was greater than three. If the collision occurred on the second iteration (which meant the caterpillar collided with the third unit), I deleted the third unit and if the crawler’s length was greater than three I deleted the fourth unit. If the collision occurred on the third iteration (which meant the caterpillar collided with the fourth unit), I just deleted the fourth unit of the caterpillar. I later similarly edited the code for the MoveUnit.m function file too for a shorter, more organized code.
I also included a GUI that showed the controls for the game and let us select the difficulty level for the game. I recorded and played the original sounds of the game in the code. I also added scoring in the game. Eating a bus gained the player 5 points, eating the crawler 10 points, while cutting the crawler’s length off from behind got him 0 points.
