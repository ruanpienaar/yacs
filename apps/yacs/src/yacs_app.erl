-module(yacs_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("yacs.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    yacs_sup:start_link().

stop(_State) ->
    ok.
