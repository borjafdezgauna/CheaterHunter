


all_Data= [];


for heights = {'a1', 'n1'}
   
       x = sprintf('Data/%s-height.csv', heights{1})
        all_Data = dlmread(x , ',' , 1 , 0)
  
   %y axis    
        Elevation = allData(3)
   
        plot(all_Data) 
        hold on
end
