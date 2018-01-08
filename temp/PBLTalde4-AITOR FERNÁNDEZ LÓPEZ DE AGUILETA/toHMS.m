function [hms] = toHMS (seconds)
%%Soberan dauden eta 60 baino gutxiago diren segunduak kalkulatu%%
 seg=rem(fix(seconds),60);
 %%segundu kopuru osoari soberan daudenak kenduta geratzen diren segunduak minutuetara pasatu%%
 a=fix(seconds/60);
 %%Soberan dauden eta 60 baino gutxiago diren minutuak kalkulatu%%
 min=rem(a,60);
  %%minutu kopuru osoari soberan daudenak kenduta geratzen diren minutuak orduetara pasatu%%
 hour=fix(a/60);
 hms=sprintf('%02d : %02d : %02d',hour,min,seg);
end