% ======================================================================
% Paziente 239
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

instance(i_p239_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p239_a11, participant_locates_the_sponge, 1, 55197832).
raw_performed(i_p239_a11, participant_wets_the_sponge, 2, 55202684).
raw_performed(i_p239_a11, participant_locates_the_dish_detergent, 3, 55216007).
raw_performed(i_p239_a11, participant_locates_the_dish_detergent, 4, 55216095).
raw_performed(i_p239_a11, participant_lathers_the_sponge_with_the_detergent, 5, 55228135).
raw_performed(i_p239_a11, participant_washes_the_countertops, 6, 55234053).
raw_performed(i_p239_a11, participant_washes_the_countertops, 7, 55240007).
raw_performed(i_p239_a11, participant_washes_the_countertops, 8, 55244311).
raw_performed(i_p239_a11, participant_wets_the_sponge, 9, 55250065).
raw_performed(i_p239_a11, participant_wets_the_sponge, 10, 55253073).
raw_performed(i_p239_a11, participant_wets_the_sponge, 11, 55256081).
raw_performed(i_p239_a11, participant_wets_the_sponge, 12, 55262699).
raw_performed(i_p239_a11, participant_wets_the_sponge, 13, 55265865).
raw_performed(i_p239_a11, participant_washes_the_countertops, 14, 55266576).
raw_performed(i_p239_a11, participant_wets_the_sponge, 15, 55277837).
raw_performed(i_p239_a11, participant_washes_the_countertops, 16, 55278054).
raw_performed(i_p239_a11, participant_wets_the_sponge, 17, 55280638).
raw_performed(i_p239_a11, participant_washes_the_countertops, 18, 55281004).
raw_performed(i_p239_a11, participant_washes_the_countertops, 19, 55281072).
raw_performed(i_p239_a11, participant_washes_the_countertops, 20, 55285388).
raw_performed(i_p239_a11, participant_washes_the_countertops, 21, 55287029).
raw_performed(i_p239_a11, participant_wets_the_sponge, 22, 55289798).
raw_performed(i_p239_a11, participant_wets_the_sponge, 23, 55292067).
raw_performed(i_p239_a11, participant_washes_the_countertops, 24, 55296513).
raw_performed(i_p239_a11, participant_washes_the_countertops, 25, 55300064).
raw_performed(i_p239_a11, participant_wets_the_sponge, 26, 55304081).
raw_performed(i_p239_a11, participant_wets_the_sponge, 27, 55307663).
raw_performed(i_p239_a11, participant_washes_the_countertops, 28, 55308906).
raw_performed(i_p239_a11, participant_washes_the_countertops, 29, 55310058).
raw_performed(i_p239_a11, participant_washes_the_countertops, 30, 55314840).
raw_performed(i_p239_a11, participant_wets_the_sponge, 31, 55319095).
raw_performed(i_p239_a11, participant_wets_the_sponge, 32, 55323054).
raw_performed(i_p239_a11, participant_washes_the_countertops, 33, 55330060).
raw_performed(i_p239_a11, participant_washes_the_countertops, 34, 55337088).
raw_performed(i_p239_a11, participant_dries_the_countertops, 35, 55354038).
raw_performed(i_p239_a11, participant_dries_the_countertops, 36, 55354290).
raw_performed(i_p239_a11, participant_dries_the_countertops, 37, 55371076).
raw_performed(i_p239_a11, participant_dries_the_countertops, 38, 55375020).
raw_performed(i_p239_a11, participant_dries_the_countertops, 39, 55375034).
raw_performed(i_p239_a11, participant_dries_the_countertops, 40, 55390552).
raw_performed(i_p239_a11, participant_dries_the_countertops, 41, 55392577).
raw_performed(i_p239_a11, participant_dries_the_countertops, 42, 55399421).
raw_performed(i_p239_a11, participant_dries_the_countertops, 43, 55406052).
raw_performed(i_p239_a11, participant_dries_the_countertops, 44, 55409861).
raw_performed(i_p239_a11, participant_returns_the_sponge_to_the_sponge_drying_dish, 45, 55414009).
raw_performed(i_p239_a11, participant_dries_the_countertops, 46, 55414083).

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

