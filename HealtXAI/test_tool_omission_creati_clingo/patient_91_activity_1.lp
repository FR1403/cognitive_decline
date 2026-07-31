% ======================================================================
% Paziente 91
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

instance(i_p91_a1, sweep_the_kitchen_and_dust_the_living_room).

performed(i_p91_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p91_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 3).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 4).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 5).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 6).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 7).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 8).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 9).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 10).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 11).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 12).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 13).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 14).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 15).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 16).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 17).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 18).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 19).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 20).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 21).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 22).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 23).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 24).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 25).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 26).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 27).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 28).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 29).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 30).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 31).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 32).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 33).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 34).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 35).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 36).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 37).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 38).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 39).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 40).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 41).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 42).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 43).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 44).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 45).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 46).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 47).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 48).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 49).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 50).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 51).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 52).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 53).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 54).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 55).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 56).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 57).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 58).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 59).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 60).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 61).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 62).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 63).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 64).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 65).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 66).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 67).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 68).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 69).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 70).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 71).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 72).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 73).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 74).
performed(i_p91_a1, participant_sweeps_kitchen_floor, 75).
performed(i_p91_a1, participant_uses_dust_pan_and_brush, 76).
performed(i_p91_a1, participant_returns_broom_to_supply_closet, 77).
performed(i_p91_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 78).
performed(i_p91_a1, participant_dusts_dining_room, 79).
performed(i_p91_a1, participant_dusts_dining_room, 80).
performed(i_p91_a1, participant_dusts_dining_room, 81).
performed(i_p91_a1, participant_dusts_dining_room, 82).
performed(i_p91_a1, participant_dusts_dining_room, 83).
performed(i_p91_a1, participant_dusts_dining_room, 84).
performed(i_p91_a1, participant_dusts_dining_room, 85).
performed(i_p91_a1, participant_dusts_living_room, 86).
performed(i_p91_a1, participant_dusts_dining_room, 87).
performed(i_p91_a1, participant_dusts_living_room, 88).
performed(i_p91_a1, participant_dusts_living_room, 89).
performed(i_p91_a1, participant_dusts_living_room, 90).
performed(i_p91_a1, participant_dusts_living_room, 91).
performed(i_p91_a1, participant_dusts_living_room, 92).
performed(i_p91_a1, participant_dusts_living_room, 93).
performed(i_p91_a1, participant_dusts_living_room, 94).
performed(i_p91_a1, participant_dusts_living_room, 95).
performed(i_p91_a1, participant_dusts_living_room, 96).
performed(i_p91_a1, participant_dusts_living_room, 97).
performed(i_p91_a1, participant_dusts_living_room, 98).
performed(i_p91_a1, participant_dusts_living_room, 99).
performed(i_p91_a1, participant_dusts_living_room, 100).
performed(i_p91_a1, participant_dusts_living_room, 101).
performed(i_p91_a1, participant_dusts_living_room, 102).
performed(i_p91_a1, participant_dusts_living_room, 103).
performed(i_p91_a1, participant_dusts_living_room, 104).
performed(i_p91_a1, participant_returns_duster_to_supply_closet, 105).

observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).
observed_object(i_p91_a1,participant_sweeps_kitchen_floor,broom).
observed_object(i_p91_a1,participant_uses_dust_pan_and_brush,dust_pan).


% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

