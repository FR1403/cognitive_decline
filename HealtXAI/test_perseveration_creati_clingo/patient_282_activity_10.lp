% ======================================================================
% Paziente 282
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

instance(i_p282_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p282_a11, participant_wets_the_sponge, 1, 54181760).
raw_performed(i_p282_a11, participant_wets_the_sponge, 2, 54184583).
raw_performed(i_p282_a11, participant_wets_the_sponge, 3, 54188170).
raw_performed(i_p282_a11, participant_wets_the_sponge, 4, 54190929).
raw_performed(i_p282_a11, participant_washes_the_countertops, 5, 54199255).
raw_performed(i_p282_a11, participant_washes_the_countertops, 6, 54204164).
raw_performed(i_p282_a11, participant_washes_the_countertops, 7, 54215964).
raw_performed(i_p282_a11, participant_washes_the_countertops, 8, 54225293).
raw_performed(i_p282_a11, participant_wets_the_sponge, 9, 54229696).
raw_performed(i_p282_a11, participant_wets_the_sponge, 10, 54232910).
raw_performed(i_p282_a11, participant_washes_the_countertops, 11, 54233880).
raw_performed(i_p282_a11, participant_washes_the_countertops, 12, 54241093).
raw_performed(i_p282_a11, participant_washes_the_countertops, 13, 54249885).
raw_performed(i_p282_a11, participant_wets_the_sponge, 14, 54253839).
raw_performed(i_p282_a11, participant_washes_the_countertops, 15, 54258275).
raw_performed(i_p282_a11, participant_washes_the_countertops, 16, 54282390).
raw_performed(i_p282_a11, participant_washes_the_countertops, 17, 54283016).
raw_performed(i_p282_a11, participant_washes_the_countertops, 18, 54300380).
raw_performed(i_p282_a11, participant_washes_the_countertops, 19, 54303837).
raw_performed(i_p282_a11, participant_washes_the_countertops, 20, 54304395).
raw_performed(i_p282_a11, participant_wets_the_sponge, 21, 54307740).
raw_performed(i_p282_a11, participant_wets_the_sponge, 22, 54310715).
raw_performed(i_p282_a11, participant_washes_the_countertops, 23, 54311907).
raw_performed(i_p282_a11, participant_washes_the_countertops, 24, 54312185).
raw_performed(i_p282_a11, participant_washes_the_countertops, 25, 54324180).
raw_performed(i_p282_a11, participant_washes_the_countertops, 26, 54331141).
raw_performed(i_p282_a11, participant_washes_the_countertops, 27, 54341877).
raw_performed(i_p282_a11, participant_washes_the_countertops, 28, 54351951).
raw_performed(i_p282_a11, participant_washes_the_countertops, 29, 54354628).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 30, 54358944).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 31, 54362089).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 32, 54363537).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 33, 54364096).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 34, 54372189).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 35, 54373841).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 36, 54375885).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 37, 54379909).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 38, 54380149).
raw_performed(i_p282_a11, participant_rinses_out_the_sponge, 39, 54385618).
raw_performed(i_p282_a11, participant_dries_the_countertops, 40, 54437738).
raw_performed(i_p282_a11, participant_dries_the_countertops, 41, 54443650).
raw_performed(i_p282_a11, participant_dries_the_countertops, 42, 54456390).
raw_performed(i_p282_a11, participant_dries_the_countertops, 43, 54458823).
raw_performed(i_p282_a11, participant_dries_the_countertops, 44, 54465660).
raw_performed(i_p282_a11, participant_dries_the_countertops, 45, 54476333).
raw_performed(i_p282_a11, participant_dries_the_countertops, 46, 54478473).
raw_performed(i_p282_a11, participant_dries_the_countertops, 47, 54494573).
raw_performed(i_p282_a11, participant_dries_the_countertops, 48, 54499326).
raw_performed(i_p282_a11, participant_dries_the_countertops, 49, 54502282).
raw_performed(i_p282_a11, participant_dries_the_countertops, 50, 54508477).
raw_performed(i_p282_a11, participant_dries_the_countertops, 51, 54516380).
raw_performed(i_p282_a11, participant_dries_the_countertops, 52, 54521609).

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

