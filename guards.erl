-module(guards).

-compile(export_all). %% replace with -export() later, for God's sake!

right_age(X) when X >= 16, X =< 104 ->
    true;
right_age(_) ->
    false.
