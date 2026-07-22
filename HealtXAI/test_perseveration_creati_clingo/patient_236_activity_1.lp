% ======================================================================
% Paziente 236
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

action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 1).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 5).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 12).
action_type(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 12).
action_type(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 12).

expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 1).
expected_count(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 1).

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9166).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 63001).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 38902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321564).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 142634).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504567).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 206023).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p236_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p236_a1, participant_retrieves_broom_from_supply_closet, 1, 48011796).
raw_performed(i_p236_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48011796).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 3, 48011893).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 4, 48011893).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 5, 48022122).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 6, 48022122).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 7, 48032098).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 8, 48032098).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 9, 48032145).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 10, 48032145).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 11, 48038975).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 12, 48038975).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 13, 48050448).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 14, 48050448).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 15, 48058034).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 16, 48058034).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 17, 48063665).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 18, 48063665).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 19, 48067272).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 20, 48067272).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 21, 48069596).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 22, 48069596).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 23, 48080891).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 24, 48080891).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 25, 48082538).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 26, 48082538).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 27, 48086306).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 28, 48086306).
raw_performed(i_p236_a1, participant_sweeps_kitchen_floor, 29, 48090297).
raw_performed(i_p236_a1, participant_uses_dust_pan_and_brush, 30, 48090297).
raw_performed(i_p236_a1, participant_retrieves_duster_from_supply_closet, 31, 48095294).
raw_performed(i_p236_a1, participant_dusts_dining_room, 32, 48122252).
raw_performed(i_p236_a1, participant_dusts_dining_room, 33, 48122276).
raw_performed(i_p236_a1, participant_dusts_dining_room, 34, 48126262).
raw_performed(i_p236_a1, participant_dusts_dining_room, 35, 48129648).
raw_performed(i_p236_a1, participant_dusts_living_room, 36, 48134226).
raw_performed(i_p236_a1, participant_dusts_dining_room, 37, 48135281).
raw_performed(i_p236_a1, participant_dusts_dining_room, 38, 48137834).
raw_performed(i_p236_a1, participant_dusts_dining_room, 39, 48138402).
raw_performed(i_p236_a1, participant_dusts_living_room, 40, 48142579).
raw_performed(i_p236_a1, participant_dusts_dining_room, 41, 48142603).
raw_performed(i_p236_a1, participant_dusts_living_room, 42, 48144892).
raw_performed(i_p236_a1, participant_dusts_living_room, 43, 48146571).
raw_performed(i_p236_a1, participant_dusts_living_room, 44, 48149234).
raw_performed(i_p236_a1, participant_dusts_living_room, 45, 48149964).
raw_performed(i_p236_a1, participant_dusts_living_room, 46, 48150782).
raw_performed(i_p236_a1, participant_dusts_living_room, 47, 48154408).
raw_performed(i_p236_a1, participant_dusts_living_room, 48, 48159239).
raw_performed(i_p236_a1, participant_dusts_living_room, 49, 48160250).
raw_performed(i_p236_a1, participant_dusts_living_room, 50, 48173313).
raw_performed(i_p236_a1, participant_dusts_living_room, 51, 48173920).
raw_performed(i_p236_a1, participant_returns_duster_to_supply_closet, 52, 48180597).

prev_same(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    T1 < T2,
    not between_same_time(I,X,T1,T2).

between_same_time(I,X,T1,T2) :-
    raw_performed(I,X,_,T1),
    raw_performed(I,X,_,T2),
    raw_performed(I,X,_,Tm),
    T1 < Tm,
    Tm < T2.

episode_start(I,X,T) :-
    raw_performed(I,X,_,T),
    not prev_same(I,X,_,T).

episode_start(I,X,T2) :-
    prev_same(I,X,T1,T2),
    instance(I,A),
    action_gap(A,X,G),
    T2 - T1 > G.

performed(I,X,Tstart) :-
    episode_start(I,X,Tstart).


% ===========================
% Level C - Anomaly detection
% ===========================


performed_count(I,X,M) :-
    instance(I,_),
    action(X),
    M = #count { T : performed(I,X,T) }.

perseveration(I,X) :-
    instance(I,A),
    expected_count(A,X,N),
    performed_count(I,X,M),
    M > N.

#show perseveration/2.

