% ======================================================================
% Paziente 205
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

instance(i_p205_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p205_a11, participant_wets_the_sponge, 1, 40504000).
raw_performed(i_p205_a11, participant_wets_the_sponge, 2, 40507086).
raw_performed(i_p205_a11, participant_wets_the_sponge, 3, 40511067).
raw_performed(i_p205_a11, participant_wets_the_sponge, 4, 40520095).
raw_performed(i_p205_a11, participant_wets_the_sponge, 5, 40524073).
raw_performed(i_p205_a11, participant_washes_the_countertops, 6, 40525033).
raw_performed(i_p205_a11, participant_dries_the_countertops, 7, 40525033).
raw_performed(i_p205_a11, participant_washes_the_countertops, 8, 40525036).
raw_performed(i_p205_a11, participant_dries_the_countertops, 9, 40525036).
raw_performed(i_p205_a11, participant_washes_the_countertops, 10, 40536029).
raw_performed(i_p205_a11, participant_dries_the_countertops, 11, 40536029).
raw_performed(i_p205_a11, participant_washes_the_countertops, 12, 40541033).
raw_performed(i_p205_a11, participant_dries_the_countertops, 13, 40541033).
raw_performed(i_p205_a11, participant_washes_the_countertops, 14, 40553026).
raw_performed(i_p205_a11, participant_dries_the_countertops, 15, 40553026).
raw_performed(i_p205_a11, participant_washes_the_countertops, 16, 40555046).
raw_performed(i_p205_a11, participant_dries_the_countertops, 17, 40555046).
raw_performed(i_p205_a11, participant_washes_the_countertops, 18, 40559033).
raw_performed(i_p205_a11, participant_dries_the_countertops, 19, 40559033).
raw_performed(i_p205_a11, participant_washes_the_countertops, 20, 40592039).
raw_performed(i_p205_a11, participant_dries_the_countertops, 21, 40592039).
raw_performed(i_p205_a11, participant_washes_the_countertops, 22, 40593003).
raw_performed(i_p205_a11, participant_dries_the_countertops, 23, 40593003).
raw_performed(i_p205_a11, participant_washes_the_countertops, 24, 40599082).
raw_performed(i_p205_a11, participant_dries_the_countertops, 25, 40599082).
raw_performed(i_p205_a11, participant_washes_the_countertops, 26, 40600085).
raw_performed(i_p205_a11, participant_dries_the_countertops, 27, 40600085).
raw_performed(i_p205_a11, participant_washes_the_countertops, 28, 40609052).
raw_performed(i_p205_a11, participant_dries_the_countertops, 29, 40609052).
raw_performed(i_p205_a11, participant_washes_the_countertops, 30, 40614099).
raw_performed(i_p205_a11, participant_dries_the_countertops, 31, 40614099).
raw_performed(i_p205_a11, participant_washes_the_countertops, 32, 40629098).
raw_performed(i_p205_a11, participant_dries_the_countertops, 33, 40629098).
raw_performed(i_p205_a11, participant_washes_the_countertops, 34, 40636001).
raw_performed(i_p205_a11, participant_dries_the_countertops, 35, 40636001).
raw_performed(i_p205_a11, participant_washes_the_countertops, 36, 40649061).
raw_performed(i_p205_a11, participant_dries_the_countertops, 37, 40649061).
raw_performed(i_p205_a11, participant_washes_the_countertops, 38, 40664037).
raw_performed(i_p205_a11, participant_dries_the_countertops, 39, 40664037).
raw_performed(i_p205_a11, participant_washes_the_countertops, 40, 40668079).
raw_performed(i_p205_a11, participant_dries_the_countertops, 41, 40668079).
raw_performed(i_p205_a11, participant_washes_the_countertops, 42, 40668082).
raw_performed(i_p205_a11, participant_dries_the_countertops, 43, 40668082).
raw_performed(i_p205_a11, participant_washes_the_countertops, 44, 40676016).
raw_performed(i_p205_a11, participant_dries_the_countertops, 45, 40676016).
raw_performed(i_p205_a11, participant_washes_the_countertops, 46, 40695031).
raw_performed(i_p205_a11, participant_dries_the_countertops, 47, 40695031).
raw_performed(i_p205_a11, participant_washes_the_countertops, 48, 40704042).
raw_performed(i_p205_a11, participant_dries_the_countertops, 49, 40704042).
raw_performed(i_p205_a11, participant_washes_the_countertops, 50, 40712001).
raw_performed(i_p205_a11, participant_dries_the_countertops, 51, 40712001).
raw_performed(i_p205_a11, participant_washes_the_countertops, 52, 40715074).
raw_performed(i_p205_a11, participant_dries_the_countertops, 53, 40715074).
raw_performed(i_p205_a11, participant_washes_the_countertops, 54, 40717006).
raw_performed(i_p205_a11, participant_dries_the_countertops, 55, 40717006).

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

