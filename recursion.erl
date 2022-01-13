-module(recursion).
-export([count_to_three/0]).

count_to_three()->
    recursion(1).

recursion(X) 
    when X == 3 -> io:fwrite("~w~n", [X]);
    
recursion(X) 
    when X < 3 -> io:fwrite("~w~n", [X]),
    recursion(X + 1).