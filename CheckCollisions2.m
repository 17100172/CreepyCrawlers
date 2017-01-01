function [ Caterpillar, Crawler ] = CheckCollisions2( Caterpillar, Crawler, yaud, fsaud )
%% Storing initial lengths of caterpillars in new variables
CrLength = Crawler.Length;
CatLength = Caterpillar.Length;

%% Checking collisions of Caterpillar with Crawler's Back
if Crawler.Length > 1
    for step = 1:Crawler.Length-1
        if CrLength == Crawler.Length
            if Caterpillar.Xpos(1) == Crawler.Xpos(step+1) && Caterpillar.Ypos(1) == Crawler.Ypos(step+1)
                sound(yaud, fsaud)
                if step == 1
                    if Crawler.Length >= 2
                        delete(Crawler.Body1)
                        if Crawler.Length >= 3
                            delete(Crawler.Body2)
                            if Crawler.Length >=4
                                delete(Crawler.Body3)
                            end
                        end
                    end
                    Crawler.Length = 1;
                    Crawler.Xpos = [Crawler.Xpos(1)];
                    Crawler.Xvel = [Crawler.Xvel(1)];
                    Crawler.Ypos = [Crawler.Ypos(1)];
                    Crawler.Yvel = [Crawler.Yvel(1)];
                elseif step == 2
                    if Crawler.Length >= 3
                        delete(Crawler.Body2)
                        if Crawler.Length >= 4
                            delete(Crawler.Body3)
                        end
                    end
                    Crawler.Length = 2;
                    Crawler.Xpos = [Crawler.Xpos(1) Crawler.Xpos(2)];
                    Crawler.Xvel = [Crawler.Xvel(1) Crawler.Xvel(2)];
                    Crawler.Ypos = [Crawler.Ypos(1) Crawler.Ypos(2)];
                    Crawler.Yvel = [Crawler.Yvel(1) Crawler.Yvel(2)];
                elseif step == 3
                    delete(Crawler.Body3)
                    
                    Crawler.Length = 3;
                    Crawler.Xpos = [Crawler.Xpos(1) Crawler.Xpos(2) Crawler.Xpos(3)];
                    Crawler.Xvel = [Crawler.Xvel(1) Crawler.Xvel(2) Crawler.Xvel(3)];
                    Crawler.Ypos = [Crawler.Ypos(1) Crawler.Ypos(2) Crawler.Ypos(3)];
                    Crawler.Yvel = [Crawler.Yvel(1) Crawler.Yvel(2) Crawler.Yvel(3)];
                end
            end
        end
        
    end
end

%% Checking collisions of Crawler with Caterpillar's Back
if Caterpillar.Length > 1
    for CrB = 1:Caterpillar.Length-1
        if CatLength == Caterpillar.Length
            if Crawler.Xpos(1) == Caterpillar.Xpos(CrB+1) && Crawler.Ypos(1) == Caterpillar.Ypos(CrB+1)
                sound(yaud, fsaud)
                if CrB == 1
                    if Caterpillar.Length >= 2
                        delete(Caterpillar.Body1)
                        if Caterpillar.Length >= 3
                            delete(Caterpillar.Body2)
                            if Caterpillar.Length >=4
                                delete(Caterpillar.Body3)
                            end
                        end
                    end
                    Caterpillar.Length = 1;
                    Caterpillar.Xpos = [Caterpillar.Xpos(1)];
                    Caterpillar.Xvel = [Caterpillar.Xvel(1)];
                    Caterpillar.Ypos = [Caterpillar.Ypos(1)];
                    Caterpillar.Yvel = [Caterpillar.Yvel(1)];
                elseif CrB == 2
                    if Caterpillar.Length >= 3
                        delete(Caterpillar.Body2)
                        if Caterpillar.Length >= 4
                            delete(Caterpillar.Body3)
                        end
                    end
                    Caterpillar.Length = 2;
                    Caterpillar.Xpos = [Caterpillar.Xpos(1) Caterpillar.Xpos(2)];
                    Caterpillar.Xvel = [Caterpillar.Xvel(1) Caterpillar.Xvel(2)];
                    Caterpillar.Ypos = [Caterpillar.Ypos(1) Caterpillar.Ypos(2)];
                    Caterpillar.Yvel = [Caterpillar.Yvel(1) Caterpillar.Yvel(2)];
                elseif CrB == 3
                    delete(Caterpillar.Body3)
                    
                    Caterpillar.Length = 3;
                    Caterpillar.Xpos = [Caterpillar.Xpos(1) Caterpillar.Xpos(2) Caterpillar.Xpos(3)];
                    Caterpillar.Xvel = [Caterpillar.Xvel(1) Caterpillar.Xvel(2) Caterpillar.Xvel(3)];
                    Caterpillar.Ypos = [Caterpillar.Ypos(1) Caterpillar.Ypos(2) Caterpillar.Ypos(3)];
                    Caterpillar.Yvel = [Caterpillar.Yvel(1) Caterpillar.Yvel(2) Caterpillar.Yvel(3)];
                end
            end
        end
        
    end
end

end


