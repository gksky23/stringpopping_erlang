-module(exe).
-export([exe/1]).
-import(lists,[map/2, flatten/1,member/2]).
-import(n,[n/1]).
-import(m,[m/1]).
-import(p,[p/1]).

exe ([]) -> loop;
exe (L) -> case ( member(65, L) or member(66, L)) of
		true -> zero;
		false -> exe(flatten(map(fun(Z)->p:p(Z) end,(map(fun(Y)->m:m(Y) end,(map(fun(X)->n:n(X) end, L)))))))
	end.