% ======================================================================
% Paziente 400
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

instance(i_p400_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p400_a1, participant_retrieves_broom_from_supply_closet, 1, 48479370).
raw_performed(i_p400_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48500380).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 3, 48508132).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 4, 48508132).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 5, 48516878).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 6, 48516878).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 7, 48517738).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 8, 48517738).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 9, 48521295).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 10, 48521295).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 11, 48526317).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 12, 48526317).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 13, 48528352).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 14, 48528352).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 15, 48532771).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 16, 48532771).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 17, 48535882).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 18, 48535882).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 19, 48537341).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 20, 48537341).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 21, 48543492).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 22, 48543492).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 23, 48547396).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 24, 48547396).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 25, 48562253).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 26, 48562253).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 27, 48580266).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 28, 48580266).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 29, 48582792).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 30, 48582792).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 31, 48583421).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 32, 48583421).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 33, 48618704).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 34, 48618704).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 35, 48619131).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 36, 48619131).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 37, 48619776).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 38, 48619776).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 39, 48624397).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 40, 48624397).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 41, 48630157).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 42, 48630157).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 43, 48638726).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 44, 48638726).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 45, 48646982).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 46, 48646982).
raw_performed(i_p400_a1, participant_sweeps_kitchen_floor, 47, 48657816).
raw_performed(i_p400_a1, participant_uses_dust_pan_and_brush, 48, 48657816).
raw_performed(i_p400_a1, participant_returns_broom_to_supply_closet, 49, 48674812).
raw_performed(i_p400_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 50, 48700447).

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

