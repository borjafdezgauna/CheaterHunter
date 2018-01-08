function[riskname]=risk(percent)
if percent>10
    riskname=sprintf('HIGH INFRACTION RISK');
elseif (10>percent)&&(percent>0)
    riskname=sprintf('Mild infraction risk');
else
    riskname=sprintf('No risk of infraction');
end
end