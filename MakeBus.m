function [ Bus ] = MakeBus(  )
[Bus_Data, mapB, AlphaB] = imread('bus.png');

randN = randi(12);

Bus.Yes = 1;
if randN <= 6
    Bus.Xpos = 20;
else Bus.Xpos = 460;
end
Bus.Xvel = 0;
Bus.Ypos = 20;
Bus.Yvel = 2;
Bus.Bus = imagesc(Bus_Data,'XData',[Bus.Xpos-22 Bus.Xpos+22],'YData',[Bus.Ypos+30 Bus.Ypos-30],'AlphaData',AlphaB);
% Bus_Data = imrotate(Bus.Bus,90);
% set(Bus.Bus,'cdata',Bus_Data);

end

