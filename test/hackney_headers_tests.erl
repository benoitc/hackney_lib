-module(hackney_headers_tests).
-include_lib("eunit/include/eunit.hrl").


%% ... hm?

new_test() -> 
    D = dict:new(),
    Dd = {dict,1,16,16,8,80,48,
	  {[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]},
	  {
	    {[],[],
	     [[<<"date">>|
	       {<<"Date">>,<<"Fri, 31 Dec 1999 23:59:59 GMT">>}]],
	     [],[],[],[],[],[],[],[],[],[],[],[],[]}}
	 },
    Ad = [{<<"Date">>, <<"Fri, 31 Dec 1999 23:59:59 GMT">>}],
    ?assertEqual(hackney_headers:new(), D),
    ?assertEqual(hackney_headers:new(Ad),Dd).
    
