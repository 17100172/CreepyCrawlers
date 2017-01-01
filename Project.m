Background

grid = [0 0 0 0 0 0 0 0 0 0 0 0 0 0; 0 1 0 0 1 1 1 1 1 1 0 0 1 0; ...
    0 1 1 1 1 0 0 1 0 1 0 0 1 0; 0 1 0 0 1 0 0 1 1 1 1 1 1 0; ...
    0 1 0 0 1 1 1 1 0 0 0 0 1 0; 0 1 1 1 1 0 0 1 1 1 1 1 1 0; ...
    0 1 0 0 1 0 0 1 0 1 0 0 1 0; 0 1 1 1 1 1 1 1 1 1 1 1 1 0; ...
    0 0 0 0 0 0 0 0 0 0 0 0 0 0];

[Caterpillar, CaterB_Data, AlphaCB] = MakeCaterpillar;
[Bus] = MakeBus;
[Crawler, CrawlB_Data, AlphaCrB] = MakeCrawler (Bus);

[ybus, fsbus] = audioread('Bus.mp3');
[yaud, fsaud] = audioread('Crunch.mp3');

KeyPresd = 30;
set(gcf, 'KeyPressFcn', 'KeyPresd = get(gcf, ''CurrentCharacter'');');

score = 0;
done = 1;

while done == 1
    [Caterpillar] = CheckVelocityCaterpillar (Caterpillar, KeyPresd, grid);
        
    [Caterpillar, Crawler, Bus] = MoveUnit (Caterpillar, Crawler, Bus);
    
    [Bus] = CheckVelocityBus (Bus, grid);
    [Crawler] = CheckVelocityCrawler (Crawler, Bus, grid);
    
    [Caterpillar, Crawler, Bus, score] = CheckConditions (Caterpillar, Crawler, Bus, CaterB_Data, CrawlB_Data, AlphaCB, AlphaCrB, ybus, fsbus, score );
    [done, Caterpillar, Crawler, score] = CheckCollisions( Caterpillar, Bus, Crawler, CaterB_Data, AlphaCB, done, yaud, fsaud, score );
    [Caterpillar, Crawler] = CheckCollisions2( Caterpillar, Crawler, yaud, fsaud );
end

