% ======================================================================
% Paziente 51
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

instance(i_p51_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p51_a11, participant_wets_the_sponge, 1, 36388807).
raw_performed(i_p51_a11, participant_wets_the_sponge, 2, 36391262).
raw_performed(i_p51_a11, participant_wets_the_sponge, 3, 36393724).
raw_performed(i_p51_a11, participant_wets_the_sponge, 4, 36396179).
raw_performed(i_p51_a11, participant_wets_the_sponge, 5, 36398630).
raw_performed(i_p51_a11, participant_washes_the_countertops, 6, 36402085).
raw_performed(i_p51_a11, participant_washes_the_countertops, 7, 36406466).
raw_performed(i_p51_a11, participant_washes_the_countertops, 8, 36412950).
raw_performed(i_p51_a11, participant_washes_the_countertops, 9, 36427024).
raw_performed(i_p51_a11, participant_washes_the_countertops, 10, 36428122).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 11, 36435550).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 12, 36440497).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 13, 36440783).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 14, 36442929).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 15, 36445384).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 16, 36447879).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 17, 36449133).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 18, 36450332).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 19, 36452795).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 20, 36457704).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 21, 36460188).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 22, 36461696).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 23, 36462634).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 24, 36465084).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 25, 36467579).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 26, 36467593).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 27, 36470017).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 28, 36474936).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 29, 36477191).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 30, 36477401).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 31, 36477420).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 32, 36482327).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 33, 36482347).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 34, 36483160).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 35, 36484776).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 36, 36487238).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 37, 36489702).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 38, 36489738).
raw_performed(i_p51_a11, participant_rinses_out_the_sponge, 39, 36491211).
raw_performed(i_p51_a11, participant_dries_the_countertops, 40, 36502251).
raw_performed(i_p51_a11, participant_dries_the_countertops, 41, 36511448).
raw_performed(i_p51_a11, participant_dries_the_countertops, 42, 36523157).
raw_performed(i_p51_a11, participant_dries_the_countertops, 43, 36523759).
raw_performed(i_p51_a11, participant_dries_the_countertops, 44, 36530109).

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

