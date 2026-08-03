% ======================================================================
% Paziente 38
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

instance(i_p38_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p38_a1, participant_retrieves_broom_from_supply_closet, 1, 34356529).
raw_performed(i_p38_a1, participant_retrieves_duster_from_supply_closet, 2, 34364920).
raw_performed(i_p38_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 34374152).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 4, 34382941).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 5, 34387843).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 6, 34390056).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 7, 34403421).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 8, 34407622).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 9, 34413933).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 10, 34418234).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 11, 34421992).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 12, 34423874).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 13, 34431007).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 14, 34437938).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 15, 34439032).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 16, 34443699).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 17, 34447257).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 18, 34450997).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 19, 34453988).
raw_performed(i_p38_a1, participant_sweeps_kitchen_floor, 20, 34455681).
raw_performed(i_p38_a1, participant_uses_dust_pan_and_brush, 21, 34455771).
raw_performed(i_p38_a1, participant_uses_dust_pan_and_brush, 22, 34459986).
raw_performed(i_p38_a1, participant_uses_dust_pan_and_brush, 23, 34467482).
raw_performed(i_p38_a1, participant_dusts_dining_room, 24, 34497367).
raw_performed(i_p38_a1, participant_dusts_dining_room, 25, 34500656).
raw_performed(i_p38_a1, participant_dusts_dining_room, 26, 34513949).
raw_performed(i_p38_a1, participant_dusts_dining_room, 27, 34518272).
raw_performed(i_p38_a1, participant_dusts_dining_room, 28, 34525190).
raw_performed(i_p38_a1, participant_dusts_dining_room, 29, 34526198).
raw_performed(i_p38_a1, participant_dusts_dining_room, 30, 34530259).
raw_performed(i_p38_a1, participant_dusts_dining_room, 31, 34530773).
raw_performed(i_p38_a1, participant_dusts_dining_room, 32, 34532782).
raw_performed(i_p38_a1, participant_dusts_dining_room, 33, 34537075).
raw_performed(i_p38_a1, participant_dusts_dining_room, 34, 34541107).
raw_performed(i_p38_a1, participant_dusts_dining_room, 35, 34544816).
raw_performed(i_p38_a1, participant_dusts_dining_room, 36, 34546037).
raw_performed(i_p38_a1, participant_dusts_dining_room, 37, 34546449).
raw_performed(i_p38_a1, participant_dusts_living_room, 38, 34552597).
raw_performed(i_p38_a1, participant_dusts_living_room, 39, 34558744).
raw_performed(i_p38_a1, participant_dusts_living_room, 40, 34561219).
raw_performed(i_p38_a1, participant_dusts_living_room, 41, 34561747).
raw_performed(i_p38_a1, participant_dusts_living_room, 42, 34565979).
raw_performed(i_p38_a1, participant_dusts_living_room, 43, 34567378).
raw_performed(i_p38_a1, participant_dusts_living_room, 44, 34574180).
raw_performed(i_p38_a1, participant_dusts_living_room, 45, 34583119).
raw_performed(i_p38_a1, participant_dusts_living_room, 46, 34585955).
raw_performed(i_p38_a1, participant_returns_duster_to_supply_closet, 47, 34609131).
raw_performed(i_p38_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 48, 34634611).
raw_performed(i_p38_a1, participant_returns_broom_to_supply_closet, 49, 34634821).

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

