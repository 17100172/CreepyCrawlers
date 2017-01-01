function [ Crawler, CrawlB_Data, AlphaCrB ] = MakeCrawler( Bus )

[CrawlH_Data, mapCrH, AlphaCrH] = imread('crawlh.png');
[CrawlB_Data, mapCrB, AlphaCrB] = imread('crawlb.png');

Crawler.Length = 2;

if Bus.Xpos == 20;
   Crawler.Xpos = [460 460]; 
else Crawler.Xpos = [20 20];
end
Crawler.Xvel = [0 0];
Crawler.Ypos = [60 20];
Crawler.Yvel = [2 2];
Crawler.Head =  imagesc (CrawlH_Data,'XData',[Crawler.Xpos(1)-22 Crawler.Xpos(1)+22],'YData',[Crawler.Ypos(1)+22 Crawler.Ypos(1)-22],'AlphaData',AlphaCrH);
Crawler.Body1 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(2)-22 Crawler.Xpos(2)+22],'YData',[Crawler.Ypos(2)+22 Crawler.Ypos(2)-22],'AlphaData',AlphaCrB);


end

