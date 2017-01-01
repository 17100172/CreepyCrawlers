function [ Bus ] = CheckVelocityBus( Bus, grid )
%% Storing the values of the units up, down, left and right of the bus in the grid in a new variable
GridV = [(grid(((Bus.Ypos+60)/40), ((Bus.Xpos+60)/40-1))) (grid(((Bus.Ypos+60)/40), ((Bus.Xpos+60)/40+1))) (grid(((Bus.Ypos+60)/40+1), ((Bus.Xpos+60)/40))) (grid(((Bus.Ypos+60)/40-1), ((Bus.Xpos+60)/40)))]; %GridV = [L R U D]
randN = randi(12);
%% If the bus is at a dead end
if GridV(1) + GridV(2) + GridV(3) + GridV(4) == 1
    Bus.Xvel = -Bus.Xvel;
    Bus.Yvel = -Bus.Yvel;
%% If the bus is at a straight road
elseif GridV(1) + GridV(2) + GridV(3) + GridV(4) == 2
    if Bus.Xvel == -2 || Bus.Xvel == 2
        if GridV(3) == 1
            Bus.Xvel = 0;
            Bus.Yvel = 2;
        elseif GridV(4) == 1
            Bus.Xvel = 0;
            Bus.Yvel = -2;
        end
    elseif Bus.Yvel == -2 || Bus.Yvel == 2
        if GridV(1) == 1
            Bus.Xvel = -2;
            Bus.Yvel = 0;
        elseif GridV(2) == 1
            Bus.Xvel = 2;
            Bus.Yvel = 0;
        end
    end
%% If the bus is at crossroads
elseif GridV(1) + GridV(2) + GridV(3) + GridV(4) == 3
    if Bus.Xvel == -2
        if randN >= 6
            if GridV(3) == 1
                Bus.Xvel = 0;
                Bus.Yvel = 2;
            end
        else
            if GridV(4) == 1
                Bus.Xvel = 0;
                Bus.Yvel = -2;
            end
        end
        
    elseif Bus.Xvel == 2
        if randN >= 6
            if GridV(3) == 1
                Bus.Xvel = 0;
                Bus.Yvel = 2;
            end
        else
            if GridV(4) == 1
                Bus.Xvel = 0;
                Bus.Yvel = -2;
            end
        end
        
    elseif Bus.Yvel == -2
        if randN >= 6
            if GridV(1) == 1
                Bus.Xvel = -2;
                Bus.Yvel = 0;
            end
        else
            if GridV(2) == 1
                Bus.Xvel = 2;
                Bus.Yvel = 0;
            end
        end
        
    elseif Bus.Yvel == 2
        if randN >= 6
            if GridV(1) == 1
                Bus.Xvel = -2;
                Bus.Yvel = 0;
            end
        else
            if GridV(2) == 1
                Bus.Xvel = 2;
                Bus.Yvel = 0;
            end
        end
        
    end
        
end

end

