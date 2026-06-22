% ======================================================================
% Paziente 88
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
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 39091).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321534).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 141540).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504615).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 205578).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p88_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p88_a1, participant_retrieves_broom_from_supply_closet, 1, 33677238).
raw_performed(i_p88_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33677238).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 3, 33688372).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 4, 33689839).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 5, 33692879).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 6, 33698471).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 7, 33707629).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 8, 33716309).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 9, 33722000).
raw_performed(i_p88_a1, participant_uses_dust_pan_and_brush, 10, 33722000).
raw_performed(i_p88_a1, participant_sweeps_kitchen_floor, 11, 33725325).
raw_performed(i_p88_a1, participant_uses_dust_pan_and_brush, 12, 33725325).
raw_performed(i_p88_a1, participant_returns_broom_to_supply_closet, 13, 33729129).
raw_performed(i_p88_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 14, 33755584).
raw_performed(i_p88_a1, participant_retrieves_duster_from_supply_closet, 15, 33764745).
raw_performed(i_p88_a1, participant_dusts_living_room, 16, 33795455).
raw_performed(i_p88_a1, participant_dusts_living_room, 17, 33800895).
raw_performed(i_p88_a1, participant_dusts_living_room, 18, 33811507).
raw_performed(i_p88_a1, participant_dusts_living_room, 19, 33814258).
raw_performed(i_p88_a1, participant_dusts_living_room, 20, 33818639).
raw_performed(i_p88_a1, participant_dusts_living_room, 21, 33823678).
raw_performed(i_p88_a1, participant_dusts_living_room, 22, 33824566).
raw_performed(i_p88_a1, participant_dusts_dining_room, 23, 33825405).
raw_performed(i_p88_a1, participant_dusts_dining_room, 24, 33831048).
raw_performed(i_p88_a1, participant_dusts_dining_room, 25, 33833088).
raw_performed(i_p88_a1, participant_dusts_dining_room, 26, 33834219).
raw_performed(i_p88_a1, participant_returns_duster_to_supply_closet, 27, 33837368).

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

