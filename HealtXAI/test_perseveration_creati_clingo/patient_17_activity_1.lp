% ======================================================================
% Paziente 17
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

instance(i_p17_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p17_a1, participant_retrieves_broom_from_supply_closet, 1, 33253304).
raw_performed(i_p17_a1, participant_retrieves_duster_from_supply_closet, 2, 33274018).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 3, 33285986).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 4, 33288890).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 5, 33301857).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 6, 33313341).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 7, 33318196).
raw_performed(i_p17_a1, participant_sweeps_kitchen_floor, 8, 33328260).
raw_performed(i_p17_a1, participant_retrieves_dust_pan_and_brush_from_closet, 9, 33338920).
raw_performed(i_p17_a1, participant_retrieves_dust_pan_and_brush_from_closet, 10, 33340996).
raw_performed(i_p17_a1, participant_uses_dust_pan_and_brush, 11, 33344545).
raw_performed(i_p17_a1, participant_uses_dust_pan_and_brush, 12, 33349346).
raw_performed(i_p17_a1, participant_uses_dust_pan_and_brush, 13, 33363361).
raw_performed(i_p17_a1, participant_uses_dust_pan_and_brush, 14, 33371305).
raw_performed(i_p17_a1, participant_returns_broom_to_supply_closet, 15, 33372365).
raw_performed(i_p17_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 33372365).
raw_performed(i_p17_a1, participant_dusts_dining_room, 17, 33398245).
raw_performed(i_p17_a1, participant_dusts_dining_room, 18, 33401199).
raw_performed(i_p17_a1, participant_dusts_dining_room, 19, 33404095).
raw_performed(i_p17_a1, participant_dusts_dining_room, 20, 33405957).
raw_performed(i_p17_a1, participant_dusts_dining_room, 21, 33430334).
raw_performed(i_p17_a1, participant_dusts_dining_room, 22, 33435512).
raw_performed(i_p17_a1, participant_dusts_dining_room, 23, 33440335).
raw_performed(i_p17_a1, participant_dusts_dining_room, 24, 33441311).
raw_performed(i_p17_a1, participant_dusts_dining_room, 25, 33447835).
raw_performed(i_p17_a1, participant_dusts_living_room, 26, 33465271).
raw_performed(i_p17_a1, participant_dusts_living_room, 27, 33469264).
raw_performed(i_p17_a1, participant_returns_duster_to_supply_closet, 28, 33503931).

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

