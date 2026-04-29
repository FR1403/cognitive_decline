% ======================================================================
% Paziente 97
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

instance(i_p97_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p97_a11, participant_wets_the_sponge, 1, 52574660).
raw_performed(i_p97_a11, participant_wets_the_sponge, 2, 52577154).
raw_performed(i_p97_a11, participant_wets_the_sponge, 3, 52579610).
raw_performed(i_p97_a11, participant_wets_the_sponge, 4, 52591916).
raw_performed(i_p97_a11, participant_washes_the_countertops, 5, 52592146).
raw_performed(i_p97_a11, participant_washes_the_countertops, 6, 52606911).
raw_performed(i_p97_a11, participant_washes_the_countertops, 7, 52610267).
raw_performed(i_p97_a11, participant_washes_the_countertops, 8, 52623641).
raw_performed(i_p97_a11, participant_washes_the_countertops, 9, 52634050).
raw_performed(i_p97_a11, participant_wets_the_sponge, 10, 52636347).
raw_performed(i_p97_a11, participant_wets_the_sponge, 11, 52638801).
raw_performed(i_p97_a11, participant_wets_the_sponge, 12, 52643721).
raw_performed(i_p97_a11, participant_washes_the_countertops, 13, 52647220).
raw_performed(i_p97_a11, participant_washes_the_countertops, 14, 52647239).
raw_performed(i_p97_a11, participant_wets_the_sponge, 15, 52648645).
raw_performed(i_p97_a11, participant_washes_the_countertops, 16, 52649961).
raw_performed(i_p97_a11, participant_wets_the_sponge, 17, 52656073).
raw_performed(i_p97_a11, participant_wets_the_sponge, 18, 52658541).
raw_performed(i_p97_a11, participant_washes_the_countertops, 19, 52663399).
raw_performed(i_p97_a11, participant_washes_the_countertops, 20, 52665008).
raw_performed(i_p97_a11, participant_washes_the_countertops, 21, 52672029).
raw_performed(i_p97_a11, participant_wets_the_sponge, 22, 52675827).
raw_performed(i_p97_a11, participant_wets_the_sponge, 23, 52685685).
raw_performed(i_p97_a11, participant_washes_the_countertops, 24, 52693350).
raw_performed(i_p97_a11, participant_wets_the_sponge, 25, 52695518).
raw_performed(i_p97_a11, participant_wets_the_sponge, 26, 52700448).
raw_performed(i_p97_a11, participant_washes_the_countertops, 27, 52701345).
raw_performed(i_p97_a11, participant_washes_the_countertops, 28, 52710286).
raw_performed(i_p97_a11, participant_wets_the_sponge, 29, 52712750).
raw_performed(i_p97_a11, participant_washes_the_countertops, 30, 52713639).
raw_performed(i_p97_a11, participant_washes_the_countertops, 31, 52724399).
raw_performed(i_p97_a11, participant_washes_the_countertops, 32, 52742909).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 33, 52747344).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 34, 52747363).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 35, 52749806).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 36, 52752290).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 37, 52754753).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 38, 52757219).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 39, 52759685).
raw_performed(i_p97_a11, participant_rinses_out_the_sponge, 40, 52759728).

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

