% ======================================================================
% Paziente 53
% Attivita: Wash and dry all kitchen countertop surfaces.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_and_dry_all_kitchen_countertop_surfaces).

action(participant_locates_the_sponge).
action(participant_locates_the_dish_detergent).
action(participant_wets_the_sponge).
action(participant_lathers_the_sponge_with_the_detergent).
action(participant_washes_the_countertops).
action(participant_rinses_out_the_sponge).
action(participant_dries_the_countertops).
action(participant_returns_the_sponge_to_the_sponge_drying_dish).

action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 12).

expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 1).

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 17266).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 91).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 276069).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 97785).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 155619).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 123649).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 101880).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 4392).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p53_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p53_a11, participant_wets_the_sponge, 1, 57565756).
raw_performed(i_p53_a11, participant_wets_the_sponge, 2, 57568082).
raw_performed(i_p53_a11, participant_wets_the_sponge, 3, 57571057).
raw_performed(i_p53_a11, participant_wets_the_sponge, 4, 57579031).
raw_performed(i_p53_a11, participant_wets_the_sponge, 5, 57580063).
raw_performed(i_p53_a11, participant_washes_the_countertops, 6, 57586101).
raw_performed(i_p53_a11, participant_washes_the_countertops, 7, 57600972).
raw_performed(i_p53_a11, participant_washes_the_countertops, 8, 57603682).
raw_performed(i_p53_a11, participant_washes_the_countertops, 9, 57604011).
raw_performed(i_p53_a11, participant_washes_the_countertops, 10, 57607006).
raw_performed(i_p53_a11, participant_washes_the_countertops, 11, 57609085).
raw_performed(i_p53_a11, participant_washes_the_countertops, 12, 57610301).
raw_performed(i_p53_a11, participant_wets_the_sponge, 13, 57613634).
raw_performed(i_p53_a11, participant_wets_the_sponge, 14, 57616066).
raw_performed(i_p53_a11, participant_wets_the_sponge, 15, 57631750).
raw_performed(i_p53_a11, participant_wets_the_sponge, 16, 57632000).
raw_performed(i_p53_a11, participant_wets_the_sponge, 17, 57634696).
raw_performed(i_p53_a11, participant_washes_the_countertops, 18, 57641788).
raw_performed(i_p53_a11, participant_washes_the_countertops, 19, 57657136).
raw_performed(i_p53_a11, participant_washes_the_countertops, 20, 57665401).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 21, 57667630).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 22, 57670987).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 23, 57673643).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 24, 57676680).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 25, 57679696).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 26, 57682037).
raw_performed(i_p53_a11, participant_rinses_out_the_sponge, 27, 57682094).

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

