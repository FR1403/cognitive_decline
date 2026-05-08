% ======================================================================
% Paziente 171
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

instance(i_p171_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p171_a11, participant_wets_the_sponge, 1, 56715430).
raw_performed(i_p171_a11, participant_washes_the_countertops, 2, 56716559).
raw_performed(i_p171_a11, participant_washes_the_countertops, 3, 56722364).
raw_performed(i_p171_a11, participant_washes_the_countertops, 4, 56727184).
raw_performed(i_p171_a11, participant_washes_the_countertops, 5, 56731407).
raw_performed(i_p171_a11, participant_washes_the_countertops, 6, 56734644).
raw_performed(i_p171_a11, participant_wets_the_sponge, 7, 56737663).
raw_performed(i_p171_a11, participant_wets_the_sponge, 8, 56740135).
raw_performed(i_p171_a11, participant_wets_the_sponge, 9, 56745079).
raw_performed(i_p171_a11, participant_washes_the_countertops, 10, 56746739).
raw_performed(i_p171_a11, participant_wets_the_sponge, 11, 56747550).
raw_performed(i_p171_a11, participant_washes_the_countertops, 12, 56758271).
raw_performed(i_p171_a11, participant_washes_the_countertops, 13, 56770932).
raw_performed(i_p171_a11, participant_washes_the_countertops, 14, 56775973).
raw_performed(i_p171_a11, participant_washes_the_countertops, 15, 56787792).
raw_performed(i_p171_a11, participant_washes_the_countertops, 16, 56790178).
raw_performed(i_p171_a11, participant_washes_the_countertops, 17, 56791267).
raw_performed(i_p171_a11, participant_washes_the_countertops, 18, 56800138).
raw_performed(i_p171_a11, participant_washes_the_countertops, 19, 56803384).
raw_performed(i_p171_a11, participant_washes_the_countertops, 20, 56817751).
raw_performed(i_p171_a11, participant_washes_the_countertops, 21, 56822331).
raw_performed(i_p171_a11, participant_washes_the_countertops, 22, 56826256).
raw_performed(i_p171_a11, participant_washes_the_countertops, 23, 56832961).
raw_performed(i_p171_a11, participant_washes_the_countertops, 24, 56836035).
raw_performed(i_p171_a11, participant_washes_the_countertops, 25, 56848208).
raw_performed(i_p171_a11, participant_washes_the_countertops, 26, 56869949).
raw_performed(i_p171_a11, participant_washes_the_countertops, 27, 56876650).
raw_performed(i_p171_a11, participant_rinses_out_the_sponge, 28, 56881062).
raw_performed(i_p171_a11, participant_rinses_out_the_sponge, 29, 56883535).
raw_performed(i_p171_a11, participant_rinses_out_the_sponge, 30, 56890929).
raw_performed(i_p171_a11, participant_rinses_out_the_sponge, 31, 56898466).
raw_performed(i_p171_a11, participant_rinses_out_the_sponge, 32, 56898490).

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

