  function [media,sd,rangomax,rangomin]=valoresestadisticos(x)
      media=mean(x);
      sd=std(x);
      rangomax=max(x);
      rangomin=min(x);
  end
   