-module(m).
-export([m/1]).
m([])->[];
m(L) -> [[X]++L--[X]||X<-L,((X=:=65) or (X=:=66))].