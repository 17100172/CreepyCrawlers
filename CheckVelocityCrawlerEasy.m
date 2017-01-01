function [ Crawler ] = CheckVelocityCrawlerEasy( Crawler, Bus, grid )

randN = randi(6);
%% Assign a Velocity that makes the Crawler move towards the Bus by a Probability of 2/6
if randN <= 2;
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
    
    
    
%% Assign a Velocity that makes the Crawler move Randomly by a Probability of 4/6    
    
elseif randN > 2
    
    
    
    GridV = [(grid(((Crawler.Ypos(1)+60)/40), ((Crawler.Xpos(1)+60)/40-1))) (grid(((Crawler.Ypos(1)+60)/40), ((Crawler.Xpos(1)+60)/40+1))) (grid(((Crawler.Ypos(1)+60)/40+1), ((Crawler.Xpos(1)+60)/40))) (grid(((Crawler.Ypos(1)+60)/40-1), ((Crawler.Xpos(1)+60)/40)))]; %GridV = [L R U D]
    randN = randi(12);
    
    if GridV(1) + GridV(2) + GridV(3) + GridV(4) == 1
        Crawler.Xvel(1) = -Crawler.Xvel(1);
        Crawler.Yvel(1) = -Crawler.Yvel(1);
    elseif GridV(1) + GridV(2) + GridV(3) + GridV(4) == 2
        if Crawler.Xvel(1) == -2 || Crawler.Xvel(1) == 2
            if GridV(3) == 1
                Crawler.Xvel(1) = 0;
                Crawler.Yvel(1) = 2;
            elseif GridV(4) == 1
                Crawler.Xvel(1) = 0;
                Crawler.Yvel(1) = -2;
            end
        elseif Crawler.Yvel(1) == -2 || Crawler.Yvel(1) == 2
            if GridV(1) == 1
                Crawler.Xvel(1) = -2;
                Crawler.Yvel(1) = 0;
            elseif GridV(2) == 1
                Crawler.Xvel(1) = 2;
                Crawler.Yvel(1) = 0;
            end
        end
    elseif GridV(1) + GridV(2) + GridV(3) + GridV(4) == 3
        if Crawler.Xvel(1) == -2
            if randN >= 6
                if GridV(3) == 1
                    Crawler.Xvel(1) = 0;
                    Crawler.Yvel(1) = 2;
                end
            else
                if GridV(4) == 1
                    Crawler.Xvel(1) = 0;
                    Crawler.Yvel(1) = -2;
                end
            end
            
        elseif Crawler.Xvel(1) == 2
            if randN >= 6
                if GridV(3) == 1
                    Crawler.Xvel(1) = 0;
                    Crawler.Yvel(1) = 2;
                end
            else
                if GridV(4) == 1
                    Crawler.Xvel(1) = 0;
                    Crawler.Yvel(1) = -2;
                end
            end
            
        elseif Crawler.Yvel(1) == -2
            if randN >= 6
                if GridV(1) == 1
                    Crawler.Xvel(1) = -2;
                    Crawler.Yvel(1) = 0;
                end
            else
                if GridV(2) == 1
                    Crawler.Xvel(1) = 2;
                    Crawler.Yvel(1) = 0;
                end
            end
            
        elseif Crawler.Yvel(1) == 2
            if randN >= 6
                if GridV(1) == 1
                    Crawler.Xvel(1) = -2;
                    Crawler.Yvel(1) = 0;
                end
            else
                if GridV(2) == 1
                    Crawler.Xvel(1) = 2;
                    Crawler.Yvel(1) = 0;
                end
            end
            
        end
        
    end
    
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

