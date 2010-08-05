%% =====================================================================
%%  __  __  ___ _      _  _____ ___    _      ___   _____  _   _ _____
%% |  \/  |/ __| |    | |/ / _ )   \  | |    /_\ \ / / _ \| | | |_   _|
%% | |\/| | (_ | |__  | ' <| _ \ |) | | |__ / _ \ V / (_) | |_| | | |
%% |_|  |_|\___|____| |_|\_\___/___/  |____/_/ \_\_| \___/ \___/  |_|
%% =====================================================================
%% @author: nagi
%% @description: some usefull functions to check and create a keyboard layout
%%
%% Санамж:
%%    io:format("~ts~n", [lists:flatten(List)]) гэж үсгээр нь харах үед хэвлэнэ.
%%    түүнээс биш аравтын тоогоор нь хэвлэхээр бол ~p байхад хангалттай.
%%
-module(kbd_analyse).
-export([main/1]).

-include_lib("kernel/include/file.hrl").
-include("kbdlayout.hrl").

main(File) ->
    io:setopts([{encoding,unicode}]),
    {encoding,unicode} = lists:keyfind(encoding,1,io:getopts()),
    {ok, Binary } = file:read_file(File),
    analyse(Binary).

analyse(Binary) ->
    Dic = char_counts(Binary, dict:new()),
    FullList = dict:to_list(Dic),
    print_key_value(sort_reverse(FullList)),
    %% Char summary -----------------------
    CharSum = get_char_summary(FullList),
    io:format("Sum of chars: ~p~n", [CharSum]),
    %% Keyboard Layout coverage test ---------------------
    A1 = analyse_kbd_layout(?INMGL_KBD, FullList, CharSum),
    A2 = analyse_kbd_layout(?CYR_KBD, FullList, CharSum),
    A3 = analyse_kbd_layout(?MON_KBD, FullList, CharSum),
    print_result_table([{A1, "Inner Mongolian kbd layout"},
                       {A2, "Mongolian Cyrillic based kbd layout"},
                       {A3, "Mongolian kbd layout"}]),
    %% Create N Gram chars for analyse char frequency ----
    %% 2Gram
    The2Gram = create_ngram_char(Binary, 1, 2, [], dict:new()),
    io:format("2grams: ~p, top 20 are: ~n", [dict:size(The2Gram)]),
    print_top_list(dict:to_list(The2Gram), 20),
    %% 3Gram
    The3Gram = create_ngram_char(Binary, 1, 3, [], dict:new()),
    io:format("3grams: ~p, top 20 are: ~n", [dict:size(The3Gram)]),
    print_top_list(dict:to_list(The3Gram), 20),
    %% 4Gram
    The4Gram = create_ngram_char(Binary, 1, 4, [], dict:new()),
    io:format("4grams: ~p, top 20 are: ~n", [dict:size(The4Gram)]),
    print_top_list(dict:to_list(The4Gram), 20).


print_result_table(L) ->
    [ io:format("~p: matched ~p, (~p%)~n", [Name, Sum, Per]) ||
        {{_, Sum, Per}, Name} <- L ].

%% ----------------------------------
%% sort and print top Num from list L
%% ----------------------------------
print_top_list(L, Num) ->
    TopList = lists:sublist(sort_reverse(L), Num),
    print_key_value(TopList).

%% ---------------------
%% print just key value
%% ---------------------
print_key_value(L) ->
    L1 = lists:map(fun(El) ->
                           {X, Y} = El,
                           case is_list(X) of
                               true -> {X, Y};
                               _ -> {[X], Y}
                           end end, L),
    [ io:format("~ts : ~p~n", [ lists:flatten(Key), Value]) || {Key, Value} <- L1].

%% ---------------------------------------
%% check keyboard covery and count matches
%% ---------------------------------------
analyse_kbd_layout(MapList, FullTableList, AllChars) ->
    MappedList = check_kbd_covery(MapList, FullTableList),
    SumOfChars = get_char_summary(MappedList),
    Percent = ( SumOfChars * 100 ) div AllChars,
    {MappedList, SumOfChars, Percent}.

check_kbd_covery(KbdLayoutList, FullTableList) ->
    lists:filter(fun(X) ->
                         {Key, _Value} = X,
                         case lists:keysearch(Key, 1, KbdLayoutList) of
                             {_,_} -> true;
                             _  -> false
                         end
                 end, FullTableList).

%% ----------------------------------
%% create N gram chars and count it
%% ----------------------------------
create_ngram_char(<<>>, _, _, [], Dic ) ->
    Dic;

create_ngram_char(<<>>, _, _, Acc, Dic ) ->
    NewDic = check_char(Dic, lists:flatten(lists:reverse(Acc))),
    NewDic;

create_ngram_char(<<Char/utf8, Rest/binary>>, State,
                  NGram, Acc, Dic) when State < NGram ->
    create_ngram_char(Rest, State + 1, NGram, [Char | Acc], Dic);

create_ngram_char(<<Char/utf8, Rest/binary>>, State,
                 NGram, Acc, Dic) when State == NGram ->
    NewDic = check_char(Dic, lists:flatten(lists:reverse([Char|Acc]))),
    create_ngram_char(Rest, 1, NGram, [], NewDic).

%% -------------
%% Count chars
%% -------------
char_counts(<<Char/utf8, Rest/binary>>, D) when Char > $\x{1800} ->
    NewDict = check_char(D, Char),
    char_counts(Rest, NewDict);
char_counts(eof, D) ->
    D;
char_counts(<<>>, D) ->
    D;
char_counts(<<_Char,Rest/binary>>, D) ->
    char_counts(Rest, D).

%% ------------------------------------
%% increment counter if the char exists,
%% ------------------------------------
check_char(D, Char) ->
    case dict:is_key(Char, D) of
        true ->
            Val = dict:fetch(Char, D),
            dict:store(Char, Val+1, D);
        false ->
            dict:store(Char, 1, D)
    end.

%% -----------------
%% summary of chars
%% -----------------
get_char_summary(List)->
    lists:foldl(fun({_, X}, Sum) -> X + Sum end, 0, List ).

%% ------------
%% sort reverse
%% ------------
sort_reverse(L) ->
    lists:reverse(lists:keysort(2, L)).
