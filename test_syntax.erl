%%% The organization of this file follows the Erlang reference:
%%%
%%% http://erlang.org/doc/reference_manual/users_guide.html

%%% ===========================================================================
%%% 1 Introduction
%%% ===========================================================================

%%% ===========================================================================
%%% 1.5 Reserved Words
%%% ===========================================================================

reserved_words() ->
    after and andalso band begin bnot bor bsl bsr bxor case catch cond div end
    fun if let not of or orelse query receive rem try when xor.

%%% ===========================================================================
%%% 1.6 Character Set
%%% ===========================================================================

string_characters() ->
    " ¿ ÀÖ × ØÞ ßö ÷ øÿ".

variable_characters() ->
    ÀÖØÞßöøÿ.

%%% ===========================================================================
%%% 2 Data Types
%%% ===========================================================================

%%% ===========================================================================
%%% 2.2 Number
%%% ===========================================================================

number_examples() ->
    42,
    $A,
    $\n,
    2#101,
    16#1f,
    2.3,
    2.3e3,
    2.3e-3.

%%% ===========================================================================
%%% 2.3 Atom
%%% ===========================================================================

atom_examples() ->
    hello,
    phone_number,
    hello@you,
    'Monday',
    'phone number',
    case@case.

%%% ===========================================================================
%%% 2.9 Tuple
%%% 2.10 List
%%% ===========================================================================

tuple_list() ->
    {}, {A}, {A, B}
    [], [A], [A, B], [A|B].

%%% ===========================================================================
%%% 2.11 String
%%% ===========================================================================

multiline_string() ->
    "multi
     line".

%%% ===========================================================================
%%% 2.13 Boolean
%%% ===========================================================================

bools() ->
    true, false.

%%% ===========================================================================
%%% 2.14 Escape sequences
%%% ===========================================================================

escape_sequences() ->
    "\b",
    "\d",
    "\e",
    "\f",
    "\n",
    "\r",
    "\s",
    "\t",
    "\v",
    "\1",
    "\11",
    "\111",
    "\x11",
    "\x{1}",
    "\x{11}",
    "\x{111}",
    "\^a \^z ",
    "\^A \^Z",
    "\'",
    "\"",
    "\\".

escape_sequences() ->
    '\b',
    '\d',
    '\e',
    '\f',
    '\n',
    '\r',
    '\s',
    '\t',
    '\v',
    '\1',
    '\11',
    '\111',
    '\x11',
    '\x{1}',
    '\x{11}',
    '\x{111}',
    '\^a \^z ',
    '\^A \^Z',
    '\'',
    '\"',
    '\\'.

%%% ===========================================================================
%%% 4 Modules
%%% ===========================================================================

%%% ===========================================================================
%%% 4.1 Module Syntax
%%% ===========================================================================

-module(Module).
-export(Functions).
-import(Module,Functions).
-compile(Options).
-vsn(Vsn).
-on_load(Function).
-behaviour(Behaviour).
-behavior(Behaviour).
-file(File, Line).

macros() ->
    ?FILE, ?LINE.

-export_type([my_struct_type/0, orddict/2]).

%%% ===========================================================================
%%% 4.3 Comments
%%% ===========================================================================

% Comment
%% Comment
%%% Comment
%%%% Comment

%%% ===========================================================================
%%% Functions
%%% ===========================================================================

%%% ===========================================================================
%%% 5.1  Function Declaration Syntax
%%% ===========================================================================

f({A}, [H|T]) when H > 0, T == 0;
                   H < 0 ->
    ok;
f(_X, _) ->
    ok.

%%% ===========================================================================
%%% 6 Types and Function Specifications
%%% ===========================================================================

% TODO

%%% ===========================================================================
%%% 6.3  Type declarations of user-defined types
%%% ===========================================================================

-spec my_type() = term()
                | binary()
                | bitstring()
                | boolean()
                | byte()
                | char()
                | number()
                | list()
                | maybe_improper_list()
                | maybe_improper_list(T)
                | string()
                | nonempty_string()
                | iolist()
                | module()
                | mfa()
                | node()
                | timeout()
                | no_return()
                | non_neg_integer()
                | pos_integer()
                | neg_integer().

