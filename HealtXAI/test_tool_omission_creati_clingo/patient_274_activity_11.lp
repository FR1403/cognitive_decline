% ======================================================================
% Paziente 274
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

expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, dish_detergent).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, sponge).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p274_a11, wash_and_dry_all_kitchen_countertop_surfaces).

performed(i_p274_a11, participant_wets_the_sponge, 1).
performed(i_p274_a11, participant_washes_the_countertops, 2).
performed(i_p274_a11, participant_washes_the_countertops, 3).
performed(i_p274_a11, participant_washes_the_countertops, 4).
performed(i_p274_a11, participant_rinses_out_the_sponge, 5).
performed(i_p274_a11, participant_rinses_out_the_sponge, 6).
performed(i_p274_a11, participant_rinses_out_the_sponge, 7).
performed(i_p274_a11, participant_rinses_out_the_sponge, 8).
performed(i_p274_a11, participant_rinses_out_the_sponge, 9).
performed(i_p274_a11, participant_rinses_out_the_sponge, 10).
performed(i_p274_a11, participant_rinses_out_the_sponge, 11).
performed(i_p274_a11, participant_rinses_out_the_sponge, 12).
performed(i_p274_a11, participant_rinses_out_the_sponge, 13).
performed(i_p274_a11, participant_rinses_out_the_sponge, 14).
performed(i_p274_a11, participant_rinses_out_the_sponge, 15).
performed(i_p274_a11, participant_rinses_out_the_sponge, 16).
performed(i_p274_a11, participant_rinses_out_the_sponge, 17).
performed(i_p274_a11, participant_dries_the_countertops, 18).
performed(i_p274_a11, participant_dries_the_countertops, 19).
performed(i_p274_a11, participant_dries_the_countertops, 20).
performed(i_p274_a11, participant_dries_the_countertops, 21).
performed(i_p274_a11, participant_dries_the_countertops, 22).
performed(i_p274_a11, participant_dries_the_countertops, 23).
performed(i_p274_a11, participant_dries_the_countertops, 24).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

