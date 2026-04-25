% =================================================================================================

                                  % Paziente 295
% Attività: Obtain a watering can and water all plants in the living space.

                                  % =================================================================================================

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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, obtain_a_watering_can_and_water_all_plants_in_the_living_space).


performed(i1, participant_retrieves_watering_can_from_supply_closet).
performed(i1, participant_fills_watering_can).
performed(i1, participant_waters_plants_windowsill).
performed(i1, participant_waters_plants_coffee_table).
performed(i1, participant_empties_extra_water_into_sink).
performed(i1, participant_returns_watering_can_to_supply_closet).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
