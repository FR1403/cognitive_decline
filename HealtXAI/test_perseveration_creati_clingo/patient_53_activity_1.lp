% ======================================================================
% Paziente 53
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

instance(i_p53_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p53_a1, participant_retrieves_broom_from_supply_closet, 1, 52136948).
raw_performed(i_p53_a1, participant_retrieves_duster_from_supply_closet, 2, 52136948).
raw_performed(i_p53_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 52136948).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 4, 52184922).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 5, 52194014).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 6, 52202392).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 7, 52202755).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 8, 52210532).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 9, 52215001).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 10, 52225005).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 11, 52231672).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 12, 52241071).
raw_performed(i_p53_a1, participant_dusts_dining_room, 13, 52246604).
raw_performed(i_p53_a1, participant_dusts_dining_room, 14, 52247318).
raw_performed(i_p53_a1, participant_dusts_dining_room, 15, 52252062).
raw_performed(i_p53_a1, participant_dusts_dining_room, 16, 52267036).
raw_performed(i_p53_a1, participant_dusts_dining_room, 17, 52273368).
raw_performed(i_p53_a1, participant_dusts_dining_room, 18, 52281229).
raw_performed(i_p53_a1, participant_dusts_dining_room, 19, 52286048).
raw_performed(i_p53_a1, participant_dusts_dining_room, 20, 52294385).
raw_performed(i_p53_a1, participant_dusts_dining_room, 21, 52330054).
raw_performed(i_p53_a1, participant_dusts_dining_room, 22, 52336741).
raw_performed(i_p53_a1, participant_dusts_dining_room, 23, 52338021).
raw_performed(i_p53_a1, participant_dusts_living_room, 24, 52342355).
raw_performed(i_p53_a1, participant_dusts_living_room, 25, 52344230).
raw_performed(i_p53_a1, participant_dusts_living_room, 26, 52348069).
raw_performed(i_p53_a1, participant_dusts_living_room, 27, 52349064).
raw_performed(i_p53_a1, participant_dusts_living_room, 28, 52350308).
raw_performed(i_p53_a1, participant_dusts_living_room, 29, 52354543).
raw_performed(i_p53_a1, participant_dusts_living_room, 30, 52359035).
raw_performed(i_p53_a1, participant_dusts_living_room, 31, 52372598).
raw_performed(i_p53_a1, participant_dusts_living_room, 32, 52374035).
raw_performed(i_p53_a1, participant_dusts_living_room, 33, 52376020).
raw_performed(i_p53_a1, participant_dusts_living_room, 34, 52392361).
raw_performed(i_p53_a1, participant_dusts_living_room, 35, 52407059).
raw_performed(i_p53_a1, participant_dusts_living_room, 36, 52414099).
raw_performed(i_p53_a1, participant_dusts_living_room, 37, 52425068).
raw_performed(i_p53_a1, participant_dusts_living_room, 38, 52447730).
raw_performed(i_p53_a1, participant_dusts_living_room, 39, 52461051).
raw_performed(i_p53_a1, participant_dusts_living_room, 40, 52477450).
raw_performed(i_p53_a1, participant_dusts_living_room, 41, 52485505).
raw_performed(i_p53_a1, participant_dusts_living_room, 42, 52494016).
raw_performed(i_p53_a1, participant_dusts_living_room, 43, 52504406).
raw_performed(i_p53_a1, participant_dusts_living_room, 44, 52506546).
raw_performed(i_p53_a1, participant_dusts_living_room, 45, 52515068).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 46, 52542613).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 47, 52542613).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 48, 52543678).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 49, 52543678).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 50, 52552378).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 51, 52552378).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 52, 52564010).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 53, 52564010).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 54, 52572584).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 55, 52572584).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 56, 52582085).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 57, 52582085).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 58, 52587043).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 59, 52587043).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 60, 52600078).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 61, 52600078).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 62, 52603033).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 63, 52603033).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 64, 52611271).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 65, 52611271).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 66, 52614949).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 67, 52614949).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 68, 52623609).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 69, 52623609).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 70, 52635029).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 71, 52635029).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 72, 52642078).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 73, 52642078).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 74, 52671198).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 75, 52671198).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 76, 52696040).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 77, 52696040).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 78, 52699473).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 79, 52699473).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 80, 52721090).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 81, 52721090).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 82, 52726056).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 83, 52726056).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 84, 52745042).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 85, 52745042).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 86, 52784099).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 87, 52784099).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 88, 52813038).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 89, 52813038).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 90, 52814514).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 91, 52814514).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 92, 52819336).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 93, 52819336).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 94, 52822446).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 95, 52822446).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 96, 52828558).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 97, 52828558).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 98, 52841670).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 99, 52841670).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 100, 52852058).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 101, 52852058).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 102, 52862068).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 103, 52862068).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 104, 52867026).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 105, 52867026).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 106, 52868092).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 107, 52868092).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 108, 52870490).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 109, 52870490).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 110, 52992088).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 111, 52992088).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 112, 52995066).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 113, 52995066).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 114, 52998397).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 115, 52998397).
raw_performed(i_p53_a1, participant_sweeps_kitchen_floor, 116, 52999042).
raw_performed(i_p53_a1, participant_uses_dust_pan_and_brush, 117, 52999042).
raw_performed(i_p53_a1, participant_returns_broom_to_supply_closet, 118, 53000097).
raw_performed(i_p53_a1, participant_returns_duster_to_supply_closet, 119, 53000097).
raw_performed(i_p53_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 120, 53000097).

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

