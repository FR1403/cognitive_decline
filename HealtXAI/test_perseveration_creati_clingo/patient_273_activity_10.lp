% ======================================================================
% Paziente 273
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

instance(i_p273_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p273_a11, participant_wets_the_sponge, 1, 50889719).
raw_performed(i_p273_a11, participant_wets_the_sponge, 2, 50893547).
raw_performed(i_p273_a11, participant_wets_the_sponge, 3, 50897348).
raw_performed(i_p273_a11, participant_wets_the_sponge, 4, 50916155).
raw_performed(i_p273_a11, participant_washes_the_countertops, 5, 50917343).
raw_performed(i_p273_a11, participant_washes_the_countertops, 6, 50921903).
raw_performed(i_p273_a11, participant_washes_the_countertops, 7, 50933222).
raw_performed(i_p273_a11, participant_washes_the_countertops, 8, 50937228).
raw_performed(i_p273_a11, participant_washes_the_countertops, 9, 50945359).
raw_performed(i_p273_a11, participant_washes_the_countertops, 10, 50950091).
raw_performed(i_p273_a11, participant_wets_the_sponge, 11, 50956311).
raw_performed(i_p273_a11, participant_washes_the_countertops, 12, 50957714).
raw_performed(i_p273_a11, participant_washes_the_countertops, 13, 50964300).
raw_performed(i_p273_a11, participant_wets_the_sponge, 14, 50967772).
raw_performed(i_p273_a11, participant_washes_the_countertops, 15, 50968562).
raw_performed(i_p273_a11, participant_wets_the_sponge, 16, 50975397).
raw_performed(i_p273_a11, participant_wets_the_sponge, 17, 50975423).
raw_performed(i_p273_a11, participant_wets_the_sponge, 18, 50982842).
raw_performed(i_p273_a11, participant_washes_the_countertops, 19, 50987264).
raw_performed(i_p273_a11, participant_washes_the_countertops, 20, 50992372).
raw_performed(i_p273_a11, participant_rinses_out_the_sponge, 21, 50998166).
raw_performed(i_p273_a11, participant_rinses_out_the_sponge, 22, 51007713).
raw_performed(i_p273_a11, participant_rinses_out_the_sponge, 23, 51011513).
raw_performed(i_p273_a11, participant_rinses_out_the_sponge, 24, 51011543).
raw_performed(i_p273_a11, participant_rinses_out_the_sponge, 25, 51030461).

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

