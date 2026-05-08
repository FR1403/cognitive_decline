% ======================================================================
% Paziente 77
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

instance(i_p77_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p77_a11, participant_washes_the_countertops, 1, 52294050).
raw_performed(i_p77_a11, participant_washes_the_countertops, 2, 52295095).
raw_performed(i_p77_a11, participant_washes_the_countertops, 3, 52307027).
raw_performed(i_p77_a11, participant_washes_the_countertops, 4, 52307089).
raw_performed(i_p77_a11, participant_washes_the_countertops, 5, 52331014).
raw_performed(i_p77_a11, participant_washes_the_countertops, 6, 52336020).
raw_performed(i_p77_a11, participant_washes_the_countertops, 7, 52343032).
raw_performed(i_p77_a11, participant_washes_the_countertops, 8, 52353074).
raw_performed(i_p77_a11, participant_washes_the_countertops, 9, 52362058).
raw_performed(i_p77_a11, participant_washes_the_countertops, 10, 52371000).
raw_performed(i_p77_a11, participant_washes_the_countertops, 11, 52377090).
raw_performed(i_p77_a11, participant_washes_the_countertops, 12, 52381000).
raw_performed(i_p77_a11, participant_washes_the_countertops, 13, 52384047).
raw_performed(i_p77_a11, participant_washes_the_countertops, 14, 52393068).
raw_performed(i_p77_a11, participant_washes_the_countertops, 15, 52410033).
raw_performed(i_p77_a11, participant_washes_the_countertops, 16, 52415009).
raw_performed(i_p77_a11, participant_washes_the_countertops, 17, 52421085).
raw_performed(i_p77_a11, participant_washes_the_countertops, 18, 52437013).
raw_performed(i_p77_a11, participant_washes_the_countertops, 19, 52441011).
raw_performed(i_p77_a11, participant_dries_the_countertops, 20, 52442037).
raw_performed(i_p77_a11, participant_dries_the_countertops, 21, 52446055).
raw_performed(i_p77_a11, participant_dries_the_countertops, 22, 52447083).
raw_performed(i_p77_a11, participant_dries_the_countertops, 23, 52456003).
raw_performed(i_p77_a11, participant_dries_the_countertops, 24, 52466038).
raw_performed(i_p77_a11, participant_dries_the_countertops, 25, 52476004).
raw_performed(i_p77_a11, participant_dries_the_countertops, 26, 52478008).
raw_performed(i_p77_a11, participant_dries_the_countertops, 27, 52485070).
raw_performed(i_p77_a11, participant_dries_the_countertops, 28, 52489003).
raw_performed(i_p77_a11, participant_dries_the_countertops, 29, 52495051).
raw_performed(i_p77_a11, participant_dries_the_countertops, 30, 52497096).
raw_performed(i_p77_a11, participant_dries_the_countertops, 31, 52512075).

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

