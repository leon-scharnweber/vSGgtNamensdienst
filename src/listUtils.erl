-module(listUtils).
-author(leon).
-export([
    insertOnRightPosition/2
]).

insertOnRightPosition([], NameNodeTupel) ->
    [NameNodeTupel];
insertOnRightPosition(RegProzesse, NewNameNode) ->
    Index = findIndexForNewNameNodeTupel(RegProzesse, NewNameNode, 0),
    insertOnIndex(RegProzesse, NewNameNode, Index).

findIndexForNewNameNodeTupel([{FName, _FNode} | Rest], {Name, Node}, X) ->
    case FName < Node of
        true ->
            findIndexForNewNameNodeTupel(Rest, {Name, Node}, X + 1);
        false ->
            X
    end.

insertOnIndex([_H | T], New, 0) ->
    [New | T];
insertOnIndex([H | T], New, Index) when Index > 0 ->
    [H | insertOnIndex(T, New, Index - 1)];
insertOnIndex([], _New, Index) when Index > 0 ->
    {error, index_to_hight};
insertOnIndex(_RegProzess, _New, Index) when Index < 0 ->
    {error, index_to_low}.
