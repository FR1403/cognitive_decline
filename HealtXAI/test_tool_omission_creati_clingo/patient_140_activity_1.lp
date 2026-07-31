% ======================================================================
% Paziente 140
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
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, dust_pan).
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, duster).
expected_object(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, dusting_the_dining_room_typically_involves_using_a_duster_or_feather_duster_so_the_object_used).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p140_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p140_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 2).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 3).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 4).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 6).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 8).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 9).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 10).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 11).
performed(i_p140_a1, participant_sweeps_kitchen_floor, 12).
performed(i_p140_a1, participant_retrieves_dust_pan_and_brush_from_closet, 13).
performed(i_p140_a1, participant_uses_dust_pan_and_brush, 14).
performed(i_p140_a1, participant_uses_dust_pan_and_brush, 15).
performed(i_p140_a1, participant_returns_broom_to_supply_closet, 16).
performed(i_p140_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17).
performed(i_p140_a1, participant_dusts_dining_room, 18).
performed(i_p140_a1, participant_dusts_dining_room, 19).
performed(i_p140_a1, participant_dusts_dining_room, 20).
performed(i_p140_a1, participant_dusts_dining_room, 21).
performed(i_p140_a1, participant_dusts_dining_room, 22).
performed(i_p140_a1, participant_dusts_dining_room, 23).
performed(i_p140_a1, participant_dusts_dining_room, 24).
performed(i_p140_a1, participant_dusts_dining_room, 25).
performed(i_p140_a1, participant_dusts_dining_room, 26).
performed(i_p140_a1, participant_dusts_dining_room, 27).
performed(i_p140_a1, participant_dusts_dining_room, 28).
performed(i_p140_a1, participant_dusts_dining_room, 29).
performed(i_p140_a1, participant_dusts_living_room, 30).
performed(i_p140_a1, participant_dusts_living_room, 31).
performed(i_p140_a1, participant_dusts_living_room, 32).
performed(i_p140_a1, participant_dusts_living_room, 33).
performed(i_p140_a1, participant_dusts_living_room, 34).
performed(i_p140_a1, participant_dusts_living_room, 35).
performed(i_p140_a1, participant_dusts_living_room, 36).
performed(i_p140_a1, participant_dusts_living_room, 37).
performed(i_p140_a1, participant_dusts_living_room, 38).
performed(i_p140_a1, participant_dusts_living_room, 39).
performed(i_p140_a1, participant_dusts_dining_room, 40).
performed(i_p140_a1, participant_dusts_dining_room, 41).
performed(i_p140_a1, participant_dusts_dining_room, 42).
performed(i_p140_a1, participant_dusts_dining_room, 43).
performed(i_p140_a1, participant_dusts_dining_room, 44).
performed(i_p140_a1, participant_dusts_dining_room, 45).
performed(i_p140_a1, participant_dusts_dining_room, 46).
performed(i_p140_a1, participant_dusts_living_room, 47).
performed(i_p140_a1, participant_dusts_living_room, 48).
performed(i_p140_a1, participant_dusts_living_room, 49).
performed(i_p140_a1, participant_dusts_living_room, 50).
performed(i_p140_a1, participant_dusts_living_room, 51).
performed(i_p140_a1, participant_dusts_living_room, 52).
performed(i_p140_a1, participant_dusts_living_room, 53).
performed(i_p140_a1, participant_dusts_living_room, 54).
performed(i_p140_a1, participant_dusts_living_room, 55).
performed(i_p140_a1, participant_dusts_living_room, 56).
performed(i_p140_a1, participant_dusts_living_room, 57).
performed(i_p140_a1, participant_dusts_living_room, 58).
performed(i_p140_a1, participant_dusts_living_room, 59).
performed(i_p140_a1, participant_dusts_living_room, 60).
performed(i_p140_a1, participant_dusts_living_room, 61).
performed(i_p140_a1, participant_dusts_living_room, 62).
performed(i_p140_a1, participant_dusts_living_room, 63).
performed(i_p140_a1, participant_dusts_living_room, 64).
performed(i_p140_a1, participant_dusts_living_room, 65).
performed(i_p140_a1, participant_dusts_living_room, 66).
performed(i_p140_a1, participant_dusts_dining_room, 67).
performed(i_p140_a1, participant_dusts_dining_room, 68).
performed(i_p140_a1, participant_dusts_dining_room, 69).
performed(i_p140_a1, participant_dusts_dining_room, 70).
performed(i_p140_a1, participant_dusts_dining_room, 71).
performed(i_p140_a1, participant_dusts_dining_room, 72).
performed(i_p140_a1, participant_dusts_dining_room, 73).
performed(i_p140_a1, participant_dusts_dining_room, 74).
performed(i_p140_a1, participant_dusts_dining_room, 75).
performed(i_p140_a1, participant_dusts_dining_room, 76).
performed(i_p140_a1, participant_dusts_dining_room, 77).
performed(i_p140_a1, participant_dusts_dining_room, 78).
performed(i_p140_a1, participant_dusts_dining_room, 79).
performed(i_p140_a1, participant_dusts_dining_room, 80).
performed(i_p140_a1, participant_dusts_dining_room, 81).
performed(i_p140_a1, participant_dusts_dining_room, 82).
performed(i_p140_a1, participant_returns_duster_to_supply_closet, 83).

observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p140_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p140_a1,participant_uses_dust_pan_and_brush,dust_pan).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

