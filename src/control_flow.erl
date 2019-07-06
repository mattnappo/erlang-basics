-module(control_flow).

-export([main/0]).

equal(X, Y) ->
    X =:= Y, % Regard type
    X == Y. % Disregard type

not_equal(X, Y) ->
    X =/= Y, % Regard type
    X /= Y. % Disregard type

inequalities(X, Y) ->
    X > Y,
    X < Y,

    X >= Y,
    X =< Y.

logic(X, Y) ->
    Num1 = 5,

    (Num1 > 10) and (Num1 < 20),

    (Num1 < 5) or (Num1 > 10).


returns() ->
    'this is being returned'.

correct_secret() ->
    'that is the correct secret!'.

too_big() ->
    'that secret is too big.'.

ifs(_secret) ->
    if _secret =:= 1234 -> correct_secret()
    ; _secret > 1234 -> too_big()
    end.


main() ->
    