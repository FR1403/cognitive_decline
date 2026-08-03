% ======================================================================
% Paziente 274
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

instance(i_p274_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p274_a1, participant_retrieves_broom_from_supply_closet, 1, 33740104).
raw_performed(i_p274_a1, participant_retrieves_duster_from_supply_closet, 2, 33743760).
raw_performed(i_p274_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 33757532).
raw_performed(i_p274_a1, participant_sweeps_kitchen_floor, 4, 33757556).
raw_performed(i_p274_a1, participant_sweeps_kitchen_floor, 5, 33762755).
raw_performed(i_p274_a1, participant_sweeps_kitchen_floor, 6, 33774567).
raw_performed(i_p274_a1, participant_sweeps_kitchen_floor, 7, 33782755).
raw_performed(i_p274_a1, participant_sweeps_kitchen_floor, 8, 33785780).
raw_performed(i_p274_a1, participant_uses_dust_pan_and_brush, 9, 33808695).
raw_performed(i_p274_a1, participant_uses_dust_pan_and_brush, 10, 33811912).
raw_performed(i_p274_a1, participant_returns_broom_to_supply_closet, 11, 33819755).
raw_performed(i_p274_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 12, 33819755).
raw_performed(i_p274_a1, participant_dusts_living_room, 13, 33838106).
raw_performed(i_p274_a1, participant_dusts_living_room, 14, 33838130).
raw_performed(i_p274_a1, participant_dusts_living_room, 15, 33853723).
raw_performed(i_p274_a1, participant_dusts_living_room, 16, 33859908).
raw_performed(i_p274_a1, participant_dusts_living_room, 17, 33883330).
raw_performed(i_p274_a1, participant_dusts_living_room, 18, 33886896).
raw_performed(i_p274_a1, participant_dusts_living_room, 19, 33902398).
raw_performed(i_p274_a1, participant_dusts_living_room, 20, 33904022).
raw_performed(i_p274_a1, participant_dusts_living_room, 21, 33906837).
raw_performed(i_p274_a1, participant_dusts_living_room, 22, 33907432).
raw_performed(i_p274_a1, participant_dusts_dining_room, 23, 33908288).
raw_performed(i_p274_a1, participant_dusts_dining_room, 24, 33911387).
raw_performed(i_p274_a1, participant_dusts_dining_room, 25, 33912156).
raw_performed(i_p274_a1, participant_dusts_dining_room, 26, 33914691).
raw_performed(i_p274_a1, participant_dusts_dining_room, 27, 33921628).
raw_performed(i_p274_a1, participant_dusts_dining_room, 28, 33925816).
raw_performed(i_p274_a1, participant_dusts_dining_room, 29, 33925840).
raw_performed(i_p274_a1, participant_dusts_dining_room, 30, 33925864).
raw_performed(i_p274_a1, participant_dusts_living_room, 31, 33926654).
raw_performed(i_p274_a1, participant_dusts_living_room, 32, 33927809).
raw_performed(i_p274_a1, participant_dusts_living_room, 33, 33930425).
raw_performed(i_p274_a1, participant_dusts_living_room, 34, 33943527).
raw_performed(i_p274_a1, participant_dusts_living_room, 35, 33944337).
raw_performed(i_p274_a1, participant_dusts_living_room, 36, 33944361).
raw_performed(i_p274_a1, participant_returns_duster_to_supply_closet, 37, 33969018).

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

