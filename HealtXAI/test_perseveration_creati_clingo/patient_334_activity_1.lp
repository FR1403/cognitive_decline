% ======================================================================
% Paziente 334
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

instance(i_p334_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p334_a1, participant_retrieves_broom_from_supply_closet, 1, 34196653).
raw_performed(i_p334_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34198923).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 3, 34224191).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 4, 34235309).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 5, 34235750).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 6, 34244011).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 7, 34246666).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 8, 34257785).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 9, 34257798).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 10, 34266296).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 11, 34289128).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 12, 34295880).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 13, 34300039).
raw_performed(i_p334_a1, participant_sweeps_kitchen_floor, 14, 34308041).
raw_performed(i_p334_a1, participant_uses_dust_pan_and_brush, 15, 34312094).
raw_performed(i_p334_a1, participant_returns_broom_to_supply_closet, 16, 34329456).
raw_performed(i_p334_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 34345288).
raw_performed(i_p334_a1, participant_retrieves_duster_from_supply_closet, 18, 34346016).
raw_performed(i_p334_a1, participant_dusts_dining_room, 19, 34358420).
raw_performed(i_p334_a1, participant_dusts_dining_room, 20, 34369981).
raw_performed(i_p334_a1, participant_dusts_dining_room, 21, 34375829).
raw_performed(i_p334_a1, participant_dusts_dining_room, 22, 34381406).
raw_performed(i_p334_a1, participant_dusts_living_room, 23, 34384294).
raw_performed(i_p334_a1, participant_dusts_living_room, 24, 34384933).
raw_performed(i_p334_a1, participant_dusts_living_room, 25, 34387159).
raw_performed(i_p334_a1, participant_dusts_living_room, 26, 34396343).
raw_performed(i_p334_a1, participant_dusts_dining_room, 27, 34400945).
raw_performed(i_p334_a1, participant_dusts_living_room, 28, 34404075).
raw_performed(i_p334_a1, participant_dusts_dining_room, 29, 34404478).
raw_performed(i_p334_a1, participant_dusts_living_room, 30, 34407727).
raw_performed(i_p334_a1, participant_dusts_living_room, 31, 34407741).
raw_performed(i_p334_a1, participant_dusts_living_room, 32, 34408141).
raw_performed(i_p334_a1, participant_dusts_living_room, 33, 34433936).
raw_performed(i_p334_a1, participant_dusts_living_room, 34, 34437921).
raw_performed(i_p334_a1, participant_dusts_living_room, 35, 34445383).
raw_performed(i_p334_a1, participant_dusts_living_room, 36, 34445396).
raw_performed(i_p334_a1, participant_returns_duster_to_supply_closet, 37, 34456367).

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

