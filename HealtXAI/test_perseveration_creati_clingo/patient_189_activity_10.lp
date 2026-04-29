% ======================================================================
% Paziente 189
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

instance(i_p189_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p189_a11, participant_wets_the_sponge, 1, 37174536).
raw_performed(i_p189_a11, participant_washes_the_countertops, 2, 37189169).
raw_performed(i_p189_a11, participant_washes_the_countertops, 3, 37194943).
raw_performed(i_p189_a11, participant_washes_the_countertops, 4, 37197855).
raw_performed(i_p189_a11, participant_washes_the_countertops, 5, 37201504).
raw_performed(i_p189_a11, participant_washes_the_countertops, 6, 37205112).
raw_performed(i_p189_a11, participant_washes_the_countertops, 7, 37218453).
raw_performed(i_p189_a11, participant_washes_the_countertops, 8, 37221166).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 9, 37223786).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 10, 37226297).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 11, 37228753).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 12, 37231215).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 13, 37233669).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 14, 37241062).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 15, 37250901).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 16, 37253358).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 17, 37273023).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 18, 37275459).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 19, 37277924).
raw_performed(i_p189_a11, participant_rinses_out_the_sponge, 20, 37277943).

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

