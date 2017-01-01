function [ Caterpillar ] = CheckVelocityCaterpillar( Caterpillar, KeyPresd, grid )
if double(KeyPresd) == 28  %Left
    if grid(((Caterpillar.Ypos(1)+60)/40), (((Caterpillar.Xpos(1)+60)/40)-1)) == 1
        Caterpillar.Xvel(1) = -2;
        Caterpillar.Yvel(1) = 0;
    end
end

if double(KeyPresd) == 29  %Right
    if grid(((Caterpillar.Ypos(1)+60)/40), (((Caterpillar.Xpos(1)+60)/40)+1)) == 1
        Caterpillar.Xvel(1) = 2;
        Caterpillar.Yvel(1) = 0;
    end
end

if double(KeyPresd) == 30  %Up
    if grid((((Caterpillar.Ypos(1)+60)/40)+1), ((Caterpillar.Xpos(1)+60)/40)) == 1
        Caterpillar.Xvel(1) = 0;
        Caterpillar.Yvel(1) = 2;
    end
end

if double(KeyPresd) == 31  %Down
    if grid((((Caterpillar.Ypos(1)+60)/40)-1), ((Caterpillar.Xpos(1)+60)/40)) == 1
        Caterpillar.Xvel(1) = 0;
        Caterpillar.Yvel(1) = -2;
    end
end

if Caterpillar.Xvel(1) == 2
    if grid(((Caterpillar.Ypos(1)+60)/40), (((Caterpillar.Xpos(1)+60)/40)+1)) == 0
        Caterpillar.Xvel = 0;
    end
    
elseif Caterpillar.Xvel(1) == -2
    if grid(((Caterpillar.Ypos(1)+60)/40), (((Caterpillar.Xpos(1)+60)/40)-1)) == 0
        Caterpillar.Xvel = 0;
    end
    
end

if Caterpillar.Yvel(1) == 2
    if grid((((Caterpillar.Ypos(1)+60)/40)+1), ((Caterpillar.Xpos(1)+60)/40)) == 0
        Caterpillar.Yvel = 0;
    end
    
elseif Caterpillar.Yvel(1) == -2
    if grid((((Caterpillar.Ypos(1)+60)/40)-1), ((Caterpillar.Xpos(1)+60)/40)) == 0
        Caterpillar.Yvel = 0;
    end
    
end

for step2 = 1:(Caterpillar.Length-1)
    if Caterpillar.Xpos(step2+1) == Caterpillar.Xpos(step2)-40 && Caterpillar.Ypos(step2+1) == Caterpillar.Ypos(step2)
        Caterpillar.Xvel(step2+1) = 2;
        Caterpillar.Yvel(step2+1) = 0;
    end
    
    if Caterpillar.Xpos(step2+1) == Caterpillar.Xpos(step2)+40 && Caterpillar.Ypos(step2+1) == Caterpillar.Ypos(step2)
        Caterpillar.Xvel(step2+1) = -2;
        Caterpillar.Yvel(step2+1) = 0;
    end
    
    if Caterpillar.Xpos(step2+1) == Caterpillar.Xpos(step2) && Caterpillar.Ypos(step2+1) == Caterpillar.Ypos(step2)-40
        Caterpillar.Xvel(step2+1) = 0;
        Caterpillar.Yvel(step2+1) = 2;
    end
    
    if Caterpillar.Xpos(step2+1) == Caterpillar.Xpos(step2) && Caterpillar.Ypos(step2+1) == Caterpillar.Ypos(step2)+40
        Caterpillar.Xvel(step2+1) = 0;
        Caterpillar.Yvel(step2+1) = -2;
    end
    
    if Caterpillar.Xvel(1) == 0 && Caterpillar.Yvel(1) == 0
        Caterpillar.Xvel(step2+1) = 0;
        Caterpillar.Yvel(step2+1) = 0;
    end
    
end
    

end

