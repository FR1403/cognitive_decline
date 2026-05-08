% ======================================================================
% Paziente 47
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

instance(i_p47_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p47_a11, participant_wets_the_sponge, 1, 39376766).
raw_performed(i_p47_a11, participant_wets_the_sponge, 2, 39379245).
raw_performed(i_p47_a11, participant_washes_the_countertops, 3, 39403003).
raw_performed(i_p47_a11, participant_washes_the_countertops, 4, 39407753).
raw_performed(i_p47_a11, participant_washes_the_countertops, 5, 39418304).
raw_performed(i_p47_a11, participant_washes_the_countertops, 6, 39421036).
raw_performed(i_p47_a11, participant_washes_the_countertops, 7, 39427682).
raw_performed(i_p47_a11, participant_washes_the_countertops, 8, 39434386).
raw_performed(i_p47_a11, participant_washes_the_countertops, 9, 39436687).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 10, 39440826).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 11, 39440850).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 12, 39443292).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 13, 39443312).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 14, 39448202).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 15, 39448224).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 16, 39453167).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 17, 39453192).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 18, 39467934).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 19, 39467958).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 20, 39470399).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 21, 39470423).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 22, 39480258).
raw_performed(i_p47_a11, participant_washes_the_countertops, 23, 39480696).
raw_performed(i_p47_a11, participant_washes_the_countertops, 24, 39493335).
raw_performed(i_p47_a11, participant_washes_the_countertops, 25, 39497276).
raw_performed(i_p47_a11, participant_washes_the_countertops, 26, 39508110).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 27, 39512298).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 28, 39512331).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 29, 39514748).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 30, 39514769).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 31, 39517201).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 32, 39519665).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 33, 39524586).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 34, 39524610).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 35, 39541785).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 36, 39544248).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 37, 39544270).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 38, 39549193).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 39, 39549212).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 40, 39551667).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 41, 39554135).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 42, 39554155).
raw_performed(i_p47_a11, participant_washes_the_countertops, 43, 39564562).
raw_performed(i_p47_a11, participant_washes_the_countertops, 44, 39564936).
raw_performed(i_p47_a11, participant_washes_the_countertops, 45, 39569210).
raw_performed(i_p47_a11, participant_washes_the_countertops, 46, 39573973).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 47, 39578754).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 48, 39578793).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 49, 39581236).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 50, 39581253).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 51, 39583679).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 52, 39586164).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 53, 39586181).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 54, 39588624).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 55, 39588638).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 56, 39591061).
raw_performed(i_p47_a11, participant_rinses_out_the_sponge, 57, 39591079).
raw_performed(i_p47_a11, participant_dries_the_countertops, 58, 39603965).
raw_performed(i_p47_a11, participant_dries_the_countertops, 59, 39605490).
raw_performed(i_p47_a11, participant_dries_the_countertops, 60, 39608677).
raw_performed(i_p47_a11, participant_dries_the_countertops, 61, 39615800).

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

