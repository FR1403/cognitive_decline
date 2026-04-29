% ======================================================================
% Paziente 140
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

instance(i_p140_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p140_a11, participant_wets_the_sponge, 1, 55832110).
raw_performed(i_p140_a11, participant_wets_the_sponge, 2, 55832130).
raw_performed(i_p140_a11, participant_wets_the_sponge, 3, 55834589).
raw_performed(i_p140_a11, participant_wets_the_sponge, 4, 55834610).
raw_performed(i_p140_a11, participant_washes_the_countertops, 5, 55851554).
raw_performed(i_p140_a11, participant_washes_the_countertops, 6, 55861946).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 7, 55864245).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 8, 55866732).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 9, 55871740).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 10, 55881663).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 11, 55884124).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 12, 55901412).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 13, 55901435).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 14, 55903883).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 15, 55903902).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 16, 55918679).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 17, 55921157).
raw_performed(i_p140_a11, participant_washes_the_countertops, 18, 55924143).
raw_performed(i_p140_a11, participant_washes_the_countertops, 19, 55948446).
raw_performed(i_p140_a11, participant_washes_the_countertops, 20, 55957299).
raw_performed(i_p140_a11, participant_washes_the_countertops, 21, 55960429).
raw_performed(i_p140_a11, participant_washes_the_countertops, 22, 55960456).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 23, 55968177).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 24, 55968221).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 25, 55970632).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 26, 55970680).
raw_performed(i_p140_a11, participant_washes_the_countertops, 27, 55985626).
raw_performed(i_p140_a11, participant_washes_the_countertops, 28, 55986249).
raw_performed(i_p140_a11, participant_washes_the_countertops, 29, 56007679).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 30, 56010247).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 31, 56012711).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 32, 56012729).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 33, 56015188).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 34, 56017652).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 35, 56020120).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 36, 56030022).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 37, 56032503).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 38, 56034969).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 39, 56042375).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 40, 56044849).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 41, 56054750).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 42, 56054770).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 43, 56057267).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 44, 56067175).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 45, 56069636).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 46, 56072131).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 47, 56089368).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 48, 56091835).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 49, 56094322).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 50, 56104203).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 51, 56106652).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 52, 56114078).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 53, 56116539).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 54, 56128982).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 55, 56131439).
raw_performed(i_p140_a11, participant_washes_the_countertops, 56, 56141488).
raw_performed(i_p140_a11, participant_washes_the_countertops, 57, 56147634).
raw_performed(i_p140_a11, participant_washes_the_countertops, 58, 56155713).
raw_performed(i_p140_a11, participant_washes_the_countertops, 59, 56161770).
raw_performed(i_p140_a11, participant_washes_the_countertops, 60, 56172628).
raw_performed(i_p140_a11, participant_washes_the_countertops, 61, 56176426).
raw_performed(i_p140_a11, participant_washes_the_countertops, 62, 56189942).
raw_performed(i_p140_a11, participant_washes_the_countertops, 63, 56199104).
raw_performed(i_p140_a11, participant_washes_the_countertops, 64, 56207273).
raw_performed(i_p140_a11, participant_washes_the_countertops, 65, 56214113).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 66, 56222973).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 67, 56225451).
raw_performed(i_p140_a11, participant_rinses_out_the_sponge, 68, 56227915).
raw_performed(i_p140_a11, participant_dries_the_countertops, 69, 56233674).
raw_performed(i_p140_a11, participant_dries_the_countertops, 70, 56242420).

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

