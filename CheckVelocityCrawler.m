function [ Crawler ] = CheckVelocityCrawler( Crawler, Bus, grid )
%% Check Velocity of the Crawler's Head according to the Position of the Bus
if Crawler.Xpos(1) < Bus.Xpos
    if grid(((Crawler.Ypos(1)+60)/40), ((Crawler.Xpos(1)+60)/40+1)) == 1
        Crawler.Xvel(1) = 2;
        Crawler.Yvel(1) = 0;
    else Crawler.Xvel(1) = 0;
    end
elseif Crawler.Xpos(1) > Bus.Xpos
    if grid(((Crawler.Ypos(1)+60)/40), ((Crawler.Xpos(1)+60)/40-1)) == 1
        Crawler.Xvel(1) = -2;
        Crawler.Yvel(1) = 0;
    else Crawler.Xvel(1) = 0;
    end
else Crawler.Xvel(1) = 0;
end

if Crawler.Xvel(1) == 0;
    if Crawler.Ypos(1) < Bus.Ypos
        if grid(((Crawler.Ypos(1)+60)/40+1), ((Crawler.Xpos(1)+60)/40)) == 1
            Crawler.Xvel(1) = 0;
            Crawler.Yvel(1) = 2;
        end
    elseif Crawler.Ypos(1) > Bus.Ypos
        if grid(((Crawler.Ypos(1)+60)/40-1), ((Crawler.Xpos(1)+60)/40)) == 1
            Crawler.Xvel(1) = 0;
            Crawler.Yvel(1) = -2;
        end
    else Crawler.Yvel = 0;
    end
end

%% Check the Velocity of the other units according to the Crawler's Head
for step2 = 1:(Crawler.Length-1)
    if Crawler.Xpos(step2+1) == Crawler.Xpos(step2)-40 && Crawler.Ypos(step2+1) == Crawler.Ypos(step2)
        Crawler.Xvel(step2+1) = 2;
        Crawler.Yvel(step2+1) = 0;
    end
    
    if Crawler.Xpos(step2+1) == Crawler.Xpos(step2)+40 && Crawler.Ypos(step2+1) == Crawler.Ypos(step2)
        Crawler.Xvel(step2+1) = -2;
        Crawler.Yvel(step2+1) = 0;
    end
    
    if Crawler.Xpos(step2+1) == Crawler.Xpos(step2) && Crawler.Ypos(step2+1) == Crawler.Ypos(step2)-40
        Crawler.Xvel(step2+1) = 0;
        Crawler.Yvel(step2+1) = 2;
    end
    
    if Crawler.Xpos(step2+1) == Crawler.Xpos(step2) && Crawler.Ypos(step2+1) == Crawler.Ypos(step2)+40
        Crawler.Xvel(step2+1) = 0;
        Crawler.Yvel(step2+1) = -2;
    end
    
    if Crawler.Xvel(1) == 0 && Crawler.Yvel(1) == 0
        Crawler.Xvel(step2+1) = 0;
        Crawler.Yvel(step2+1) = 0;
    end
    
end


end

