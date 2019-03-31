-module(n).
-export([n/1]).
-import(u,[u/1]).

n ([]) -> [];
n ([X|[]]) -> [X];
n ([X|XS]) -> case (u(X) =:= u(hd(XS))) of
					true -> n([u(X)]++(XS--[hd(XS)]));
					false -> [X|n(XS)]
				end.
