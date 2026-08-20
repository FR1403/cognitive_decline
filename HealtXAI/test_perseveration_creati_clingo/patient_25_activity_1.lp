% ======================================================================
% Paziente 25
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

instance(i_p25_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p25_a1, participant_retrieves_broom_from_supply_closet, 1, 50067622).
raw_performed(i_p25_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 50069524).
raw_performed(i_p25_a1, participant_retrieves_duster_from_supply_closet, 3, 50073383).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 4, 50077938).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 5, 50078460).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 6, 50081816).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 7, 50085081).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 8, 50086464).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 9, 50087023).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 10, 50088255).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 11, 50094898).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 12, 50096131).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 13, 50098591).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 14, 50103617).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 15, 50107827).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 16, 50110844).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 17, 50118731).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 18, 50131533).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 19, 50137115).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 20, 50137548).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 21, 50142730).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 22, 50149337).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 23, 50151560).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 24, 50160003).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 25, 50160003).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 26, 50163754).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 27, 50163754).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 28, 50170317).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 29, 50172844).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 30, 50172844).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 31, 50173627).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 32, 50173627).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 33, 50175049).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 34, 50175049).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 35, 50183073).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 36, 50183073).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 37, 50183735).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 38, 50183735).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 39, 50199699).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 40, 50199699).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 41, 50206444).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 42, 50206444).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 43, 50215778).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 44, 50215778).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 45, 50219095).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 46, 50219095).
raw_performed(i_p25_a1, participant_sweeps_kitchen_floor, 47, 50226048).
raw_performed(i_p25_a1, participant_uses_dust_pan_and_brush, 48, 50226048).
raw_performed(i_p25_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 49, 50227773).
raw_performed(i_p25_a1, participant_returns_broom_to_supply_closet, 50, 50232413).
raw_performed(i_p25_a1, participant_dusts_dining_room, 51, 50235616).
raw_performed(i_p25_a1, participant_dusts_dining_room, 52, 50243067).
raw_performed(i_p25_a1, participant_dusts_dining_room, 53, 50244356).
raw_performed(i_p25_a1, participant_dusts_dining_room, 54, 50245200).
raw_performed(i_p25_a1, participant_dusts_dining_room, 55, 50245858).
raw_performed(i_p25_a1, participant_dusts_dining_room, 56, 50249425).
raw_performed(i_p25_a1, participant_dusts_dining_room, 57, 50255343).
raw_performed(i_p25_a1, participant_dusts_dining_room, 58, 50263280).
raw_performed(i_p25_a1, participant_dusts_dining_room, 59, 50264645).
raw_performed(i_p25_a1, participant_dusts_dining_room, 60, 50266255).
raw_performed(i_p25_a1, participant_dusts_dining_room, 61, 50266454).
raw_performed(i_p25_a1, participant_dusts_dining_room, 62, 50268908).
raw_performed(i_p25_a1, participant_dusts_dining_room, 63, 50269825).
raw_performed(i_p25_a1, participant_dusts_dining_room, 64, 50273561).
raw_performed(i_p25_a1, participant_dusts_dining_room, 65, 50276059).
raw_performed(i_p25_a1, participant_dusts_dining_room, 66, 50277679).
raw_performed(i_p25_a1, participant_dusts_dining_room, 67, 50279209).
raw_performed(i_p25_a1, participant_dusts_dining_room, 68, 50280497).
raw_performed(i_p25_a1, participant_dusts_dining_room, 69, 50284384).
raw_performed(i_p25_a1, participant_dusts_dining_room, 70, 50286622).
raw_performed(i_p25_a1, participant_dusts_dining_room, 71, 50290024).
raw_performed(i_p25_a1, participant_dusts_dining_room, 72, 50293940).
raw_performed(i_p25_a1, participant_dusts_dining_room, 73, 50302420).
raw_performed(i_p25_a1, participant_dusts_dining_room, 74, 50309199).
raw_performed(i_p25_a1, participant_dusts_dining_room, 75, 50310453).
raw_performed(i_p25_a1, participant_dusts_dining_room, 76, 50310890).
raw_performed(i_p25_a1, participant_dusts_living_room, 77, 50314110).
raw_performed(i_p25_a1, participant_dusts_dining_room, 78, 50315752).
raw_performed(i_p25_a1, participant_dusts_dining_room, 79, 50319668).
raw_performed(i_p25_a1, participant_dusts_dining_room, 80, 50321739).
raw_performed(i_p25_a1, participant_dusts_dining_room, 81, 50323140).
raw_performed(i_p25_a1, participant_dusts_dining_room, 82, 50330411).
raw_performed(i_p25_a1, participant_dusts_dining_room, 83, 50331114).
raw_performed(i_p25_a1, participant_dusts_dining_room, 84, 50331762).
raw_performed(i_p25_a1, participant_dusts_living_room, 85, 50332177).
raw_performed(i_p25_a1, participant_dusts_living_room, 86, 50334329).
raw_performed(i_p25_a1, participant_dusts_living_room, 87, 50335039).
raw_performed(i_p25_a1, participant_dusts_living_room, 88, 50338340).
raw_performed(i_p25_a1, participant_dusts_living_room, 89, 50341858).
raw_performed(i_p25_a1, participant_dusts_living_room, 90, 50344601).
raw_performed(i_p25_a1, participant_dusts_living_room, 91, 50366674).
raw_performed(i_p25_a1, participant_dusts_living_room, 92, 50367327).
raw_performed(i_p25_a1, participant_dusts_living_room, 93, 50367367).
raw_performed(i_p25_a1, participant_dusts_living_room, 94, 50373168).
raw_performed(i_p25_a1, participant_dusts_living_room, 95, 50374829).
raw_performed(i_p25_a1, participant_dusts_living_room, 96, 50376621).
raw_performed(i_p25_a1, participant_dusts_living_room, 97, 50379819).
raw_performed(i_p25_a1, participant_dusts_living_room, 98, 50386927).
raw_performed(i_p25_a1, participant_dusts_living_room, 99, 50393322).
raw_performed(i_p25_a1, participant_dusts_living_room, 100, 50395179).
raw_performed(i_p25_a1, participant_dusts_living_room, 101, 50397095).
raw_performed(i_p25_a1, participant_dusts_living_room, 102, 50401737).
raw_performed(i_p25_a1, participant_dusts_living_room, 103, 50408484).
raw_performed(i_p25_a1, participant_dusts_living_room, 104, 50408898).
raw_performed(i_p25_a1, participant_dusts_living_room, 105, 50420903).
raw_performed(i_p25_a1, participant_dusts_living_room, 106, 50424438).
raw_performed(i_p25_a1, participant_dusts_living_room, 107, 50435665).
raw_performed(i_p25_a1, participant_dusts_living_room, 108, 50437601).
raw_performed(i_p25_a1, participant_dusts_living_room, 109, 50438716).
raw_performed(i_p25_a1, participant_dusts_living_room, 110, 50438910).
raw_performed(i_p25_a1, participant_returns_duster_to_supply_closet, 111, 50455613).

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

