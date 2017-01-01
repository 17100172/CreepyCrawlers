function [ ] = Background( )
figure
hold on
axis equal
axis([-20 500 0 300])

Backgr_Data = imread('background.png');
BackGr = imagesc (Backgr_Data,'XData',[-20 500],'YData',[300 0]);


end

