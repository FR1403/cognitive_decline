% ======================================================================
% Paziente 201
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

instance(i_p201_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p201_a1, participant_retrieves_broom_from_supply_closet, 1, 32665016).
raw_performed(i_p201_a1, participant_retrieves_duster_from_supply_closet, 2, 32696039).
raw_performed(i_p201_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 32696039).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 4, 32702086).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 5, 32712002).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 6, 32722071).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 7, 32724015).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 8, 32731040).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 9, 32733090).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 10, 32743048).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 11, 32746019).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 12, 32753032).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 13, 32760002).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 14, 32761070).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 15, 32796091).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 16, 32801073).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 17, 32807068).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 18, 32814003).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 19, 32819014).
raw_performed(i_p201_a1, participant_sweeps_kitchen_floor, 20, 32820019).
raw_performed(i_p201_a1, participant_uses_dust_pan_and_brush, 21, 32822048).
raw_performed(i_p201_a1, participant_uses_dust_pan_and_brush, 22, 32826063).
raw_performed(i_p201_a1, participant_returns_broom_to_supply_closet, 23, 32836039).
raw_performed(i_p201_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 24, 32836039).
raw_performed(i_p201_a1, participant_dusts_living_room, 25, 32856084).
raw_performed(i_p201_a1, participant_dusts_living_room, 26, 32865041).
raw_performed(i_p201_a1, participant_dusts_living_room, 27, 32883078).
raw_performed(i_p201_a1, participant_dusts_living_room, 28, 32912076).
raw_performed(i_p201_a1, participant_dusts_living_room, 29, 32916000).
raw_performed(i_p201_a1, participant_dusts_living_room, 30, 32921094).
raw_performed(i_p201_a1, participant_dusts_living_room, 31, 32930008).
raw_performed(i_p201_a1, participant_dusts_living_room, 32, 32930091).
raw_performed(i_p201_a1, participant_dusts_living_room, 33, 32933082).
raw_performed(i_p201_a1, participant_dusts_living_room, 34, 32935028).
raw_performed(i_p201_a1, participant_dusts_living_room, 35, 32936096).
raw_performed(i_p201_a1, participant_dusts_living_room, 36, 32936099).
raw_performed(i_p201_a1, participant_dusts_living_room, 37, 32937080).
raw_performed(i_p201_a1, participant_dusts_dining_room, 38, 32939002).
raw_performed(i_p201_a1, participant_dusts_dining_room, 39, 32939066).
raw_performed(i_p201_a1, participant_dusts_dining_room, 40, 32942019).
raw_performed(i_p201_a1, participant_dusts_dining_room, 41, 32955034).
raw_performed(i_p201_a1, participant_dusts_dining_room, 42, 32963003).
raw_performed(i_p201_a1, participant_dusts_dining_room, 43, 32965011).
raw_performed(i_p201_a1, participant_dusts_dining_room, 44, 32966099).
raw_performed(i_p201_a1, participant_dusts_dining_room, 45, 32970071).
raw_performed(i_p201_a1, participant_dusts_dining_room, 46, 32973063).
raw_performed(i_p201_a1, participant_dusts_dining_room, 47, 32978020).
raw_performed(i_p201_a1, participant_dusts_dining_room, 48, 32979026).
raw_performed(i_p201_a1, participant_dusts_dining_room, 49, 32981077).
raw_performed(i_p201_a1, participant_dusts_dining_room, 50, 32983004).
raw_performed(i_p201_a1, participant_dusts_dining_room, 51, 32993093).
raw_performed(i_p201_a1, participant_dusts_dining_room, 52, 32995038).
raw_performed(i_p201_a1, participant_dusts_dining_room, 53, 32997069).
raw_performed(i_p201_a1, participant_dusts_dining_room, 54, 33001023).
raw_performed(i_p201_a1, participant_dusts_dining_room, 55, 33005022).
raw_performed(i_p201_a1, participant_dusts_dining_room, 56, 33006069).
raw_performed(i_p201_a1, participant_dusts_dining_room, 57, 33010006).
raw_performed(i_p201_a1, participant_dusts_dining_room, 58, 33013075).
raw_performed(i_p201_a1, participant_returns_duster_to_supply_closet, 59, 33018012).

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

