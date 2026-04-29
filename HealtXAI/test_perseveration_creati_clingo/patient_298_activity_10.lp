% ======================================================================
% Paziente 298
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

instance(i_p298_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p298_a11, participant_wets_the_sponge, 1, 54537274).
raw_performed(i_p298_a11, participant_wets_the_sponge, 2, 54549558).
raw_performed(i_p298_a11, participant_wets_the_sponge, 3, 54552017).
raw_performed(i_p298_a11, participant_washes_the_countertops, 4, 54554952).
raw_performed(i_p298_a11, participant_washes_the_countertops, 5, 54569908).
raw_performed(i_p298_a11, participant_washes_the_countertops, 6, 54572430).
raw_performed(i_p298_a11, participant_washes_the_countertops, 7, 54579856).
raw_performed(i_p298_a11, participant_washes_the_countertops, 8, 54584921).
raw_performed(i_p298_a11, participant_rinses_out_the_sponge, 9, 54591437).
raw_performed(i_p298_a11, participant_rinses_out_the_sponge, 10, 54593890).
raw_performed(i_p298_a11, participant_rinses_out_the_sponge, 11, 54598801).
raw_performed(i_p298_a11, participant_rinses_out_the_sponge, 12, 54608637).
raw_performed(i_p298_a11, participant_rinses_out_the_sponge, 13, 54613559).
raw_performed(i_p298_a11, participant_dries_the_countertops, 14, 54625364).
raw_performed(i_p298_a11, participant_dries_the_countertops, 15, 54635449).
raw_performed(i_p298_a11, participant_dries_the_countertops, 16, 54641653).
raw_performed(i_p298_a11, participant_dries_the_countertops, 17, 54648269).
raw_performed(i_p298_a11, participant_dries_the_countertops, 18, 54656169).
raw_performed(i_p298_a11, participant_dries_the_countertops, 19, 54660884).

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

