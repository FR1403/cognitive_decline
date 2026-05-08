% ======================================================================
% Paziente 25
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

instance(i_p25_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a11, participant_wets_the_sponge, 1, 55906633).
raw_performed(i_p25_a11, participant_washes_the_countertops, 2, 55933124).
raw_performed(i_p25_a11, participant_washes_the_countertops, 3, 55942099).
raw_performed(i_p25_a11, participant_wets_the_sponge, 4, 55943199).
raw_performed(i_p25_a11, participant_wets_the_sponge, 5, 55948831).
raw_performed(i_p25_a11, participant_wets_the_sponge, 6, 55962691).
raw_performed(i_p25_a11, participant_wets_the_sponge, 7, 55964379).
raw_performed(i_p25_a11, participant_wets_the_sponge, 8, 55972446).
raw_performed(i_p25_a11, participant_washes_the_countertops, 9, 55972529).
raw_performed(i_p25_a11, participant_washes_the_countertops, 10, 55982547).
raw_performed(i_p25_a11, participant_washes_the_countertops, 11, 55989506).
raw_performed(i_p25_a11, participant_washes_the_countertops, 12, 56023425).
raw_performed(i_p25_a11, participant_washes_the_countertops, 13, 56038625).
raw_performed(i_p25_a11, participant_washes_the_countertops, 14, 56042860).
raw_performed(i_p25_a11, participant_washes_the_countertops, 15, 56045813).
raw_performed(i_p25_a11, participant_washes_the_countertops, 16, 56051442).
raw_performed(i_p25_a11, participant_washes_the_countertops, 17, 56055369).
raw_performed(i_p25_a11, participant_washes_the_countertops, 18, 56060982).
raw_performed(i_p25_a11, participant_washes_the_countertops, 19, 56074855).
raw_performed(i_p25_a11, participant_washes_the_countertops, 20, 56082368).
raw_performed(i_p25_a11, participant_washes_the_countertops, 21, 56084243).
raw_performed(i_p25_a11, participant_wets_the_sponge, 22, 56088428).
raw_performed(i_p25_a11, participant_wets_the_sponge, 23, 56095682).
raw_performed(i_p25_a11, participant_wets_the_sponge, 24, 56100880).
raw_performed(i_p25_a11, participant_wets_the_sponge, 25, 56112133).
raw_performed(i_p25_a11, participant_wets_the_sponge, 26, 56113823).
raw_performed(i_p25_a11, participant_wets_the_sponge, 27, 56116429).
raw_performed(i_p25_a11, participant_wets_the_sponge, 28, 56126912).
raw_performed(i_p25_a11, participant_washes_the_countertops, 29, 56151172).
raw_performed(i_p25_a11, participant_washes_the_countertops, 30, 56153790).
raw_performed(i_p25_a11, participant_washes_the_countertops, 31, 56157174).
raw_performed(i_p25_a11, participant_washes_the_countertops, 32, 56161235).
raw_performed(i_p25_a11, participant_rinses_out_the_sponge, 33, 56163484).
raw_performed(i_p25_a11, participant_rinses_out_the_sponge, 34, 56166508).
raw_performed(i_p25_a11, participant_rinses_out_the_sponge, 35, 56168381).
raw_performed(i_p25_a11, participant_rinses_out_the_sponge, 36, 56179993).
raw_performed(i_p25_a11, participant_rinses_out_the_sponge, 37, 56182605).
raw_performed(i_p25_a11, participant_dries_the_countertops, 38, 56184549).
raw_performed(i_p25_a11, participant_dries_the_countertops, 39, 56188849).
raw_performed(i_p25_a11, participant_dries_the_countertops, 40, 56193360).

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

