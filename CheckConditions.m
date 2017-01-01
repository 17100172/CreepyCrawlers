function [ Caterpillar, Crawler, Bus, score ] = CheckConditions( Caterpillar, Crawler, Bus, CaterB_Data, CrawlB_Data, AlphaCB, AlphaCrB, ybus, fsbus, score )
%%Checking collisions of Crawler with Bus
if Crawler.Xpos(1) == Bus.Xpos
    if Crawler.Ypos(1) == Bus.Ypos || Crawler.Ypos(1) == Bus.Ypos+40 || Crawler.Ypos(1) == Bus.Ypos-40
        sound(ybus, fsbus)
        delete (Bus.Bus);
        [Bus] = MakeBus;
        score = score + 5;
        if Crawler.Length < 4
            Crawler.Length = Crawler.Length + 1;
            Crawler.Xpos(Crawler.Length) = Crawler.Xpos(Crawler.Length-1)+Crawler.Xvel(Crawler.Length-1)*20;
            Crawler.Xvel(Crawler.Length) = 0;
            Crawler.Ypos(Crawler.Length) = Crawler.Ypos(Crawler.Length-1)+Crawler.Yvel(Crawler.Length-1)*20;
            Crawler.Yvel(Crawler.Length) = 0;
            
            if Crawler.Length == 2
                Crawler.Body1 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(2)-22 Crawler.Xpos(2)+22],'YData',[Crawler.Ypos(2)+22 Crawler.Ypos(2)-22],'AlphaData',AlphaCrB);
            elseif Crawler.Length == 3
                Crawler.Body2 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(3)-22 Crawler.Xpos(3)+22],'YData',[Crawler.Ypos(3)+22 Crawler.Ypos(3)-22],'AlphaData',AlphaCrB);
            elseif Crawler.Length == 4
                Crawler.Body3 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(4)-22 Crawler.Xpos(4)+22],'YData',[Crawler.Ypos(4)+22 Crawler.Ypos(4)-22],'AlphaData',AlphaCrB);
                
            end
            
        end
        
        
    end
    
    
elseif Crawler.Xpos(1) == Bus.Xpos+40 || Crawler.Xpos(1) == Bus.Xpos-40
    if Crawler.Ypos(1) == Bus.Ypos
        sound(ybus, fsbus)
        delete (Bus.Bus);
        [Bus] = MakeBus;
        score = score + 5;
        if Crawler.Length < 4
            Crawler.Length = Crawler.Length + 1;
            Crawler.Xpos(Crawler.Length) = Crawler.Xpos(Crawler.Length-1)+Crawler.Xvel(Crawler.Length-1)*20;
            Crawler.Xvel(Crawler.Length) = 0;
            Crawler.Ypos(Crawler.Length) = Crawler.Ypos(Crawler.Length-1)+Crawler.Yvel(Crawler.Length-1)*20;
            Crawler.Yvel(Crawler.Length) = 0;
            
            if Crawler.Length == 2
                Crawler.Body1 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(2)-22 Crawler.Xpos(2)+22],'YData',[Crawler.Ypos(2)+22 Crawler.Ypos(2)-22],'AlphaData',AlphaCrB);
            elseif Crawler.Length == 3
                Crawler.Body2 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(3)-22 Crawler.Xpos(3)+22],'YData',[Crawler.Ypos(3)+22 Crawler.Ypos(3)-22],'AlphaData',AlphaCrB);
            elseif Crawler.Length == 4
                Crawler.Body3 =  imagesc (CrawlB_Data,'XData',[Crawler.Xpos(4)-22 Crawler.Xpos(4)+22],'YData',[Crawler.Ypos(4)+22 Crawler.Ypos(4)-22],'AlphaData',AlphaCrB);
                
            end
            
        end
        
        
    end
end

%%Checking collisions of Caterpillar with Bus
if Caterpillar.Xpos(1) == Bus.Xpos
    if Caterpillar.Ypos(1) == Bus.Ypos || Caterpillar.Ypos(1) == Bus.Ypos+40 || Caterpillar.Ypos(1) == Bus.Ypos-40
        sound(ybus, fsbus)
        delete (Bus.Bus);
        [Bus] = MakeBus;
        score = score + 5;
        if Caterpillar.Length < 4
            Caterpillar.Length = Caterpillar.Length + 1;
            Caterpillar.Xpos(Caterpillar.Length) = Caterpillar.Xpos(Caterpillar.Length-1)+Caterpillar.Xvel(Caterpillar.Length-1)*20;
            Caterpillar.Xvel(Caterpillar.Length) = 0;
            Caterpillar.Ypos(Caterpillar.Length) = Caterpillar.Ypos(Caterpillar.Length-1)+Caterpillar.Yvel(Caterpillar.Length-1)*20;
            Caterpillar.Yvel(Caterpillar.Length) = 0;
            
            if Caterpillar.Length == 2
                Caterpillar.Body1 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(2)-22 Caterpillar.Xpos(2)+22],'YData',[Caterpillar.Ypos(2)+22 Caterpillar.Ypos(2)-22],'AlphaData',AlphaCB);
            elseif Caterpillar.Length == 3
                Caterpillar.Body2 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(3)-22 Caterpillar.Xpos(3)+22],'YData',[Caterpillar.Ypos(3)+22 Caterpillar.Ypos(3)-22],'AlphaData',AlphaCB);
            elseif Caterpillar.Length == 4
                Caterpillar.Body3 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(4)-22 Caterpillar.Xpos(4)+22],'YData',[Caterpillar.Ypos(4)+22 Caterpillar.Ypos(4)-22],'AlphaData',AlphaCB);
                
            end
            
        end
        
        
    end
    
    
elseif Caterpillar.Xpos(1) == Bus.Xpos+40 || Caterpillar.Xpos(1) == Bus.Xpos-40
    if Caterpillar.Ypos(1) == Bus.Ypos
        sound(ybus, fsbus)
        delete (Bus.Bus);
        [Bus] = MakeBus;
        score = score + 5;
        if Caterpillar.Length < 4
            Caterpillar.Length = Caterpillar.Length + 1;
            Caterpillar.Xpos(Caterpillar.Length) = Caterpillar.Xpos(Caterpillar.Length-1)+Caterpillar.Xvel(Caterpillar.Length-1)*20;
            Caterpillar.Xvel(Caterpillar.Length) = 0;
            Caterpillar.Ypos(Caterpillar.Length) = Caterpillar.Ypos(Caterpillar.Length-1)+Caterpillar.Yvel(Caterpillar.Length-1)*20;
            Caterpillar.Yvel(Caterpillar.Length) = 0;
            
            if Caterpillar.Length == 2
                Caterpillar.Body1 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(2)-22 Caterpillar.Xpos(2)+22],'YData',[Caterpillar.Ypos(2)+22 Caterpillar.Ypos(2)-22],'AlphaData',AlphaCB);
            elseif Caterpillar.Length == 3
                Caterpillar.Body2 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(3)-22 Caterpillar.Xpos(3)+22],'YData',[Caterpillar.Ypos(3)+22 Caterpillar.Ypos(3)-22],'AlphaData',AlphaCB);
            elseif Caterpillar.Length == 4
                Caterpillar.Body3 =  imagesc (CaterB_Data,'XData',[Caterpillar.Xpos(4)-22 Caterpillar.Xpos(4)+22],'YData',[Caterpillar.Ypos(4)+22 Caterpillar.Ypos(4)-22],'AlphaData',AlphaCB);
                
            end
            
        end
        
        
    end
end



end

