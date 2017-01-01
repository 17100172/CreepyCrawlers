figure

clc

hsurf = uicontrol('Style','pushbutton','Position',[232,117,110,31],'Callback','GUI2');
smiley = importdata('toggle1.png');
 
%set the smiley image as the button background
set(hsurf ,'CDATA',smiley);
Toggle1 = imread('menu2.png');
imshow(Toggle1)
