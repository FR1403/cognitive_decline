% ======================================================================
% Paziente 290
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

instance(i_p290_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p290_a11, participant_wets_the_sponge, 1, 51041134).
raw_performed(i_p290_a11, participant_wets_the_sponge, 2, 51041152).
raw_performed(i_p290_a11, participant_wets_the_sponge, 3, 51045306).
raw_performed(i_p290_a11, participant_wets_the_sponge, 4, 51045324).
raw_performed(i_p290_a11, participant_wets_the_sponge, 5, 51049058).
raw_performed(i_p290_a11, participant_wets_the_sponge, 6, 51049072).
raw_performed(i_p290_a11, participant_washes_the_countertops, 7, 51049414).
raw_performed(i_p290_a11, participant_washes_the_countertops, 8, 51053717).
raw_performed(i_p290_a11, participant_wets_the_sponge, 9, 51064565).
raw_performed(i_p290_a11, participant_wets_the_sponge, 10, 51064583).
raw_performed(i_p290_a11, participant_wets_the_sponge, 11, 51072370).
raw_performed(i_p290_a11, participant_wets_the_sponge, 12, 51072388).
raw_performed(i_p290_a11, participant_washes_the_countertops, 13, 51072747).
raw_performed(i_p290_a11, participant_washes_the_countertops, 14, 51080415).
raw_performed(i_p290_a11, participant_wets_the_sponge, 15, 51083727).
raw_performed(i_p290_a11, participant_wets_the_sponge, 16, 51083741).
raw_performed(i_p290_a11, participant_wets_the_sponge, 17, 51087476).
raw_performed(i_p290_a11, participant_wets_the_sponge, 18, 51087490).
raw_performed(i_p290_a11, participant_washes_the_countertops, 19, 51087849).
raw_performed(i_p290_a11, participant_washes_the_countertops, 20, 51092266).
raw_performed(i_p290_a11, participant_washes_the_countertops, 21, 51104797).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 22, 51108279).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 23, 51108292).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 24, 51112162).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 25, 51112180).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 26, 51115881).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 27, 51119618).
raw_performed(i_p290_a11, participant_rinses_out_the_sponge, 28, 51123414).
raw_performed(i_p290_a11, participant_dries_the_countertops, 29, 51127935).
raw_performed(i_p290_a11, participant_dries_the_countertops, 30, 51131305).
raw_performed(i_p290_a11, participant_dries_the_countertops, 31, 51135175).
raw_performed(i_p290_a11, participant_dries_the_countertops, 32, 51140537).

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

