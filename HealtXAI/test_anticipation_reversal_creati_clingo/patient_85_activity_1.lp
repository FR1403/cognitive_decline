% ======================================================================
% Paziente 85
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

expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 1).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 2).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 3).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 4).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 5).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 6).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 7).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 8).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 9).
expected_pos(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 10).

depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, participant_retrieves_duster_from_supply_closet).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, participant_retrieves_duster_from_supply_closet).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, participant_sweeps_kitchen_floor).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, participant_dusts_dining_room).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, participant_dusts_living_room).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, participant_retrieves_broom_from_supply_closet).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, participant_retrieves_dust_pan_and_brush_from_closet).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, participant_sweeps_kitchen_floor).
depends_on(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, participant_uses_dust_pan_and_brush).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p85_a1, sweep_the_kitchen_and_dust_the_living_room).
performed(i_p85_a1, participant_retrieves_broom_from_supply_closet, 1).
performed(i_p85_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2).
performed(i_p85_a1, participant_sweeps_kitchen_floor, 3).
performed(i_p85_a1, participant_returns_broom_to_supply_closet, 4).
performed(i_p85_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 5).
performed(i_p85_a1, participant_dusts_dining_room, 6).
performed(i_p85_a1, participant_dusts_living_room, 7).
performed(i_p85_a1, participant_returns_duster_to_supply_closet, 8).


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

