function [acceleration]=calculateacceleration(speed,speed2,diff)

%acceleration=((speed2^2)-(speed^2))/2*diff

dt=diff/(speed2-speed);
acceleration=(speed2-speed)/dt;
end
