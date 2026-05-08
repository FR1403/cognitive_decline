% ======================================================================
% Paziente 236
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

instance(i_p236_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p236_a11, participant_wets_the_sponge, 1, 51243203).
raw_performed(i_p236_a11, participant_wets_the_sponge, 2, 51246961).
raw_performed(i_p236_a11, participant_wets_the_sponge, 3, 51250756).
raw_performed(i_p236_a11, participant_washes_the_countertops, 4, 51259441).
raw_performed(i_p236_a11, participant_wets_the_sponge, 5, 51265774).
raw_performed(i_p236_a11, participant_wets_the_sponge, 6, 51269712).
raw_performed(i_p236_a11, participant_washes_the_countertops, 7, 51273872).
raw_performed(i_p236_a11, participant_washes_the_countertops, 8, 51286347).
raw_performed(i_p236_a11, participant_washes_the_countertops, 9, 51286981).
raw_performed(i_p236_a11, participant_washes_the_countertops, 10, 51292958).
raw_performed(i_p236_a11, participant_washes_the_countertops, 11, 51293979).
raw_performed(i_p236_a11, participant_washes_the_countertops, 12, 51302419).
raw_performed(i_p236_a11, participant_wets_the_sponge, 13, 51305805).
raw_performed(i_p236_a11, participant_washes_the_countertops, 14, 51311750).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 15, 51313608).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 16, 51328467).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 17, 51328495).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 18, 51332213).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 19, 51332239).
raw_performed(i_p236_a11, participant_rinses_out_the_sponge, 20, 51335991).

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

