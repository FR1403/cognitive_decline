% ======================================================================
% Paziente 200
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

expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_retrieves_watering_can_from_supply_closet, 1).
expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, 2).
expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, 3).
expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, 4).
expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, 5).
expected_pos(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, 6).

depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, participant_waters_plants_coffee_table).
depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_empties_extra_water_into_sink, participant_waters_plants_windowsill).
depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_fills_watering_can, participant_retrieves_watering_can_from_supply_closet).
depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_returns_watering_can_to_supply_closet, participant_empties_extra_water_into_sink).
depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_coffee_table, participant_fills_watering_can).
depends_on(obtain_a_watering_can_and_water_all_plants_in_the_living_space, participant_waters_plants_windowsill, participant_fills_watering_can).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p200_a5, obtain_a_watering_can_and_water_all_plants_in_the_living_space).
performed(i_p200_a5, participant_retrieves_watering_can_from_supply_closet, 1).
performed(i_p200_a5, participant_fills_watering_can, 2).
performed(i_p200_a5, participant_waters_plants_windowsill, 3).
performed(i_p200_a5, participant_waters_plants_coffee_table, 4).
performed(i_p200_a5, participant_empties_extra_water_into_sink, 5).
performed(i_p200_a5, participant_returns_watering_can_to_supply_closet, 6).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

anticipation_omission(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

#show reversal/3.
#show anticipation_omission/3.

