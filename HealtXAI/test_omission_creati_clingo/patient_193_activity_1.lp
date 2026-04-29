% =================================================================================================
% Paziente 193
% Attività: Sweep the kitchen and dust the living room.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, sweep_the_kitchen_and_dust_the_living_room).


performed(i1, participant_retrieves_broom_from_supply_closet).
performed(i1, participant_retrieves_duster_from_supply_closet).
performed(i1, participant_retrieves_dust_pan_and_brush_from_closet).
performed(i1, participant_sweeps_kitchen_floor).
performed(i1, participant_uses_dust_pan_and_brush).
performed(i1, participant_dusts_living_room).
performed(i1, participant_dusts_dining_room).
performed(i1, participant_returns_broom_to_supply_closet).
performed(i1, participants_returns_dust_pan_and_brush_to_supply_closet).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
