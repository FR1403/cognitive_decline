% ======================================================================
% Paziente 193
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

instance(i_p193_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p193_a11, participant_wets_the_sponge, 1, 42197539).
raw_performed(i_p193_a11, participant_wets_the_sponge, 2, 42201342).
raw_performed(i_p193_a11, participant_wets_the_sponge, 3, 42205079).
raw_performed(i_p193_a11, participant_wets_the_sponge, 4, 42216292).
raw_performed(i_p193_a11, participant_wets_the_sponge, 5, 42220049).
raw_performed(i_p193_a11, participant_washes_the_countertops, 6, 42225913).
raw_performed(i_p193_a11, participant_wets_the_sponge, 7, 42244735).
raw_performed(i_p193_a11, participant_wets_the_sponge, 8, 42252199).
raw_performed(i_p193_a11, participant_wets_the_sponge, 9, 42259612).
raw_performed(i_p193_a11, participant_wets_the_sponge, 10, 42263342).
raw_performed(i_p193_a11, participant_wets_the_sponge, 11, 42264152).
raw_performed(i_p193_a11, participant_wets_the_sponge, 12, 42270939).
raw_performed(i_p193_a11, participant_wets_the_sponge, 13, 42274705).
raw_performed(i_p193_a11, participant_washes_the_countertops, 14, 42278972).
raw_performed(i_p193_a11, participant_washes_the_countertops, 15, 42292319).
raw_performed(i_p193_a11, participant_washes_the_countertops, 16, 42292405).
raw_performed(i_p193_a11, participant_washes_the_countertops, 17, 42295969).
raw_performed(i_p193_a11, participant_washes_the_countertops, 18, 42299282).
raw_performed(i_p193_a11, participant_rinses_out_the_sponge, 19, 42303150).
raw_performed(i_p193_a11, participant_dries_the_countertops, 20, 42311002).
raw_performed(i_p193_a11, participant_dries_the_countertops, 21, 42318533).
raw_performed(i_p193_a11, participant_dries_the_countertops, 22, 42320627).
raw_performed(i_p193_a11, participant_dries_the_countertops, 23, 42322795).
raw_performed(i_p193_a11, participant_dries_the_countertops, 24, 42328651).
raw_performed(i_p193_a11, participant_dries_the_countertops, 25, 42330798).

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

