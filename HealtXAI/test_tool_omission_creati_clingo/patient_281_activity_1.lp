% ======================================================================
% Paziente 281
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

instance(i_p281_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p281_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p281_a1, participant_retrieves_duster_from_supply_closet, 2).
performed(i_p281_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3).
performed(i_p281_a1, participant_dusts_dining_room, 4).
performed(i_p281_a1, participant_dusts_dining_room, 5).
performed(i_p281_a1, participant_dusts_dining_room, 6).
performed(i_p281_a1, participant_dusts_dining_room, 7).
performed(i_p281_a1, participant_dusts_dining_room, 8).
performed(i_p281_a1, participant_dusts_dining_room, 9).
performed(i_p281_a1, participant_dusts_dining_room, 10).
performed(i_p281_a1, participant_dusts_dining_room, 11).
performed(i_p281_a1, participant_dusts_dining_room, 12).
performed(i_p281_a1, participant_dusts_dining_room, 13).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 14).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 15).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 16).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 17).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 18).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 19).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 20).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 21).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 22).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 23).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 24).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 25).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 26).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 27).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 28).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 29).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 30).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 31).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 32).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 33).
performed(i_p281_a1, participant_sweeps_kitchen_floor, 34).
performed(i_p281_a1, participant_uses_dust_pan_and_brush, 35).
performed(i_p281_a1, participant_dusts_living_room, 36).
performed(i_p281_a1, participant_dusts_living_room, 37).
performed(i_p281_a1, participant_dusts_living_room, 38).
performed(i_p281_a1, participant_dusts_living_room, 39).
performed(i_p281_a1, participant_dusts_living_room, 40).
performed(i_p281_a1, participant_dusts_living_room, 41).
performed(i_p281_a1, participant_dusts_living_room, 42).
performed(i_p281_a1, participant_dusts_living_room, 43).
performed(i_p281_a1, participant_dusts_living_room, 44).
performed(i_p281_a1, participant_dusts_living_room, 45).
performed(i_p281_a1, participant_dusts_living_room, 46).
performed(i_p281_a1, participant_dusts_living_room, 47).
performed(i_p281_a1, participant_dusts_living_room, 48).
performed(i_p281_a1, participant_dusts_living_room, 49).
performed(i_p281_a1, participant_dusts_living_room, 50).
performed(i_p281_a1, participant_dusts_dining_room, 51).
performed(i_p281_a1, participant_dusts_dining_room, 52).
performed(i_p281_a1, participant_dusts_dining_room, 53).
performed(i_p281_a1, participant_dusts_dining_room, 54).
performed(i_p281_a1, participant_dusts_dining_room, 55).
performed(i_p281_a1, participant_dusts_dining_room, 56).
performed(i_p281_a1, participant_dusts_dining_room, 57).
performed(i_p281_a1, participant_dusts_dining_room, 58).
performed(i_p281_a1, participant_dusts_dining_room, 59).
performed(i_p281_a1, participant_dusts_dining_room, 60).
performed(i_p281_a1, participant_dusts_dining_room, 61).
performed(i_p281_a1, participant_dusts_dining_room, 62).
performed(i_p281_a1, participant_dusts_dining_room, 63).
performed(i_p281_a1, participant_dusts_dining_room, 64).
performed(i_p281_a1, participant_returns_broom_to_supply_closet, 65).
performed(i_p281_a1, participant_returns_duster_to_supply_closet, 66).
performed(i_p281_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 67).

observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p281_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_living_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).
observed_object(i_p281_a1,participant_dusts_dining_room,duster).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

