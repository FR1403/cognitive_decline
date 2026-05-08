% ======================================================================
% Paziente 170
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

instance(i_p170_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p170_a11, participant_wets_the_sponge, 1, 51347801).
raw_performed(i_p170_a11, participant_washes_the_countertops, 2, 51353946).
raw_performed(i_p170_a11, participant_washes_the_countertops, 3, 51364697).
raw_performed(i_p170_a11, participant_washes_the_countertops, 4, 51373146).
raw_performed(i_p170_a11, participant_washes_the_countertops, 5, 51384374).
raw_performed(i_p170_a11, participant_washes_the_countertops, 6, 51388052).
raw_performed(i_p170_a11, participant_wets_the_sponge, 7, 51389605).
raw_performed(i_p170_a11, participant_wets_the_sponge, 8, 51392066).
raw_performed(i_p170_a11, participant_wets_the_sponge, 9, 51394509).
raw_performed(i_p170_a11, participant_washes_the_countertops, 10, 51396660).
raw_performed(i_p170_a11, participant_wets_the_sponge, 11, 51396977).
raw_performed(i_p170_a11, participant_washes_the_countertops, 12, 51403706).
raw_performed(i_p170_a11, participant_wets_the_sponge, 13, 51409317).
raw_performed(i_p170_a11, participant_wets_the_sponge, 14, 51411770).
raw_performed(i_p170_a11, participant_wets_the_sponge, 15, 51414227).
raw_performed(i_p170_a11, participant_washes_the_countertops, 16, 51415924).
raw_performed(i_p170_a11, participant_washes_the_countertops, 17, 51416774).
raw_performed(i_p170_a11, participant_washes_the_countertops, 18, 51420108).
raw_performed(i_p170_a11, participant_washes_the_countertops, 19, 51423942).
raw_performed(i_p170_a11, participant_washes_the_countertops, 20, 51431238).
raw_performed(i_p170_a11, participant_washes_the_countertops, 21, 51436989).
raw_performed(i_p170_a11, participant_washes_the_countertops, 22, 51443397).
raw_performed(i_p170_a11, participant_wets_the_sponge, 23, 51446226).
raw_performed(i_p170_a11, participant_wets_the_sponge, 24, 51448672).
raw_performed(i_p170_a11, participant_rinses_out_the_sponge, 25, 51451127).
raw_performed(i_p170_a11, participant_rinses_out_the_sponge, 26, 51453592).
raw_performed(i_p170_a11, participant_rinses_out_the_sponge, 27, 51468364).
raw_performed(i_p170_a11, participant_rinses_out_the_sponge, 28, 51473303).

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

