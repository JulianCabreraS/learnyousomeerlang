-module(what_the_if).

-export([heh_fine/0]).

heh_fine() ->
    if 1 =:= 1 ->
           works
    end,
    if 1 =:= 2; 1 =:= 1 ->
           works
    end,
    if 1 =:= 2, 1 =:= 1 ->
           fails
    end.

%% note, this one would be better as a pattern match in function heads!
%% I'm doing it this way for the sake of the example.
help_me(Animal) ->
    Talk =
        if Animal == cat ->
               "meow";%% use a comma here to separate multiple conditions
           Animal == beef ->
               "mooo";
           Animal == dog ->
               "bark";
           Animal == tree ->
               "bark";
           true ->
               "fgdadfgna"
        end,
    {Animal, "says " ++ Talk ++ "!"}.
