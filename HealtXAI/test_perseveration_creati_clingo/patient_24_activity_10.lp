% ======================================================================
% Paziente 24
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

instance(i_p24_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p24_a11, participant_wets_the_sponge, 1, 53170490).
raw_performed(i_p24_a11, participant_wets_the_sponge, 2, 53172962).
raw_performed(i_p24_a11, participant_wets_the_sponge, 3, 53172990).
raw_performed(i_p24_a11, participant_wets_the_sponge, 4, 53180358).
raw_performed(i_p24_a11, participant_washes_the_countertops, 5, 53182170).
raw_performed(i_p24_a11, participant_washes_the_countertops, 6, 53182545).
raw_performed(i_p24_a11, participant_washes_the_countertops, 7, 53188600).
raw_performed(i_p24_a11, participant_washes_the_countertops, 8, 53195317).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 9, 53212506).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 10, 53212539).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 11, 53214980).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 12, 53214999).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 13, 53217445).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 14, 53217465).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 15, 53219924).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 16, 53219943).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 17, 53222444).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 18, 53234749).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 19, 53234772).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 20, 53237249).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 21, 53237267).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 22, 53244626).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 23, 53247101).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 24, 53247139).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 25, 53249573).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 26, 53249616).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 27, 53252037).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 28, 53252056).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 29, 53254502).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 30, 53256967).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 31, 53259494).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 32, 53259512).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 33, 53261973).
raw_performed(i_p24_a11, participant_washes_the_countertops, 34, 53268485).
raw_performed(i_p24_a11, participant_washes_the_countertops, 35, 53273946).
raw_performed(i_p24_a11, participant_washes_the_countertops, 36, 53284803).
raw_performed(i_p24_a11, participant_washes_the_countertops, 37, 53293939).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 38, 53304019).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 39, 53304062).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 40, 53306477).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 41, 53306518).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 42, 53318838).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 43, 53318871).
raw_performed(i_p24_a11, participant_rinses_out_the_sponge, 44, 53321347).

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

