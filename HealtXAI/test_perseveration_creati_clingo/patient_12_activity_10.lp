% ======================================================================
% Paziente 12
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

instance(i_p12_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p12_a11, participant_wets_the_sponge, 1, 36751370).
raw_performed(i_p12_a11, participant_wets_the_sponge, 2, 36755227).
raw_performed(i_p12_a11, participant_wets_the_sponge, 3, 36762746).
raw_performed(i_p12_a11, participant_wets_the_sponge, 4, 36770397).
raw_performed(i_p12_a11, participant_washes_the_countertops, 5, 36771367).
raw_performed(i_p12_a11, participant_washes_the_countertops, 6, 36776692).
raw_performed(i_p12_a11, participant_washes_the_countertops, 7, 36779821).
raw_performed(i_p12_a11, participant_washes_the_countertops, 8, 36794883).
raw_performed(i_p12_a11, participant_washes_the_countertops, 9, 36796562).
raw_performed(i_p12_a11, participant_washes_the_countertops, 10, 36807915).
raw_performed(i_p12_a11, participant_washes_the_countertops, 11, 36814191).
raw_performed(i_p12_a11, participant_wets_the_sponge, 12, 36817484).
raw_performed(i_p12_a11, participant_wets_the_sponge, 13, 36821353).
raw_performed(i_p12_a11, participant_wets_the_sponge, 14, 36825057).
raw_performed(i_p12_a11, participant_washes_the_countertops, 15, 36825626).
raw_performed(i_p12_a11, participant_washes_the_countertops, 16, 36838612).
raw_performed(i_p12_a11, participant_washes_the_countertops, 17, 36842151).
raw_performed(i_p12_a11, participant_wets_the_sponge, 18, 36845640).
raw_performed(i_p12_a11, participant_washes_the_countertops, 19, 36846662).
raw_performed(i_p12_a11, participant_washes_the_countertops, 20, 36850999).
raw_performed(i_p12_a11, participant_washes_the_countertops, 21, 36851023).
raw_performed(i_p12_a11, participant_washes_the_countertops, 22, 36857706).
raw_performed(i_p12_a11, participant_rinses_out_the_sponge, 23, 36865313).
raw_performed(i_p12_a11, participant_rinses_out_the_sponge, 24, 36865342).
raw_performed(i_p12_a11, participant_rinses_out_the_sponge, 25, 36869076).
raw_performed(i_p12_a11, participant_rinses_out_the_sponge, 26, 36872901).
raw_performed(i_p12_a11, participant_rinses_out_the_sponge, 27, 36876680).

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

