%ataza2-erako funtzio bat datuak garbiago bistaratzeko

function speedmedia(meanspeed, sd)
  fprintf('Mean speed: %.2fkm/h (sd:', meanspeed);
  %% digituak idatzi
  for dig = sd
    fprintf(' %.2f', dig);
    end
  
  %% testua itxi
  fprintf(')\n');
  end