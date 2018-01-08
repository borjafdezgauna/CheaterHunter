%ataza1-erako funtzio bat datuak garbiago bistaratzeko

function heightmedia(meanheight, sd)
  fprintf('Mean height: %.2fm (sd:', meanheight);
  %% digituak idatzi
  for dig = sd
    fprintf(' %.2f', dig);
    end
  
  %% testua itxi
  fprintf(')\n');
  end
  