%%% ===========================================================================
%%% 7 Expressions
%%% ===========================================================================

%%% ===========================================================================
%%% 7.3 Variables
%%% ===========================================================================

variables() ->
    X,
    Name1,
    PhoneNumber,
    Phone_number,
    _,
    _Height,
    Var@case. % just a variable

%%% ===========================================================================
%%% 7.6 Function calls
%%% ===========================================================================

func_calls() ->

    func(),

    mod:func(),

    mod : func(),

    mod
    :
    func().

%%% ===========================================================================
%%% 7.7 If
%%% ===========================================================================

if_example() ->
    if
        A -> A;
        true -> ok
    end.

%%% ===========================================================================
%%% 7.8 Case
%%% ===========================================================================

case_example() ->
    case X of
        A when A > 0 ->
            ok;
        A when A < 0 ->
            ok
    end.

%%% ===========================================================================
%%% 7.9 Send
%%% ===========================================================================

send_example() ->
    a ! b.

%%% ===========================================================================
%%% 7.10 Receive
%%% ===========================================================================

receive_example() ->
    receive
        A -> A;
        B -> B
    after
        T -> T
    end.

%%% ===========================================================================
%%% 7.11 Term Comparisons
%%% ===========================================================================

term_comparisons() ->
    A == A,
    A /= A,
    A =< A,
    A < A,
    A >= A,
    A > A,
    A =:= A,
    A =/= A,
    ok.

%%% ===========================================================================
%%% 7.12 Arithmetic Expressions
%%% ===========================================================================

unary_operators() ->
    + A,
    - A,
    bnot A.

binary_operators() ->
    A + A,
    A - A,
    A * A,
    A / A,
    A div A,
    A rem A,
    A band A,
    A bor A,
    A bxor A,
    A bsl A,
    A bsr A.

%%% ===========================================================================
%%% 7.13 Boolean Expressions
%%% ===========================================================================

unary_boolean() ->
    not A,
    ok.

binary_boolean() ->
    A and A,
    A or A,
    A xor A,
    ok.

%%% ===========================================================================
%%% 7.14 Short-Circuit Expressions
%%% ===========================================================================

short_circuit() ->
    A andalso A,
    A orelse A.

%%% ===========================================================================
%%% 7.15 List Operations
%%% ===========================================================================

list_operations() ->
    A ++ A,
    A -- A.

%%% ===========================================================================
%%% 7.16 Bit Syntax Expressions
%%% ===========================================================================

bit_syntax() ->
    <<>>,

    <<
    >>,

    <<A>>,
    <<A:1>>,
    << A : 1 >>,

    <<A/bits>>,
    <<A:1/bits>>,
    << A : 1 / bits >>,

    <<A/integer>>,
    <<A:1/integer>>,
    << A : 1 / integer >>.

bit_syntax_types() ->
     <<A/integer,
       A/float,
       A/binary,
       A/bytes,
       A/bitstring,
       A/bits,
       A/utf8,
       A/utf16,
       A/utf32>>,

     <<A/integer-signed>>,
     <<A/integer-unsigned>>,
     <<A/signed-integer>>,
     <<A/unsigned-integer>>,

     <<A/integer-big>>,
     <<A/integer-little>>,
     <<A/integer-native>>,

     <<A:1/integer-native-unit:1>>,

     <<$a/utf8,$b/utf8,$c/utf8>>.

%%% ===========================================================================
%%% 7.17 Fun Expressions
%%% ===========================================================================

f() ->
    fun func/0,
    fun mod:func/0,
    fun (A) when A > 0 -> A;
        (B) when B > 0 -> B
    end.

%%% ===========================================================================
%%% 7.18  Catch and Throw
%%% ===========================================================================

catch_example() ->
    catch 1 + 2.

throw_example() ->
    throw(hello).

%%% ===========================================================================
%%% 7.19 Try
%%% ===========================================================================

try_example() ->
    try
        f()
    of
        A -> B
    catch
        throw:E -> E;
        exit:E -> E;
        error:E -> E
    after
        Timeout -> timeout
    end.

try_example() ->
    try
        f()
    catch
        _:_ -> error;
    end.

