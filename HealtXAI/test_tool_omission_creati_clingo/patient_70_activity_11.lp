% ======================================================================
% Paziente 70
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

instance(i_p70_a11, wash_and_dry_all_kitchen_countertop_surfaces).

performed(i_p70_a11, participant_wets_the_sponge, 1).
performed(i_p70_a11, participant_wets_the_sponge, 2).
performed(i_p70_a11, participant_wets_the_sponge, 3).
performed(i_p70_a11, participant_washes_the_countertops, 4).
performed(i_p70_a11, participant_washes_the_countertops, 5).
performed(i_p70_a11, participant_washes_the_countertops, 6).
performed(i_p70_a11, participant_washes_the_countertops, 7).
performed(i_p70_a11, participant_washes_the_countertops, 8).
performed(i_p70_a11, participant_washes_the_countertops, 9).
performed(i_p70_a11, participant_washes_the_countertops, 10).
performed(i_p70_a11, participant_washes_the_countertops, 11).
performed(i_p70_a11, participant_washes_the_countertops, 12).
performed(i_p70_a11, participant_rinses_out_the_sponge, 13).
performed(i_p70_a11, participant_rinses_out_the_sponge, 14).
performed(i_p70_a11, participant_rinses_out_the_sponge, 15).
performed(i_p70_a11, participant_rinses_out_the_sponge, 16).
performed(i_p70_a11, participant_rinses_out_the_sponge, 17).
performed(i_p70_a11, participant_rinses_out_the_sponge, 18).
performed(i_p70_a11, participant_rinses_out_the_sponge, 19).
performed(i_p70_a11, participant_rinses_out_the_sponge, 20).
performed(i_p70_a11, participant_rinses_out_the_sponge, 21).
performed(i_p70_a11, participant_rinses_out_the_sponge, 22).
performed(i_p70_a11, participant_washes_the_countertops, 23).
performed(i_p70_a11, participant_washes_the_countertops, 24).
performed(i_p70_a11, participant_washes_the_countertops, 25).
performed(i_p70_a11, participant_washes_the_countertops, 26).
performed(i_p70_a11, participant_rinses_out_the_sponge, 27).
performed(i_p70_a11, participant_rinses_out_the_sponge, 28).
performed(i_p70_a11, participant_rinses_out_the_sponge, 29).
performed(i_p70_a11, participant_washes_the_countertops, 30).
performed(i_p70_a11, participant_washes_the_countertops, 31).
performed(i_p70_a11, participant_washes_the_countertops, 32).
performed(i_p70_a11, participant_washes_the_countertops, 33).
performed(i_p70_a11, participant_rinses_out_the_sponge, 34).
performed(i_p70_a11, participant_rinses_out_the_sponge, 35).
performed(i_p70_a11, participant_rinses_out_the_sponge, 36).
performed(i_p70_a11, participant_rinses_out_the_sponge, 37).
performed(i_p70_a11, participant_rinses_out_the_sponge, 38).
performed(i_p70_a11, participant_rinses_out_the_sponge, 39).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

