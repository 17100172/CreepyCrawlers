function [ done, Caterpillar, Crawler, score ] = CheckCollisions( Caterpillar, Bus, Crawler, CaterB_Data, AlphaCB, done, yaud, fsaud, score )

if Caterpillar.Xpos(1) == Crawler.Xpos(1)
    if Caterpillar.Ypos(1) == Crawler.Ypos(1) || (Caterpillar.Ypos(1) == Crawler.Ypos(1)+40 && Caterpillar.Xvel(1) == -Crawler.Xvel(1) && Caterpillar.Yvel(1) == -Crawler.Yvel(1)) || (Caterpillar.Ypos(1) == Crawler.Ypos(1)-40 && Caterpillar.Xvel(1) == -Crawler.Xvel(1) && Caterpillar.Yvel(1) == -Crawler.Yvel(1))
        if Caterpillar.Length > Crawler.Length
            sound(yaud, fsaud)
            score = score + 10;
            delete(Crawler.Head)
            if Crawler.Length >= 2
                delete(Crawler.Body1)
                if Crawler.Length >= 3
                    delete(Crawler.Body2)
                end
            end
            
            [Crawler, CrawlB_Data, AlphaCrB] = MakeCrawler (Bus);
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
        else done = 0
            msgbox(['Score = ' num2str(score)], 'Game Over');
        end
    end
elseif (Caterpillar.Xpos(1) == Crawler.Xpos(1)+40 && Caterpillar.Xvel(1) == -Crawler.Xvel(1) && Caterpillar.Yvel(1) == -Crawler.Yvel(1)) || (Caterpillar.Xpos(1) == Crawler.Xpos(1)-40 && Caterpillar.Xvel(1) == -Crawler.Xvel(1) && Caterpillar.Yvel(1) == -Crawler.Yvel(1))
    if Caterpillar.Ypos(1) == Crawler.Ypos(1)
        if Caterpillar.Length > Crawler.Length
            sound(yaud, fsaud)
            score = score + 10;
            delete(Crawler.Head)
            if Crawler.Length >= 2
                delete(Crawler.Body1)
                if Crawler.Length >= 3
                    delete(Crawler.Body2)
                end
            end
            [Crawler, CrawlB_Data, AlphaCrB] = MakeCrawler (Bus);
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
        else done = 0
            msgbox(['Score = ' num2str(score)], 'Game Over');
        end
    end
end
            
            
        end
        
