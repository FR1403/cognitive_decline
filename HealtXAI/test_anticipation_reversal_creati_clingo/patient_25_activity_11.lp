% ======================================================================
% Paziente 25
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

part_of(participant_locates_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_locates_the_dish_detergent, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_wets_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_lathers_the_sponge_with_the_detergent, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_washes_the_countertops, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_rinses_out_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_dries_the_countertops, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_returns_the_sponge_to_the_sponge_drying_dish, wash_and_dry_all_kitchen_countertop_surfaces).

expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 1).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 2).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 3).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 4).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 5).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 6).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 7).
expected_pos(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 8).

depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, participant_rinses_out_the_sponge).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, participant_locates_the_dish_detergent).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, participant_wets_the_sponge).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, participant_dries_the_countertops).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, participant_washes_the_countertops).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, participant_lathers_the_sponge_with_the_detergent).
depends_on(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, participant_locates_the_sponge).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p25_a11, wash_and_dry_all_kitchen_countertop_surfaces).
performed(i_p25_a11, participant_wets_the_sponge, 1).
performed(i_p25_a11, participant_washes_the_countertops, 2).
performed(i_p25_a11, participant_rinses_out_the_sponge, 3).
performed(i_p25_a11, participant_dries_the_countertops, 4).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

