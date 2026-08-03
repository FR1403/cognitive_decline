% ======================================================================
% Paziente 344
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

instance(i_p344_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p344_a1, participant_retrieves_broom_from_supply_closet, 1, 52206091).
raw_performed(i_p344_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 52206091).
raw_performed(i_p344_a1, participant_sweeps_kitchen_floor, 3, 52210043).
raw_performed(i_p344_a1, participant_uses_dust_pan_and_brush, 4, 52210043).
raw_performed(i_p344_a1, participant_sweeps_kitchen_floor, 5, 52219016).
raw_performed(i_p344_a1, participant_uses_dust_pan_and_brush, 6, 52219016).
raw_performed(i_p344_a1, participant_sweeps_kitchen_floor, 7, 52223010).
raw_performed(i_p344_a1, participant_uses_dust_pan_and_brush, 8, 52223010).
raw_performed(i_p344_a1, participant_sweeps_kitchen_floor, 9, 52229047).
raw_performed(i_p344_a1, participant_uses_dust_pan_and_brush, 10, 52229047).
raw_performed(i_p344_a1, participant_sweeps_kitchen_floor, 11, 52255098).
raw_performed(i_p344_a1, participant_uses_dust_pan_and_brush, 12, 52255098).
raw_performed(i_p344_a1, participant_retrieves_duster_from_supply_closet, 13, 52260020).
raw_performed(i_p344_a1, participant_returns_broom_to_supply_closet, 14, 52260020).
raw_performed(i_p344_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 15, 52260020).
raw_performed(i_p344_a1, participant_dusts_dining_room, 16, 52281064).
raw_performed(i_p344_a1, participant_dusts_dining_room, 17, 52284047).
raw_performed(i_p344_a1, participant_dusts_dining_room, 18, 52287083).
raw_performed(i_p344_a1, participant_dusts_dining_room, 19, 52294098).
raw_performed(i_p344_a1, participant_dusts_dining_room, 20, 52296090).
raw_performed(i_p344_a1, participant_dusts_living_room, 21, 52299062).
raw_performed(i_p344_a1, participant_dusts_living_room, 22, 52300069).
raw_performed(i_p344_a1, participant_dusts_living_room, 23, 52300071).
raw_performed(i_p344_a1, participant_dusts_living_room, 24, 52303042).
raw_performed(i_p344_a1, participant_dusts_living_room, 25, 52307012).
raw_performed(i_p344_a1, participant_dusts_living_room, 26, 52311098).
raw_performed(i_p344_a1, participant_dusts_living_room, 27, 52314074).
raw_performed(i_p344_a1, participant_dusts_living_room, 28, 52314077).
raw_performed(i_p344_a1, participant_dusts_living_room, 29, 52314079).
raw_performed(i_p344_a1, participant_returns_duster_to_supply_closet, 30, 52320021).

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

