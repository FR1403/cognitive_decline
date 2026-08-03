% ======================================================================
% Paziente 211
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

instance(i_p211_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p211_a1, participant_retrieves_broom_from_supply_closet, 1, 33549404).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 2, 33549476).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 3, 33555835).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 4, 33556477).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 5, 33562312).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 6, 33567121).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 7, 33570560).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 8, 33574097).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 9, 33577287).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 10, 33585366).
raw_performed(i_p211_a1, participant_sweeps_kitchen_floor, 11, 33596240).
raw_performed(i_p211_a1, participant_returns_broom_to_supply_closet, 12, 33613954).
raw_performed(i_p211_a1, participant_retrieves_duster_from_supply_closet, 13, 33658966).
raw_performed(i_p211_a1, participant_dusts_dining_room, 14, 33685345).
raw_performed(i_p211_a1, participant_dusts_dining_room, 15, 33686824).
raw_performed(i_p211_a1, participant_dusts_dining_room, 16, 33690858).
raw_performed(i_p211_a1, participant_dusts_dining_room, 17, 33699437).
raw_performed(i_p211_a1, participant_dusts_dining_room, 18, 33706965).
raw_performed(i_p211_a1, participant_dusts_dining_room, 19, 33709672).
raw_performed(i_p211_a1, participant_dusts_dining_room, 20, 33717303).
raw_performed(i_p211_a1, participant_dusts_dining_room, 21, 33717896).
raw_performed(i_p211_a1, participant_dusts_living_room, 22, 33721647).
raw_performed(i_p211_a1, participant_dusts_living_room, 23, 33721695).
raw_performed(i_p211_a1, participant_dusts_dining_room, 24, 33721718).
raw_performed(i_p211_a1, participant_dusts_living_room, 25, 33725529).
raw_performed(i_p211_a1, participant_dusts_living_room, 26, 33726541).
raw_performed(i_p211_a1, participant_dusts_living_room, 27, 33733447).
raw_performed(i_p211_a1, participant_dusts_living_room, 28, 33757244).
raw_performed(i_p211_a1, participant_dusts_living_room, 29, 33772365).
raw_performed(i_p211_a1, participant_dusts_living_room, 30, 33776105).
raw_performed(i_p211_a1, participant_dusts_living_room, 31, 33791521).
raw_performed(i_p211_a1, participant_returns_duster_to_supply_closet, 32, 33799475).

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

