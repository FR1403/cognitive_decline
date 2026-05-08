% ======================================================================
% Paziente 91
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

instance(i_p91_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p91_a11, participant_washes_the_countertops, 1, 56452095).
raw_performed(i_p91_a11, participant_washes_the_countertops, 2, 56460068).
raw_performed(i_p91_a11, participant_washes_the_countertops, 3, 56483029).
raw_performed(i_p91_a11, participant_washes_the_countertops, 4, 56489001).
raw_performed(i_p91_a11, participant_washes_the_countertops, 5, 56506020).
raw_performed(i_p91_a11, participant_washes_the_countertops, 6, 56514011).
raw_performed(i_p91_a11, participant_washes_the_countertops, 7, 56523045).
raw_performed(i_p91_a11, participant_washes_the_countertops, 8, 56530017).
raw_performed(i_p91_a11, participant_washes_the_countertops, 9, 56536041).
raw_performed(i_p91_a11, participant_washes_the_countertops, 10, 56542067).
raw_performed(i_p91_a11, participant_washes_the_countertops, 11, 56548016).
raw_performed(i_p91_a11, participant_washes_the_countertops, 12, 56565063).
raw_performed(i_p91_a11, participant_washes_the_countertops, 13, 56571051).
raw_performed(i_p91_a11, participant_washes_the_countertops, 14, 56601066).
raw_performed(i_p91_a11, participant_washes_the_countertops, 15, 56602029).
raw_performed(i_p91_a11, participant_washes_the_countertops, 16, 56611091).
raw_performed(i_p91_a11, participant_washes_the_countertops, 17, 56625003).
raw_performed(i_p91_a11, participant_washes_the_countertops, 18, 56641013).
raw_performed(i_p91_a11, participant_washes_the_countertops, 19, 56650069).

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

