-module(u).
-export([u/1]).


u($A) -> $A;
u($a) -> $A;
u($B) -> $B;
u($b) -> $B;
u(X)->X.