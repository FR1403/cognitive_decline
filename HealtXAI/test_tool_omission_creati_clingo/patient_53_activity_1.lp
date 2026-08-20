% ======================================================================
% Paziente 53
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

instance(i_p53_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p53_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p53_a1, participant_retrieves_duster_from_supply_closet, 2).
performed(i_p53_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 4).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 6).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 8).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 9).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 10).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 11).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 12).
performed(i_p53_a1, participant_dusts_dining_room, 13).
performed(i_p53_a1, participant_dusts_dining_room, 14).
performed(i_p53_a1, participant_dusts_dining_room, 15).
performed(i_p53_a1, participant_dusts_dining_room, 16).
performed(i_p53_a1, participant_dusts_dining_room, 17).
performed(i_p53_a1, participant_dusts_dining_room, 18).
performed(i_p53_a1, participant_dusts_dining_room, 19).
performed(i_p53_a1, participant_dusts_dining_room, 20).
performed(i_p53_a1, participant_dusts_dining_room, 21).
performed(i_p53_a1, participant_dusts_dining_room, 22).
performed(i_p53_a1, participant_dusts_dining_room, 23).
performed(i_p53_a1, participant_dusts_living_room, 24).
performed(i_p53_a1, participant_dusts_living_room, 25).
performed(i_p53_a1, participant_dusts_living_room, 26).
performed(i_p53_a1, participant_dusts_living_room, 27).
performed(i_p53_a1, participant_dusts_living_room, 28).
performed(i_p53_a1, participant_dusts_living_room, 29).
performed(i_p53_a1, participant_dusts_living_room, 30).
performed(i_p53_a1, participant_dusts_living_room, 31).
performed(i_p53_a1, participant_dusts_living_room, 32).
performed(i_p53_a1, participant_dusts_living_room, 33).
performed(i_p53_a1, participant_dusts_living_room, 34).
performed(i_p53_a1, participant_dusts_living_room, 35).
performed(i_p53_a1, participant_dusts_living_room, 36).
performed(i_p53_a1, participant_dusts_living_room, 37).
performed(i_p53_a1, participant_dusts_living_room, 38).
performed(i_p53_a1, participant_dusts_living_room, 39).
performed(i_p53_a1, participant_dusts_living_room, 40).
performed(i_p53_a1, participant_dusts_living_room, 41).
performed(i_p53_a1, participant_dusts_living_room, 42).
performed(i_p53_a1, participant_dusts_living_room, 43).
performed(i_p53_a1, participant_dusts_living_room, 44).
performed(i_p53_a1, participant_dusts_living_room, 45).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 46).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 47).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 48).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 49).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 50).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 51).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 52).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 53).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 54).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 55).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 56).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 57).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 58).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 59).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 60).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 61).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 62).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 63).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 64).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 65).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 66).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 67).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 68).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 69).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 70).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 71).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 72).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 73).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 74).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 75).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 76).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 77).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 78).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 79).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 80).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 81).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 82).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 83).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 84).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 85).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 86).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 87).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 88).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 89).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 90).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 91).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 92).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 93).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 94).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 95).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 96).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 97).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 98).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 99).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 100).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 101).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 102).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 103).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 104).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 105).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 106).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 107).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 108).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 109).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 110).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 111).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 112).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 113).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 114).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 115).
performed(i_p53_a1, participant_sweeps_kitchen_floor, 116).
performed(i_p53_a1, participant_uses_dust_pan_and_brush, 117).
performed(i_p53_a1, participant_returns_broom_to_supply_closet, 118).
performed(i_p53_a1, participant_returns_duster_to_supply_closet, 119).
performed(i_p53_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 120).

observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_dining_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_dusts_living_room,duster).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).
observed_object(i_p53_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p53_a1,participant_uses_dust_pan_and_brush,dust_pan_and_brush).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

