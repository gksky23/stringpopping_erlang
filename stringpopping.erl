-module(stringpopping).
-export([stringpopping/1]).
-import(exe,[exe/1]).
-import(m,[m/1]).
-import(n,[n/1]).
-import(p,[p/1]).
stringpopping([L]) -> R=exe(p(m(n(atom_to_list(L))))),io:format("~s",[R]).