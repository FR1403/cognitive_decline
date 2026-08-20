% ======================================================================
% Paziente 171
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

instance(i_p171_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p171_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p171_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2).
performed(i_p171_a1, participant_retrieves_duster_from_supply_closet, 3).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 4).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 6).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 8).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 9).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 10).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 11).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 12).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 13).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 14).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 15).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 16).
performed(i_p171_a1, participant_sweeps_kitchen_floor, 17).
performed(i_p171_a1, participant_uses_dust_pan_and_brush, 18).
performed(i_p171_a1, participant_uses_dust_pan_and_brush, 19).
performed(i_p171_a1, participant_uses_dust_pan_and_brush, 20).
performed(i_p171_a1, participant_uses_dust_pan_and_brush, 21).
performed(i_p171_a1, participant_uses_dust_pan_and_brush, 22).
performed(i_p171_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 23).
performed(i_p171_a1, participant_returns_broom_to_supply_closet, 24).
performed(i_p171_a1, participant_dusts_dining_room, 25).
performed(i_p171_a1, participant_dusts_dining_room, 26).
performed(i_p171_a1, participant_dusts_dining_room, 27).
performed(i_p171_a1, participant_dusts_dining_room, 28).
performed(i_p171_a1, participant_dusts_dining_room, 29).
performed(i_p171_a1, participant_dusts_dining_room, 30).
performed(i_p171_a1, participant_dusts_dining_room, 31).
performed(i_p171_a1, participant_dusts_dining_room, 32).
performed(i_p171_a1, participant_dusts_dining_room, 33).
performed(i_p171_a1, participant_dusts_dining_room, 34).
performed(i_p171_a1, participant_dusts_dining_room, 35).
performed(i_p171_a1, participant_dusts_dining_room, 36).
performed(i_p171_a1, participant_dusts_dining_room, 37).
performed(i_p171_a1, participant_dusts_dining_room, 38).
performed(i_p171_a1, participant_dusts_dining_room, 39).
performed(i_p171_a1, participant_dusts_dining_room, 40).
performed(i_p171_a1, participant_dusts_dining_room, 41).
performed(i_p171_a1, participant_dusts_dining_room, 42).
performed(i_p171_a1, participant_dusts_dining_room, 43).
performed(i_p171_a1, participant_dusts_dining_room, 44).
performed(i_p171_a1, participant_dusts_dining_room, 45).
performed(i_p171_a1, participant_dusts_living_room, 46).
performed(i_p171_a1, participant_dusts_dining_room, 47).
performed(i_p171_a1, participant_dusts_dining_room, 48).
performed(i_p171_a1, participant_dusts_living_room, 49).
performed(i_p171_a1, participant_dusts_dining_room, 50).
performed(i_p171_a1, participant_dusts_dining_room, 51).
performed(i_p171_a1, participant_dusts_dining_room, 52).
performed(i_p171_a1, participant_dusts_dining_room, 53).
performed(i_p171_a1, participant_dusts_dining_room, 54).
performed(i_p171_a1, participant_dusts_dining_room, 55).
performed(i_p171_a1, participant_dusts_dining_room, 56).
performed(i_p171_a1, participant_dusts_living_room, 57).
performed(i_p171_a1, participant_dusts_dining_room, 58).
performed(i_p171_a1, participant_dusts_dining_room, 59).
performed(i_p171_a1, participant_dusts_living_room, 60).
performed(i_p171_a1, participant_dusts_living_room, 61).
performed(i_p171_a1, participant_dusts_living_room, 62).
performed(i_p171_a1, participant_dusts_living_room, 63).
performed(i_p171_a1, participant_dusts_living_room, 64).
performed(i_p171_a1, participant_dusts_living_room, 65).
performed(i_p171_a1, participant_dusts_living_room, 66).
performed(i_p171_a1, participant_dusts_living_room, 67).
performed(i_p171_a1, participant_dusts_living_room, 68).
performed(i_p171_a1, participant_dusts_living_room, 69).
performed(i_p171_a1, participant_dusts_living_room, 70).
performed(i_p171_a1, participant_dusts_living_room, 71).
performed(i_p171_a1, participant_dusts_living_room, 72).
performed(i_p171_a1, participant_dusts_living_room, 73).
performed(i_p171_a1, participant_dusts_living_room, 74).
performed(i_p171_a1, participant_dusts_living_room, 75).
performed(i_p171_a1, participant_dusts_living_room, 76).
performed(i_p171_a1, participant_dusts_living_room, 77).
performed(i_p171_a1, participant_dusts_living_room, 78).
performed(i_p171_a1, participant_dusts_living_room, 79).
performed(i_p171_a1, participant_dusts_living_room, 80).
performed(i_p171_a1, participant_dusts_living_room, 81).
performed(i_p171_a1, participant_dusts_living_room, 82).
performed(i_p171_a1, participant_dusts_living_room, 83).
performed(i_p171_a1, participant_dusts_living_room, 84).
performed(i_p171_a1, participant_dusts_living_room, 85).
performed(i_p171_a1, participant_dusts_living_room, 86).
performed(i_p171_a1, participant_dusts_living_room, 87).
performed(i_p171_a1, participant_dusts_living_room, 88).
performed(i_p171_a1, participant_dusts_living_room, 89).
performed(i_p171_a1, participant_dusts_living_room, 90).
performed(i_p171_a1, participant_dusts_living_room, 91).
performed(i_p171_a1, participant_dusts_living_room, 92).
performed(i_p171_a1, participant_dusts_living_room, 93).
performed(i_p171_a1, participant_dusts_living_room, 94).
performed(i_p171_a1, participant_dusts_living_room, 95).
performed(i_p171_a1, participant_dusts_living_room, 96).
performed(i_p171_a1, participant_dusts_living_room, 97).
performed(i_p171_a1, participant_dusts_living_room, 98).
performed(i_p171_a1, participant_dusts_living_room, 99).
performed(i_p171_a1, participant_dusts_living_room, 100).
performed(i_p171_a1, participant_dusts_living_room, 101).
performed(i_p171_a1, participant_dusts_living_room, 102).
performed(i_p171_a1, participant_dusts_living_room, 103).
performed(i_p171_a1, participant_dusts_living_room, 104).
performed(i_p171_a1, participant_dusts_living_room, 105).
performed(i_p171_a1, participant_dusts_living_room, 106).
performed(i_p171_a1, participant_dusts_living_room, 107).
performed(i_p171_a1, participant_dusts_living_room, 108).
performed(i_p171_a1, participant_dusts_living_room, 109).
performed(i_p171_a1, participant_dusts_dining_room, 110).
performed(i_p171_a1, participant_dusts_dining_room, 111).
performed(i_p171_a1, participant_returns_duster_to_supply_closet, 112).

observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p171_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p171_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p171_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p171_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p171_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_living_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).
observed_object(i_p171_a1,participant_dusts_dining_room,duster).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

