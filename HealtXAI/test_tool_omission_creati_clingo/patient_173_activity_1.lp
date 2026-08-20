% ======================================================================
% Paziente 173
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

instance(i_p173_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p173_a1, participant_retrieves_dust_pan_and_brush_from_closet, 1).
performed(i_p173_a1, participant_retrieves_broom_from_supply_closet, 2).
performed(i_p173_a1, participant_sweeps_kitchen_floor, 3).
performed(i_p173_a1, participant_uses_dust_pan_and_brush, 4).
performed(i_p173_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p173_a1, participant_uses_dust_pan_and_brush, 6).
performed(i_p173_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p173_a1, participant_uses_dust_pan_and_brush, 8).
performed(i_p173_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 9).
performed(i_p173_a1, participant_returns_broom_to_supply_closet, 10).
performed(i_p173_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 11).
performed(i_p173_a1, participant_retrieves_duster_from_supply_closet, 12).
performed(i_p173_a1, participant_dusts_dining_room, 13).
performed(i_p173_a1, participant_dusts_dining_room, 14).
performed(i_p173_a1, participant_dusts_dining_room, 15).
performed(i_p173_a1, participant_dusts_dining_room, 16).
performed(i_p173_a1, participant_dusts_dining_room, 17).
performed(i_p173_a1, participant_dusts_dining_room, 18).
performed(i_p173_a1, participant_dusts_dining_room, 19).
performed(i_p173_a1, participant_dusts_dining_room, 20).
performed(i_p173_a1, participant_dusts_living_room, 21).
performed(i_p173_a1, participant_dusts_living_room, 22).
performed(i_p173_a1, participant_dusts_living_room, 23).
performed(i_p173_a1, participant_dusts_living_room, 24).
performed(i_p173_a1, participant_dusts_living_room, 25).
performed(i_p173_a1, participant_dusts_living_room, 26).
performed(i_p173_a1, participant_dusts_living_room, 27).
performed(i_p173_a1, participant_dusts_living_room, 28).
performed(i_p173_a1, participant_dusts_living_room, 29).
performed(i_p173_a1, participant_dusts_living_room, 30).
performed(i_p173_a1, participant_dusts_living_room, 31).
performed(i_p173_a1, participant_dusts_living_room, 32).
performed(i_p173_a1, participant_dusts_living_room, 33).
performed(i_p173_a1, participant_dusts_living_room, 34).
performed(i_p173_a1, participant_dusts_living_room, 35).
performed(i_p173_a1, participant_dusts_living_room, 36).
performed(i_p173_a1, participant_dusts_living_room, 37).
performed(i_p173_a1, participant_dusts_living_room, 38).
performed(i_p173_a1, participant_dusts_living_room, 39).
performed(i_p173_a1, participant_dusts_living_room, 40).
performed(i_p173_a1, participant_dusts_dining_room, 41).
performed(i_p173_a1, participant_dusts_dining_room, 42).
performed(i_p173_a1, participant_dusts_dining_room, 43).
performed(i_p173_a1, participant_dusts_dining_room, 44).
performed(i_p173_a1, participant_dusts_dining_room, 45).
performed(i_p173_a1, participant_dusts_dining_room, 46).
performed(i_p173_a1, participant_dusts_dining_room, 47).
performed(i_p173_a1, participant_returns_duster_to_supply_closet, 48).
performed(i_p173_a1, participant_returns_duster_to_supply_closet, 49).
performed(i_p173_a1, participant_returns_duster_to_supply_closet, 50).

observed_object(i_p173_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p173_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p173_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p173_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p173_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p173_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_living_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).
observed_object(i_p173_a1,participant_dusts_dining_room,duster).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

