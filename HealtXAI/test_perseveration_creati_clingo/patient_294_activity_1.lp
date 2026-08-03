% ======================================================================
% Paziente 294
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

instance(i_p294_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p294_a1, participant_retrieves_broom_from_supply_closet, 1, 53290852).
raw_performed(i_p294_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 53290852).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 3, 53318337).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 4, 53318337).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 5, 53320573).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 6, 53320573).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 7, 53324712).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 8, 53324712).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 9, 53326991).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 10, 53326991).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 11, 53333988).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 12, 53333988).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 13, 53337415).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 14, 53337415).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 15, 53343855).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 16, 53343855).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 17, 53350102).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 18, 53350102).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 19, 53354494).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 20, 53354494).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 21, 53356387).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 22, 53356387).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 23, 53378106).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 24, 53378106).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 25, 53388132).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 26, 53388132).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 27, 53418427).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 28, 53418427).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 29, 53420942).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 30, 53420942).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 31, 53433944).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 32, 53433944).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 33, 53437273).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 34, 53437273).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 35, 53457169).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 36, 53457169).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 37, 53465695).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 38, 53465695).
raw_performed(i_p294_a1, participant_sweeps_kitchen_floor, 39, 53472789).
raw_performed(i_p294_a1, participant_uses_dust_pan_and_brush, 40, 53472789).
raw_performed(i_p294_a1, participant_returns_broom_to_supply_closet, 41, 53484702).
raw_performed(i_p294_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 42, 53484702).
raw_performed(i_p294_a1, participant_retrieves_duster_from_supply_closet, 43, 53517515).
raw_performed(i_p294_a1, participant_dusts_living_room, 44, 53551968).
raw_performed(i_p294_a1, participant_dusts_living_room, 45, 53561624).
raw_performed(i_p294_a1, participant_dusts_living_room, 46, 53564781).
raw_performed(i_p294_a1, participant_dusts_living_room, 47, 53565813).
raw_performed(i_p294_a1, participant_dusts_living_room, 48, 53568282).
raw_performed(i_p294_a1, participant_dusts_living_room, 49, 53568943).
raw_performed(i_p294_a1, participant_dusts_living_room, 50, 53587267).
raw_performed(i_p294_a1, participant_dusts_living_room, 51, 53587292).
raw_performed(i_p294_a1, participant_dusts_living_room, 52, 53589562).
raw_performed(i_p294_a1, participant_dusts_living_room, 53, 53591042).
raw_performed(i_p294_a1, participant_dusts_dining_room, 54, 53591682).
raw_performed(i_p294_a1, participant_dusts_dining_room, 55, 53596452).
raw_performed(i_p294_a1, participant_dusts_dining_room, 56, 53602339).
raw_performed(i_p294_a1, participant_dusts_dining_room, 57, 53604825).
raw_performed(i_p294_a1, participant_dusts_dining_room, 58, 53606732).
raw_performed(i_p294_a1, participant_dusts_dining_room, 59, 53614408).
raw_performed(i_p294_a1, participant_dusts_dining_room, 60, 53618561).
raw_performed(i_p294_a1, participant_dusts_dining_room, 61, 53626702).
raw_performed(i_p294_a1, participant_dusts_dining_room, 62, 53627739).
raw_performed(i_p294_a1, participant_returns_duster_to_supply_closet, 63, 53633252).

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

