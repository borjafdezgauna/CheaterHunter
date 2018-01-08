function [totalPrice, prices] = calculatePrices(produktuPrezioak,produktuKantitatea,bez)
  
  totalPrice= sum((produktuPrezioak).*(produktuKantitatea))+sum((produktuPrezioak).*(produktuKantitatea))*bez/100
  prices= (produktuPrezioak.*produktuKantitatea)+(produktuPrezioak.*produktuKantitatea)*bez/100
  
  end
  