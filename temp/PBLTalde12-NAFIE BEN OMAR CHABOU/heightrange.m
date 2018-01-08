%ataza1-erako funtzio bat datuak garbiago bistaratzeko

function heightrange(m, z)
  fprintf('Height range: [%.2f,', m);
  %% digituak idatzi
  for dig = z
    fprintf(' %.2f',dig);
    end
  
  %% testua itxi
  fprintf(']\n\n');
  end
  