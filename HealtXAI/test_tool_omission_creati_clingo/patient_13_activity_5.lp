% ======================================================================
% Paziente 13
% Attivita: Obtain a watering can and water all plants in the living space.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(obtain_a_watering_can_and_water_all_plants_in_the_living_space).

action(participant_retrieves_watering_can_from_supply_closet).
action(participant_fills_watering_can).
action(participant_waters_plants_windowsill).
action(participant_waters_plants_coffee_table).
action(participant_empties_extra_water_into_sink).
action(participant_returns_watering_can_to_supply_closet).

part_of(participant_retrieves_watering_can_from_supply_closet, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
part_of(participant_fills_watering_can, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
part_of(participant_waters_plants_windowsill, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
part_of(participant_waters_plants_coffee_table, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
part_of(participant_empties_extra_water_into_sink, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
part_of(participant_returns_watering_can_to_supply_closet, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

expected_object(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, watering_can).
expected_object(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, watering_can).
expected_object(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, watering_can).
expected_object(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, watering_can).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p13_a5, obtain_a_watering_can_and_water_all_plants_in_the_living_space).

performed(i_p13_a5, participant_retrieves_watering_can_from_supply_closet, 1).
performed(i_p13_a5, participant_fills_watering_can, 2).
performed(i_p13_a5, participant_waters_plants_windowsill, 3).
performed(i_p13_a5, participant_waters_plants_coffee_table, 4).
performed(i_p13_a5, participant_waters_plants_coffee_table, 5).
performed(i_p13_a5, participant_empties_extra_water_into_sink, 6).
performed(i_p13_a5, participant_returns_watering_can_to_supply_closet, 7).
performed(i_p13_a5, participant_waters_plants_coffee_table, 8).

observed_object(i_p13_a5,participant_fills_watering_can,watering_can).
observed_object(i_p13_a5,participant_waters_plants_windowsill,watering_can).
observed_object(i_p13_a5,participant_waters_plants_coffee_table,watering_can).
observed_object(i_p13_a5,participant_waters_plants_coffee_table,watering_can).
observed_object(i_p13_a5,participant_empties_extra_water_into_sink,watering_can).
observed_object(i_p13_a5,participant_waters_plants_coffee_table,watering_can).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

