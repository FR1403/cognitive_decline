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

instance(i_p281_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p281_a1, participant_retrieves_broom_from_supply_closet, 1, 52421948).
raw_performed(i_p281_a1, participant_retrieves_duster_from_supply_closet, 2, 52421948).
raw_performed(i_p281_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 52421948).
raw_performed(i_p281_a1, participant_dusts_dining_room, 4, 52519424).
raw_performed(i_p281_a1, participant_dusts_dining_room, 5, 52523494).
raw_performed(i_p281_a1, participant_dusts_dining_room, 6, 52527449).
raw_performed(i_p281_a1, participant_dusts_dining_room, 7, 52530953).
raw_performed(i_p281_a1, participant_dusts_dining_room, 8, 52530977).
raw_performed(i_p281_a1, participant_dusts_dining_room, 9, 52545945).
raw_performed(i_p281_a1, participant_dusts_dining_room, 10, 52546563).
raw_performed(i_p281_a1, participant_dusts_dining_room, 11, 52557652).
raw_performed(i_p281_a1, participant_dusts_dining_room, 12, 52557699).
raw_performed(i_p281_a1, participant_dusts_dining_room, 13, 52558226).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 14, 52563592).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 15, 52563592).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 16, 52563639).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 17, 52563639).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 18, 52564615).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 19, 52564615).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 20, 52567865).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 21, 52567865).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 22, 52579324).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 23, 52579324).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 24, 52585532).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 25, 52585532).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 26, 52590147).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 27, 52590147).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 28, 52593069).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 29, 52593069).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 30, 52593695).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 31, 52593695).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 32, 52604587).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 33, 52604587).
raw_performed(i_p281_a1, participant_sweeps_kitchen_floor, 34, 52605829).
raw_performed(i_p281_a1, participant_uses_dust_pan_and_brush, 35, 52605829).
raw_performed(i_p281_a1, participant_dusts_living_room, 36, 52617754).
raw_performed(i_p281_a1, participant_dusts_living_room, 37, 52617778).
raw_performed(i_p281_a1, participant_dusts_living_room, 38, 52621505).
raw_performed(i_p281_a1, participant_dusts_living_room, 39, 52629330).
raw_performed(i_p281_a1, participant_dusts_living_room, 40, 52633359).
raw_performed(i_p281_a1, participant_dusts_living_room, 41, 52652885).
raw_performed(i_p281_a1, participant_dusts_living_room, 42, 52671072).
raw_performed(i_p281_a1, participant_dusts_living_room, 43, 52678457).
raw_performed(i_p281_a1, participant_dusts_living_room, 44, 52679517).
raw_performed(i_p281_a1, participant_dusts_living_room, 45, 52682274).
raw_performed(i_p281_a1, participant_dusts_living_room, 46, 52682298).
raw_performed(i_p281_a1, participant_dusts_living_room, 47, 52699456).
raw_performed(i_p281_a1, participant_dusts_living_room, 48, 52700347).
raw_performed(i_p281_a1, participant_dusts_living_room, 49, 52700946).
raw_performed(i_p281_a1, participant_dusts_living_room, 50, 52704527).
raw_performed(i_p281_a1, participant_dusts_dining_room, 51, 52705922).
raw_performed(i_p281_a1, participant_dusts_dining_room, 52, 52712622).
raw_performed(i_p281_a1, participant_dusts_dining_room, 53, 52712652).
raw_performed(i_p281_a1, participant_dusts_dining_room, 54, 52718760).
raw_performed(i_p281_a1, participant_dusts_dining_room, 55, 52723792).
raw_performed(i_p281_a1, participant_dusts_dining_room, 56, 52728008).
raw_performed(i_p281_a1, participant_dusts_dining_room, 57, 52734344).
raw_performed(i_p281_a1, participant_dusts_dining_room, 58, 52737600).
raw_performed(i_p281_a1, participant_dusts_dining_room, 59, 52742203).
raw_performed(i_p281_a1, participant_dusts_dining_room, 60, 52750547).
raw_performed(i_p281_a1, participant_dusts_dining_room, 61, 52755713).
raw_performed(i_p281_a1, participant_dusts_dining_room, 62, 52762625).
raw_performed(i_p281_a1, participant_dusts_dining_room, 63, 52766935).
raw_performed(i_p281_a1, participant_dusts_dining_room, 64, 52769654).
raw_performed(i_p281_a1, participant_returns_broom_to_supply_closet, 65, 52774781).
raw_performed(i_p281_a1, participant_returns_duster_to_supply_closet, 66, 52774781).
raw_performed(i_p281_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 67, 52774781).

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

