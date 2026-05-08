% ======================================================================
% Paziente 203
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

instance(i_p203_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p203_a11, participant_wets_the_sponge, 1, 38967781).
raw_performed(i_p203_a11, participant_washes_the_countertops, 2, 38979223).
raw_performed(i_p203_a11, participant_washes_the_countertops, 3, 38980233).
raw_performed(i_p203_a11, participant_washes_the_countertops, 4, 39023388).
raw_performed(i_p203_a11, participant_washes_the_countertops, 5, 39030293).
raw_performed(i_p203_a11, participant_washes_the_countertops, 6, 39037174).
raw_performed(i_p203_a11, participant_washes_the_countertops, 7, 39041351).
raw_performed(i_p203_a11, participant_washes_the_countertops, 8, 39051713).
raw_performed(i_p203_a11, participant_washes_the_countertops, 9, 39077501).
raw_performed(i_p203_a11, participant_washes_the_countertops, 10, 39087412).
raw_performed(i_p203_a11, participant_washes_the_countertops, 11, 39089218).
raw_performed(i_p203_a11, participant_washes_the_countertops, 12, 39130539).
raw_performed(i_p203_a11, participant_washes_the_countertops, 13, 39144723).
raw_performed(i_p203_a11, participant_washes_the_countertops, 14, 39173071).
raw_performed(i_p203_a11, participant_washes_the_countertops, 15, 39190497).
raw_performed(i_p203_a11, participant_washes_the_countertops, 16, 39193847).
raw_performed(i_p203_a11, participant_washes_the_countertops, 17, 39204677).
raw_performed(i_p203_a11, participant_washes_the_countertops, 18, 39212135).
raw_performed(i_p203_a11, participant_wets_the_sponge, 19, 39224160).
raw_performed(i_p203_a11, participant_wets_the_sponge, 20, 39232965).
raw_performed(i_p203_a11, participant_wets_the_sponge, 21, 39245811).
raw_performed(i_p203_a11, participant_washes_the_countertops, 22, 39255981).
raw_performed(i_p203_a11, participant_washes_the_countertops, 23, 39278741).
raw_performed(i_p203_a11, participant_washes_the_countertops, 24, 39283322).
raw_performed(i_p203_a11, participant_washes_the_countertops, 25, 39304488).
raw_performed(i_p203_a11, participant_washes_the_countertops, 26, 39322360).
raw_performed(i_p203_a11, participant_washes_the_countertops, 27, 39326907).
raw_performed(i_p203_a11, participant_washes_the_countertops, 28, 39351391).
raw_performed(i_p203_a11, participant_washes_the_countertops, 29, 39357364).
raw_performed(i_p203_a11, participant_rinses_out_the_sponge, 30, 39363643).
raw_performed(i_p203_a11, participant_rinses_out_the_sponge, 31, 39396352).
raw_performed(i_p203_a11, participant_rinses_out_the_sponge, 32, 39402833).
raw_performed(i_p203_a11, participant_rinses_out_the_sponge, 33, 39412401).
raw_performed(i_p203_a11, participant_dries_the_countertops, 34, 39417571).
raw_performed(i_p203_a11, participant_dries_the_countertops, 35, 39443133).
raw_performed(i_p203_a11, participant_dries_the_countertops, 36, 39445233).
raw_performed(i_p203_a11, participant_dries_the_countertops, 37, 39457703).
raw_performed(i_p203_a11, participant_dries_the_countertops, 38, 39477293).
raw_performed(i_p203_a11, participant_dries_the_countertops, 39, 39478350).

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

