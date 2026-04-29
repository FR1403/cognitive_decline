% ======================================================================
% Paziente 119
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

instance(i_p119_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p119_a11, participant_washes_the_countertops, 1, 52148005).
raw_performed(i_p119_a11, participant_washes_the_countertops, 2, 52148048).
raw_performed(i_p119_a11, participant_washes_the_countertops, 3, 52155022).
raw_performed(i_p119_a11, participant_washes_the_countertops, 4, 52158050).
raw_performed(i_p119_a11, participant_washes_the_countertops, 5, 52161041).
raw_performed(i_p119_a11, participant_washes_the_countertops, 6, 52168000).
raw_performed(i_p119_a11, participant_washes_the_countertops, 7, 52173008).
raw_performed(i_p119_a11, participant_washes_the_countertops, 8, 52179017).
raw_performed(i_p119_a11, participant_washes_the_countertops, 9, 52189005).
raw_performed(i_p119_a11, participant_washes_the_countertops, 10, 52192009).
raw_performed(i_p119_a11, participant_washes_the_countertops, 11, 52217088).
raw_performed(i_p119_a11, participant_dries_the_countertops, 12, 52304094).
raw_performed(i_p119_a11, participant_dries_the_countertops, 13, 52305056).
raw_performed(i_p119_a11, participant_dries_the_countertops, 14, 52307001).
raw_performed(i_p119_a11, participant_dries_the_countertops, 15, 52314040).
raw_performed(i_p119_a11, participant_dries_the_countertops, 16, 52317051).
raw_performed(i_p119_a11, participant_dries_the_countertops, 17, 52327048).
raw_performed(i_p119_a11, participant_dries_the_countertops, 18, 52329077).
raw_performed(i_p119_a11, participant_dries_the_countertops, 19, 52351007).
raw_performed(i_p119_a11, participant_dries_the_countertops, 20, 52358022).
raw_performed(i_p119_a11, participant_dries_the_countertops, 21, 52366054).
raw_performed(i_p119_a11, participant_dries_the_countertops, 22, 52368002).
raw_performed(i_p119_a11, participant_dries_the_countertops, 23, 52369010).
raw_performed(i_p119_a11, participant_dries_the_countertops, 24, 52376064).
raw_performed(i_p119_a11, participant_dries_the_countertops, 25, 52377025).
raw_performed(i_p119_a11, participant_dries_the_countertops, 26, 52378056).
raw_performed(i_p119_a11, participant_dries_the_countertops, 27, 52388098).
raw_performed(i_p119_a11, participant_dries_the_countertops, 28, 52397052).
raw_performed(i_p119_a11, participant_dries_the_countertops, 29, 52410095).
raw_performed(i_p119_a11, participant_dries_the_countertops, 30, 52417008).
raw_performed(i_p119_a11, participant_dries_the_countertops, 31, 52417085).
raw_performed(i_p119_a11, participant_dries_the_countertops, 32, 52419054).
raw_performed(i_p119_a11, participant_dries_the_countertops, 33, 52429054).
raw_performed(i_p119_a11, participant_dries_the_countertops, 34, 52437072).
raw_performed(i_p119_a11, participant_dries_the_countertops, 35, 52438076).
raw_performed(i_p119_a11, participant_dries_the_countertops, 36, 52443010).
raw_performed(i_p119_a11, participant_dries_the_countertops, 37, 52446024).
raw_performed(i_p119_a11, participant_dries_the_countertops, 38, 52453076).
raw_performed(i_p119_a11, participant_dries_the_countertops, 39, 52459020).
raw_performed(i_p119_a11, participant_returns_the_sponge_to_the_sponge_drying_dish, 40, 52473043).

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

