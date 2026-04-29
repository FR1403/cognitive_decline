% ======================================================================
% Paziente 154
% Attività: Wash and dry all kitchen countertop surfaces.
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

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 18000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 18000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 240000).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 18000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a11, participant_wets_the_sponge, 1, 38156942).
raw_performed(i_p154_a11, participant_wets_the_sponge, 2, 38157017).
raw_performed(i_p154_a11, participant_washes_the_countertops, 3, 38158056).
raw_performed(i_p154_a11, participant_washes_the_countertops, 4, 38163585).
raw_performed(i_p154_a11, participant_washes_the_countertops, 5, 38180240).
raw_performed(i_p154_a11, participant_washes_the_countertops, 6, 38187065).
raw_performed(i_p154_a11, participant_washes_the_countertops, 7, 38193309).
raw_performed(i_p154_a11, participant_washes_the_countertops, 8, 38202862).
raw_performed(i_p154_a11, participant_washes_the_countertops, 9, 38205094).
raw_performed(i_p154_a11, participant_washes_the_countertops, 10, 38223074).
raw_performed(i_p154_a11, participant_washes_the_countertops, 11, 38225005).
raw_performed(i_p154_a11, participant_washes_the_countertops, 12, 38229735).
raw_performed(i_p154_a11, participant_washes_the_countertops, 13, 38232607).
raw_performed(i_p154_a11, participant_washes_the_countertops, 14, 38233147).
raw_performed(i_p154_a11, participant_washes_the_countertops, 15, 38238068).
raw_performed(i_p154_a11, participant_washes_the_countertops, 16, 38241952).
raw_performed(i_p154_a11, participant_washes_the_countertops, 17, 38245001).
raw_performed(i_p154_a11, participant_washes_the_countertops, 18, 38259097).
raw_performed(i_p154_a11, participant_washes_the_countertops, 19, 38266030).
raw_performed(i_p154_a11, participant_washes_the_countertops, 20, 38271041).
raw_performed(i_p154_a11, participant_washes_the_countertops, 21, 38281072).
raw_performed(i_p154_a11, participant_washes_the_countertops, 22, 38289743).
raw_performed(i_p154_a11, participant_washes_the_countertops, 23, 38290003).
raw_performed(i_p154_a11, participant_washes_the_countertops, 24, 38310566).
raw_performed(i_p154_a11, participant_washes_the_countertops, 25, 38319089).
raw_performed(i_p154_a11, participant_washes_the_countertops, 26, 38320017).
raw_performed(i_p154_a11, participant_washes_the_countertops, 27, 38336015).
raw_performed(i_p154_a11, participant_washes_the_countertops, 28, 38340155).
raw_performed(i_p154_a11, participant_washes_the_countertops, 29, 38345231).
raw_performed(i_p154_a11, participant_washes_the_countertops, 30, 38360705).
raw_performed(i_p154_a11, participant_washes_the_countertops, 31, 38378411).
raw_performed(i_p154_a11, participant_wets_the_sponge, 32, 38386171).
raw_performed(i_p154_a11, participant_wets_the_sponge, 33, 38389003).
raw_performed(i_p154_a11, participant_wets_the_sponge, 34, 38391098).
raw_performed(i_p154_a11, participant_wets_the_sponge, 35, 38394098).
raw_performed(i_p154_a11, participant_wets_the_sponge, 36, 38395021).
raw_performed(i_p154_a11, participant_wets_the_sponge, 37, 38398013).
raw_performed(i_p154_a11, participant_wets_the_sponge, 38, 38403923).
raw_performed(i_p154_a11, participant_wets_the_sponge, 39, 38404014).
raw_performed(i_p154_a11, participant_wets_the_sponge, 40, 38406088).
raw_performed(i_p154_a11, participant_wets_the_sponge, 41, 38407022).
raw_performed(i_p154_a11, participant_wets_the_sponge, 42, 38409885).
raw_performed(i_p154_a11, participant_washes_the_countertops, 43, 38410357).
raw_performed(i_p154_a11, participant_washes_the_countertops, 44, 38418532).
raw_performed(i_p154_a11, participant_washes_the_countertops, 45, 38423073).
raw_performed(i_p154_a11, participant_washes_the_countertops, 46, 38425069).
raw_performed(i_p154_a11, participant_washes_the_countertops, 47, 38431076).
raw_performed(i_p154_a11, participant_washes_the_countertops, 48, 38434494).

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

