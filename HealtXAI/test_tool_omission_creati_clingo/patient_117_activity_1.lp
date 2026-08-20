% ======================================================================
% Paziente 117
% Attivita: Sweep the kitchen and dust the living room.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(sweep_the_kitchen_and_dust_the_living_room).

action(participant_retrieves_broom_from_supply_closet).
action(participant_retrieves_duster_from_supply_closet).
action(participant_retrieves_dust_pan_and_brush_from_closet).
action(participant_sweeps_kitchen_floor).
action(participant_uses_dust_pan_and_brush).
action(participant_dusts_living_room).
action(participant_dusts_dining_room).
action(participant_returns_broom_to_supply_closet).
action(participant_returns_duster_to_supply_closet).
action(participants_returns_dust_pan_and_brush_to_supply_closet).

part_of(participant_retrieves_broom_from_supply_closet, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_retrieves_duster_from_supply_closet, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_retrieves_dust_pan_and_brush_from_closet, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_sweeps_kitchen_floor, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_uses_dust_pan_and_brush, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_dusts_living_room, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_dusts_dining_room, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_returns_broom_to_supply_closet, sweep_the_kitchen_and_dust_the_living_room).
part_of(participant_returns_duster_to_supply_closet, sweep_the_kitchen_and_dust_the_living_room).
part_of(participants_returns_dust_pan_and_brush_to_supply_closet, sweep_the_kitchen_and_dust_the_living_room).

expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, broom).
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, dust_pan_and_brush).
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, duster).
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, duster).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p117_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p117_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p117_a1, participant_retrieves_duster_from_supply_closet, 2).
performed(i_p117_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 4).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 6).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 8).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 9).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 10).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 11).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 12).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 13).
performed(i_p117_a1, participant_sweeps_kitchen_floor, 14).
performed(i_p117_a1, participant_uses_dust_pan_and_brush, 15).
performed(i_p117_a1, participant_uses_dust_pan_and_brush, 16).
performed(i_p117_a1, participant_returns_broom_to_supply_closet, 17).
performed(i_p117_a1, participant_returns_duster_to_supply_closet, 18).
performed(i_p117_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 19).

observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p117_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p117_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

