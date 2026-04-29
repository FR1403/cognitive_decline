% ======================================================================
% Paziente 107
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

instance(i_p107_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p107_a11, participant_wets_the_sponge, 1, 44026425).
raw_performed(i_p107_a11, participant_wets_the_sponge, 2, 44030164).
raw_performed(i_p107_a11, participant_washes_the_countertops, 3, 44034322).
raw_performed(i_p107_a11, participant_washes_the_countertops, 4, 44046569).
raw_performed(i_p107_a11, participant_wets_the_sponge, 5, 44052874).
raw_performed(i_p107_a11, participant_washes_the_countertops, 6, 44061039).
raw_performed(i_p107_a11, participant_wets_the_sponge, 7, 44064173).
raw_performed(i_p107_a11, participant_washes_the_countertops, 8, 44072157).
raw_performed(i_p107_a11, participant_washes_the_countertops, 9, 44072181).
raw_performed(i_p107_a11, participant_washes_the_countertops, 10, 44101532).
raw_performed(i_p107_a11, participant_washes_the_countertops, 11, 44112471).
raw_performed(i_p107_a11, participant_washes_the_countertops, 12, 44116732).
raw_performed(i_p107_a11, participant_washes_the_countertops, 13, 44123907).
raw_performed(i_p107_a11, participant_wets_the_sponge, 14, 44135287).
raw_performed(i_p107_a11, participant_wets_the_sponge, 15, 44135314).
raw_performed(i_p107_a11, participant_washes_the_countertops, 16, 44137352).
raw_performed(i_p107_a11, participant_wets_the_sponge, 17, 44139233).
raw_performed(i_p107_a11, participant_wets_the_sponge, 18, 44139260).
raw_performed(i_p107_a11, participant_wets_the_sponge, 19, 44144657).
raw_performed(i_p107_a11, participant_wets_the_sponge, 20, 44148593).
raw_performed(i_p107_a11, participant_wets_the_sponge, 21, 44148621).
raw_performed(i_p107_a11, participant_wets_the_sponge, 22, 44154954).
raw_performed(i_p107_a11, participant_wets_the_sponge, 23, 44158729).
raw_performed(i_p107_a11, participant_wets_the_sponge, 24, 44162666).
raw_performed(i_p107_a11, participant_wets_the_sponge, 25, 44162693).
raw_performed(i_p107_a11, participant_wets_the_sponge, 26, 44170412).
raw_performed(i_p107_a11, participant_wets_the_sponge, 27, 44170440).
raw_performed(i_p107_a11, participant_wets_the_sponge, 28, 44174250).
raw_performed(i_p107_a11, participant_wets_the_sponge, 29, 44178075).
raw_performed(i_p107_a11, participant_washes_the_countertops, 30, 44182423).
raw_performed(i_p107_a11, participant_washes_the_countertops, 31, 44182447).
raw_performed(i_p107_a11, participant_washes_the_countertops, 32, 44187704).
raw_performed(i_p107_a11, participant_washes_the_countertops, 33, 44197362).
raw_performed(i_p107_a11, participant_washes_the_countertops, 34, 44201365).
raw_performed(i_p107_a11, participant_rinses_out_the_sponge, 35, 44204417).
raw_performed(i_p107_a11, participant_rinses_out_the_sponge, 36, 44204444).
raw_performed(i_p107_a11, participant_rinses_out_the_sponge, 37, 44209797).
raw_performed(i_p107_a11, participant_dries_the_countertops, 38, 44210131).
raw_performed(i_p107_a11, participant_dries_the_countertops, 39, 44219672).
raw_performed(i_p107_a11, participant_dries_the_countertops, 40, 44223610).

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

