-module(namensDienst).
-author(leon).

-export([start_link/0, start/0]).

start_link() ->
    Pid = spawn_link(?MODULE, start, []),
    {ok, Pid}.

start() ->
    register(namenDienst, self()),
    loop([]).

loop([]) ->
    receive
        {PID, {bind, Name, Node}} ->
            PID ! ok,
            loop([{Name, Node} | []])
    end;
loop([First | Rest]) ->
    receive
        {PID, {bind, Name, Node}} ->
            NewListe = listUtils:insertOnRightPosition([First | Rest], {Name, Node}),
            loop(NewListe)
    end.
