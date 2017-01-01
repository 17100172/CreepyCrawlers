function [ Caterpillar, Crawler, Bus ] = MoveUnit( Caterpillar, Crawler, Bus )
for step0 = 1:20
    
    %% Move the Caterpillar One Unit  
    
    for step1 = 1:(Caterpillar.Length)
        Caterpillar.Xpos(step1) = Caterpillar.Xpos(step1) + Caterpillar.Xvel(step1);
        Caterpillar.Ypos(step1) = Caterpillar.Ypos(step1) + Caterpillar.Yvel(step1);
    end
   
    set (Caterpillar.Head,'XData',[Caterpillar.Xpos(1)-22 Caterpillar.Xpos(1)+22],'YData',[Caterpillar.Ypos(1)+42 Caterpillar.Ypos(1)-22]);
    if Caterpillar.Length > 1
        set (Caterpillar.Body1,'XData',[Caterpillar.Xpos(2)-22 Caterpillar.Xpos(2)+22],'YData',[Caterpillar.Ypos(2)+22 Caterpillar.Ypos(2)-22]);
        if Caterpillar.Length > 2
            set (Caterpillar.Body2,'XData',[Caterpillar.Xpos(3)-22 Caterpillar.Xpos(3)+22],'YData',[Caterpillar.Ypos(3)+22 Caterpillar.Ypos(3)-22]);
            if Caterpillar.Length > 3
                set (Caterpillar.Body3,'XData',[Caterpillar.Xpos(4)-22 Caterpillar.Xpos(4)+22],'YData',[Caterpillar.Ypos(4)+22 Caterpillar.Ypos(4)-22]);
            end
        end
    end
    
    
    %% Move the Crawler One Unit
    
    for step1 = 1:(Crawler.Length)
        Crawler.Xpos(step1) = Crawler.Xpos(step1) + Crawler.Xvel(step1);
        Crawler.Ypos(step1) = Crawler.Ypos(step1) + Crawler.Yvel(step1);
    end
   
    set (Crawler.Head,'XData',[Crawler.Xpos(1)-22 Crawler.Xpos(1)+22],'YData',[Crawler.Ypos(1)+22 Crawler.Ypos(1)-22]);
    if Crawler.Length > 1
        set (Crawler.Body1,'XData',[Crawler.Xpos(2)-22 Crawler.Xpos(2)+22],'YData',[Crawler.Ypos(2)+22 Crawler.Ypos(2)-22]);
        if Crawler.Length > 2
            set (Crawler.Body2,'XData',[Crawler.Xpos(3)-22 Crawler.Xpos(3)+22],'YData',[Crawler.Ypos(3)+22 Crawler.Ypos(3)-22]);
            if Crawler.Length > 3
                set (Crawler.Body3,'XData',[Crawler.Xpos(4)-22 Crawler.Xpos(4)+22],'YData',[Crawler.Ypos(4)+22 Crawler.Ypos(4)-22]);
            end
        end
    end
    
    %% Move the Bus One Unit
    
    Bus.Xpos = Bus.Xpos + Bus.Xvel;
    Bus.Ypos = Bus.Ypos + Bus.Yvel;
    set (Bus.Bus,'XData',[Bus.Xpos-25 Bus.Xpos+25],'YData',[Bus.Ypos+25 Bus.Ypos-25])
    
    pause (1/8000)    

end

