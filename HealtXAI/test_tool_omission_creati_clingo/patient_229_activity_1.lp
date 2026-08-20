% ======================================================================
% Paziente 229
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

instance(i_p229_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p229_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p229_a1, participant_retrieves_duster_from_supply_closet, 2).
performed(i_p229_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 4).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 5).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 6).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 7).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 8).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 9).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 10).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 11).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 12).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 13).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 14).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 15).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 16).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 17).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 18).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 19).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 20).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 21).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 22).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 23).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 24).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 25).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 26).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 27).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 28).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 29).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 30).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 31).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 32).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 33).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 34).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 35).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 36).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 37).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 38).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 39).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 40).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 41).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 42).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 43).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 44).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 45).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 46).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 47).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 48).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 49).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 50).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 51).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 52).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 53).
performed(i_p229_a1, participant_sweeps_kitchen_floor, 54).
performed(i_p229_a1, participant_uses_dust_pan_and_brush, 55).
performed(i_p229_a1, participant_returns_broom_to_supply_closet, 56).
performed(i_p229_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 57).
performed(i_p229_a1, participant_dusts_dining_room, 58).
performed(i_p229_a1, participant_dusts_dining_room, 59).
performed(i_p229_a1, participant_dusts_dining_room, 60).
performed(i_p229_a1, participant_dusts_dining_room, 61).
performed(i_p229_a1, participant_dusts_dining_room, 62).
performed(i_p229_a1, participant_dusts_dining_room, 63).
performed(i_p229_a1, participant_dusts_dining_room, 64).
performed(i_p229_a1, participant_dusts_dining_room, 65).
performed(i_p229_a1, participant_dusts_dining_room, 66).
performed(i_p229_a1, participant_dusts_living_room, 67).
performed(i_p229_a1, participant_dusts_living_room, 68).
performed(i_p229_a1, participant_dusts_living_room, 69).
performed(i_p229_a1, participant_dusts_living_room, 70).
performed(i_p229_a1, participant_dusts_living_room, 71).
performed(i_p229_a1, participant_dusts_living_room, 72).
performed(i_p229_a1, participant_dusts_living_room, 73).
performed(i_p229_a1, participant_dusts_living_room, 74).
performed(i_p229_a1, participant_dusts_living_room, 75).
performed(i_p229_a1, participant_dusts_living_room, 76).
performed(i_p229_a1, participant_dusts_living_room, 77).
performed(i_p229_a1, participant_dusts_living_room, 78).
performed(i_p229_a1, participant_dusts_living_room, 79).
performed(i_p229_a1, participant_dusts_living_room, 80).
performed(i_p229_a1, participant_dusts_living_room, 81).
performed(i_p229_a1, participant_dusts_living_room, 82).
performed(i_p229_a1, participant_dusts_living_room, 83).
performed(i_p229_a1, participant_dusts_living_room, 84).
performed(i_p229_a1, participant_dusts_living_room, 85).
performed(i_p229_a1, participant_dusts_living_room, 86).
performed(i_p229_a1, participant_dusts_living_room, 87).
performed(i_p229_a1, participant_dusts_living_room, 88).
performed(i_p229_a1, participant_dusts_living_room, 89).

observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p229_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_dining_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).
observed_object(i_p229_a1,participant_dusts_living_room,duster).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

