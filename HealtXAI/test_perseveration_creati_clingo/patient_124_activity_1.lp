% ======================================================================
% Paziente 124
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9078).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 68036).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 37696).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 271388).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 109438).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 122668).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 432609).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 21027).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 222487).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p124_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p124_a1, participant_retrieves_broom_from_supply_closet, 1, 32664095).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 2, 32677044).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 3, 32679096).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 4, 32690076).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 5, 32718068).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 6, 32721097).
raw_performed(i_p124_a1, participant_sweeps_kitchen_floor, 7, 32727034).
raw_performed(i_p124_a1, participant_retrieves_dust_pan_and_brush_from_closet, 8, 32747000).
raw_performed(i_p124_a1, participant_uses_dust_pan_and_brush, 9, 32755003).
raw_performed(i_p124_a1, participant_returns_broom_to_supply_closet, 10, 32767072).
raw_performed(i_p124_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 11, 32767072).
raw_performed(i_p124_a1, participant_retrieves_duster_from_supply_closet, 12, 32798004).
raw_performed(i_p124_a1, participant_dusts_dining_room, 13, 32869008).
raw_performed(i_p124_a1, participant_dusts_dining_room, 14, 32874013).
raw_performed(i_p124_a1, participant_dusts_dining_room, 15, 32886009).
raw_performed(i_p124_a1, participant_dusts_dining_room, 16, 32888021).
raw_performed(i_p124_a1, participant_dusts_dining_room, 17, 32894082).
raw_performed(i_p124_a1, participant_dusts_dining_room, 18, 32897000).
raw_performed(i_p124_a1, participant_dusts_dining_room, 19, 32901068).
raw_performed(i_p124_a1, participant_dusts_dining_room, 20, 32913053).
raw_performed(i_p124_a1, participant_dusts_dining_room, 21, 32921043).
raw_performed(i_p124_a1, participant_dusts_dining_room, 22, 32922000).
raw_performed(i_p124_a1, participant_dusts_dining_room, 23, 32925019).
raw_performed(i_p124_a1, participant_dusts_living_room, 24, 32930001).
raw_performed(i_p124_a1, participant_dusts_living_room, 25, 32934037).
raw_performed(i_p124_a1, participant_dusts_living_room, 26, 32943090).
raw_performed(i_p124_a1, participant_dusts_living_room, 27, 32952002).
raw_performed(i_p124_a1, participant_dusts_living_room, 28, 32952005).
raw_performed(i_p124_a1, participant_dusts_living_room, 29, 32962061).
raw_performed(i_p124_a1, participant_dusts_living_room, 30, 32963064).
raw_performed(i_p124_a1, participant_dusts_living_room, 31, 32992098).
raw_performed(i_p124_a1, participant_returns_duster_to_supply_closet, 32, 33050029).

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

