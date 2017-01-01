function [ Caterpillar, CaterB_Data, AlphaCB ] = MakeCaterpillar(  )

[CaterH_Data, mapCH, AlphaCH] = imread('caterh.png');
[CaterB_Data, mapCB, AlphaCB] = imread('caterb.png');

Caterpillar.Length = 2;
Caterpillar.Xpos = [260 260];
Caterpillar.Xvel = [0 0];
Caterpillar.Ypos = [60 20];
Caterpillar.Yvel = [2 2];
Caterpillar.Head =  imagesc (CaterH_Data,'XData',[Caterpillar.Xpos(1)-22 Caterpillar.Xpos(1)+22],'YData',[Caterpillar.Ypos(1)+42 Caterpillar.Ypos(1)-22],'AlphaData',AlphaCH);
Caterpillar.Body1 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(2)-22 Caterpillar.Xpos(2)+22],'YData',[Caterpillar.Ypos(2)+22 Caterpillar.Ypos(2)-22],'AlphaData',AlphaCB);

end

