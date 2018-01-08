Primera= {'Kings', 'Sword', 'Warrior', 'Fighting', 'Gods', 'Glory'};
Segunda= {'of Steel', 'of Metal', 'in the Sky', 'in Hell', 'of the World'};
for i=1:length(Primera)
    for j=1:length(Segunda)
        a=sprintf('%s %s',Primera(i),Segunda(j));
        disp(a)
    end
end