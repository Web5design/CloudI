%%
%% Autogenerated by Thrift Compiler (0.9.0)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(elasticsearch_types).

-include("elasticsearch_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('restRequest') ->
  {struct, [{1, i32},
          {2, string},
          {3, {map, string, string}},
          {4, {map, string, string}},
          {5, string}]}
;

struct_info('restResponse') ->
  {struct, [{1, i32},
          {2, {map, string, string}},
          {3, string}]}
;

struct_info('i am a dummy struct') -> undefined.

struct_info_ext('restRequest') ->
  {struct, [{1, required, i32, 'method', undefined},
          {2, required, string, 'uri', undefined},
          {3, optional, {map, string, string}, 'parameters', dict:new()},
          {4, optional, {map, string, string}, 'headers', dict:new()},
          {5, optional, string, 'body', undefined}]}
;

struct_info_ext('restResponse') ->
  {struct, [{1, required, i32, 'status', undefined},
          {2, optional, {map, string, string}, 'headers', dict:new()},
          {3, optional, string, 'body', undefined}]}
;

struct_info_ext('i am a dummy struct') -> undefined.

