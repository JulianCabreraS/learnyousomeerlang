-module(functions).
-compile(export_all). %% replace with -export() later, for God's sake!


head([H|_]) -> H.

second([_,X|_]) -> X.