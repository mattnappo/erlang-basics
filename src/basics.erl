-module(basics).

-import(string, [len/1, concat/2]).

% -export([hello_world/0, add/2]).
-export([main/0]).

hello_world() ->
    io:fwrite("Hello world\n").

add(A, B) ->
    A + B.

variables() ->
    Num1 = 15,
    Str1 = "test str\n",

    Num1,
    Str1.

atoms() ->
    'Im an atom'.

print_float(F) ->
    io:fwrite("~f \n", [F]).

operations(_a, _b) ->
    _a rem _b,

    _a / _b,
    _a div _b,

    print_float(math:exp(_a)),
    print_float(math:log10(1000)),
    print_float(math:pow(_a, _b)),
    print_float(math:cosh(_a)),

    _rand = rand:uniform(10),
    _rand.


main() ->
    hello_world(),
    add(5, 6),
    variables(),
    atoms(),
    operations(3, 3).