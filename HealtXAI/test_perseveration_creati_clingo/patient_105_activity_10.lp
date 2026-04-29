% ======================================================================
% Paziente 105
% Attività: Wash hands with soap at the kitchen sink.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_hands_with_soap_at_the_kitchen_sink).

action(participant_moves_to_the_kitchen).
action(participant_turns_on_water).
action(participant_uses_hand_soap).
action(participant_washes_hands).
action(participant_dries_hands).

action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 7).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 5).

expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 1).

action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p105_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p105_a11, participant_wets_the_sponge, 1, 53070697).
raw_performed(i_p105_a11, participant_wets_the_sponge, 2, 53073160).
raw_performed(i_p105_a11, participant_washes_the_countertops, 3, 53085851).
raw_performed(i_p105_a11, participant_wets_the_sponge, 4, 53100249).
raw_performed(i_p105_a11, participant_wets_the_sponge, 5, 53102706).
raw_performed(i_p105_a11, participant_washes_the_countertops, 6, 53103452).
raw_performed(i_p105_a11, participant_washes_the_countertops, 7, 53118908).
raw_performed(i_p105_a11, participant_washes_the_countertops, 8, 53121445).
raw_performed(i_p105_a11, participant_washes_the_countertops, 9, 53133765).
raw_performed(i_p105_a11, participant_washes_the_countertops, 10, 53136959).
raw_performed(i_p105_a11, participant_washes_the_countertops, 11, 53141465).
raw_performed(i_p105_a11, participant_wets_the_sponge, 12, 53142082).
raw_performed(i_p105_a11, participant_wets_the_sponge, 13, 53144555).
raw_performed(i_p105_a11, participant_wets_the_sponge, 14, 53144574).
raw_performed(i_p105_a11, participant_wets_the_sponge, 15, 53151934).
raw_performed(i_p105_a11, participant_wets_the_sponge, 16, 53151954).
raw_performed(i_p105_a11, participant_washes_the_countertops, 17, 53155205).
raw_performed(i_p105_a11, participant_washes_the_countertops, 18, 53160293).
raw_performed(i_p105_a11, participant_wets_the_sponge, 19, 53164275).
raw_performed(i_p105_a11, participant_wets_the_sponge, 20, 53164307).
raw_performed(i_p105_a11, participant_wets_the_sponge, 21, 53166730).
raw_performed(i_p105_a11, participant_wets_the_sponge, 22, 53166751).
raw_performed(i_p105_a11, participant_wets_the_sponge, 23, 53169193).
raw_performed(i_p105_a11, participant_wets_the_sponge, 24, 53169212).
raw_performed(i_p105_a11, participant_washes_the_countertops, 25, 53172128).
raw_performed(i_p105_a11, participant_washes_the_countertops, 26, 53178984).
raw_performed(i_p105_a11, participant_washes_the_countertops, 27, 53181524).
raw_performed(i_p105_a11, participant_washes_the_countertops, 28, 53186535).
raw_performed(i_p105_a11, participant_washes_the_countertops, 29, 53188281).
raw_performed(i_p105_a11, participant_washes_the_countertops, 30, 53190794).
raw_performed(i_p105_a11, participant_washes_the_countertops, 31, 53203450).
raw_performed(i_p105_a11, participant_washes_the_countertops, 32, 53217549).
raw_performed(i_p105_a11, participant_rinses_out_the_sponge, 33, 53223369).
raw_performed(i_p105_a11, participant_rinses_out_the_sponge, 34, 53225826).
raw_performed(i_p105_a11, participant_rinses_out_the_sponge, 35, 53228292).
raw_performed(i_p105_a11, participant_dries_the_countertops, 36, 53232163).
raw_performed(i_p105_a11, participant_dries_the_countertops, 37, 53232534).
raw_performed(i_p105_a11, participant_dries_the_countertops, 38, 53239486).
raw_performed(i_p105_a11, participant_dries_the_countertops, 39, 53244075).
raw_performed(i_p105_a11, participant_dries_the_countertops, 40, 53248047).

prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).


% ===========================
% Level C - Anomaly detection
% ===========================


performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.

