-module(hello).
-export([hello_world/0]).
hello_world() -> io:fwrite("Olá, Mundo!~n").