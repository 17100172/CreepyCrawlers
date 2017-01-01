figure

clc

hsurf1 = uicontrol('Style','pushbutton','Position',[205,270,110,31],'Callback','ProjectEasy');
smiley1 = imread('Easy copy.png');
set(hsurf1 ,'CDATA',smiley1);

hsurf2 = uicontrol('Style','pushbutton','Position',[205,210,110,31],'Callback','ProjectMedium');
smiley2 = imread('Medium copy.png');
set(hsurf2 ,'CDATA',smiley2);

hsurf3 = uicontrol('Style','pushbutton','Position',[205,150,110,31],'Callback','Project');
smiley3 = imread('Hard copy.png');
set(hsurf3 ,'CDATA',smiley3);

Toggle1 = imread('background.png');
imshow(Toggle1)