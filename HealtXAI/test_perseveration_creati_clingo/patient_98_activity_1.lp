% ======================================================================
% Paziente 98
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

instance(i_p98_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p98_a1, participant_retrieves_broom_from_supply_closet, 1, 48522966).
raw_performed(i_p98_a1, participant_retrieves_broom_from_supply_closet, 2, 48526648).
raw_performed(i_p98_a1, participant_retrieves_duster_from_supply_closet, 3, 48532851).
raw_performed(i_p98_a1, participant_retrieves_broom_from_supply_closet, 4, 48535726).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 5, 48538977).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 6, 48544851).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 7, 48544882).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 8, 48548379).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 9, 48551392).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 10, 48552295).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 11, 48554392).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 12, 48574216).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 13, 48583810).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 14, 48584748).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 15, 48587190).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 16, 48592641).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 17, 48594110).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 18, 48602935).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 19, 48604794).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 20, 48606378).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 21, 48607227).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 22, 48613072).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 23, 48614931).
raw_performed(i_p98_a1, participant_sweeps_kitchen_floor, 24, 48615701).
raw_performed(i_p98_a1, participant_retrieves_dust_pan_and_brush_from_closet, 25, 48620361).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 26, 48622780).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 27, 48625987).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 28, 48631571).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 29, 48633131).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 30, 48636094).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 31, 48636163).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 32, 48637814).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 33, 48640613).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 34, 48646155).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 35, 48650384).
raw_performed(i_p98_a1, participant_uses_dust_pan_and_brush, 36, 48651665).
raw_performed(i_p98_a1, participant_returns_broom_to_supply_closet, 37, 48656375).
raw_performed(i_p98_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 38, 48658451).
raw_performed(i_p98_a1, participant_returns_broom_to_supply_closet, 39, 48662339).
raw_performed(i_p98_a1, participant_returns_broom_to_supply_closet, 40, 48664983).
raw_performed(i_p98_a1, participant_dusts_dining_room, 41, 48672499).
raw_performed(i_p98_a1, participant_dusts_living_room, 42, 48672705).
raw_performed(i_p98_a1, participant_dusts_living_room, 43, 48673384).
raw_performed(i_p98_a1, participant_dusts_living_room, 44, 48673878).
raw_performed(i_p98_a1, participant_dusts_living_room, 45, 48676446).
raw_performed(i_p98_a1, participant_dusts_living_room, 46, 48683780).
raw_performed(i_p98_a1, participant_dusts_living_room, 47, 48685623).
raw_performed(i_p98_a1, participant_dusts_living_room, 48, 48689575).
raw_performed(i_p98_a1, participant_dusts_living_room, 49, 48700835).
raw_performed(i_p98_a1, participant_dusts_living_room, 50, 48703177).
raw_performed(i_p98_a1, participant_dusts_living_room, 51, 48705048).
raw_performed(i_p98_a1, participant_dusts_living_room, 52, 48705119).
raw_performed(i_p98_a1, participant_dusts_living_room, 53, 48706352).
raw_performed(i_p98_a1, participant_dusts_living_room, 54, 48708823).
raw_performed(i_p98_a1, participant_dusts_living_room, 55, 48711049).
raw_performed(i_p98_a1, participant_dusts_living_room, 56, 48711589).
raw_performed(i_p98_a1, participant_dusts_living_room, 57, 48712707).
raw_performed(i_p98_a1, participant_dusts_living_room, 58, 48715676).
raw_performed(i_p98_a1, participant_dusts_living_room, 59, 48719088).
raw_performed(i_p98_a1, participant_dusts_living_room, 60, 48719645).
raw_performed(i_p98_a1, participant_dusts_living_room, 61, 48722273).
raw_performed(i_p98_a1, participant_dusts_living_room, 62, 48724075).
raw_performed(i_p98_a1, participant_dusts_living_room, 63, 48724918).
raw_performed(i_p98_a1, participant_dusts_living_room, 64, 48725423).
raw_performed(i_p98_a1, participant_dusts_living_room, 65, 48727116).
raw_performed(i_p98_a1, participant_dusts_living_room, 66, 48727670).
raw_performed(i_p98_a1, participant_dusts_living_room, 67, 48727790).
raw_performed(i_p98_a1, participant_dusts_dining_room, 68, 48728342).
raw_performed(i_p98_a1, participant_dusts_dining_room, 69, 48729133).
raw_performed(i_p98_a1, participant_dusts_dining_room, 70, 48729814).
raw_performed(i_p98_a1, participant_dusts_dining_room, 71, 48731266).
raw_performed(i_p98_a1, participant_dusts_dining_room, 72, 48732268).
raw_performed(i_p98_a1, participant_dusts_dining_room, 73, 48733796).
raw_performed(i_p98_a1, participant_dusts_dining_room, 74, 48744655).
raw_performed(i_p98_a1, participant_dusts_dining_room, 75, 48746291).
raw_performed(i_p98_a1, participant_dusts_dining_room, 76, 48748774).
raw_performed(i_p98_a1, participant_dusts_dining_room, 77, 48749230).
raw_performed(i_p98_a1, participant_dusts_dining_room, 78, 48754021).
raw_performed(i_p98_a1, participant_dusts_dining_room, 79, 48758899).
raw_performed(i_p98_a1, participant_dusts_dining_room, 80, 48760675).
raw_performed(i_p98_a1, participant_dusts_dining_room, 81, 48762101).
raw_performed(i_p98_a1, participant_dusts_dining_room, 82, 48765838).
raw_performed(i_p98_a1, participant_dusts_dining_room, 83, 48772706).
raw_performed(i_p98_a1, participant_dusts_dining_room, 84, 48777385).
raw_performed(i_p98_a1, participant_dusts_dining_room, 85, 48782965).
raw_performed(i_p98_a1, participant_dusts_dining_room, 86, 48792332).
raw_performed(i_p98_a1, participant_dusts_dining_room, 87, 48793797).
raw_performed(i_p98_a1, participant_dusts_dining_room, 88, 48794784).
raw_performed(i_p98_a1, participant_dusts_dining_room, 89, 48796457).
raw_performed(i_p98_a1, participant_dusts_dining_room, 90, 48797307).
raw_performed(i_p98_a1, participant_dusts_dining_room, 91, 48800008).
raw_performed(i_p98_a1, participant_dusts_living_room, 92, 48800189).
raw_performed(i_p98_a1, participant_dusts_living_room, 93, 48800764).
raw_performed(i_p98_a1, participant_dusts_living_room, 94, 48801016).
raw_performed(i_p98_a1, participant_dusts_living_room, 95, 48801505).
raw_performed(i_p98_a1, participant_dusts_living_room, 96, 48802726).
raw_performed(i_p98_a1, participant_dusts_living_room, 97, 48803461).
raw_performed(i_p98_a1, participant_dusts_living_room, 98, 48804264).
raw_performed(i_p98_a1, participant_dusts_living_room, 99, 48806878).
raw_performed(i_p98_a1, participant_dusts_living_room, 100, 48813211).
raw_performed(i_p98_a1, participant_dusts_living_room, 101, 48814948).
raw_performed(i_p98_a1, participant_dusts_living_room, 102, 48815347).
raw_performed(i_p98_a1, participant_dusts_living_room, 103, 48820007).
raw_performed(i_p98_a1, participant_dusts_living_room, 104, 48826575).
raw_performed(i_p98_a1, participant_dusts_dining_room, 105, 48826710).
raw_performed(i_p98_a1, participant_dusts_living_room, 106, 48829034).
raw_performed(i_p98_a1, participant_dusts_living_room, 107, 48829709).
raw_performed(i_p98_a1, participant_dusts_living_room, 108, 48831165).
raw_performed(i_p98_a1, participant_dusts_living_room, 109, 48831776).
raw_performed(i_p98_a1, participant_dusts_living_room, 110, 48834243).
raw_performed(i_p98_a1, participant_dusts_living_room, 111, 48834421).
raw_performed(i_p98_a1, participant_dusts_living_room, 112, 48835431).
raw_performed(i_p98_a1, participant_dusts_dining_room, 113, 48835948).
raw_performed(i_p98_a1, participant_returns_duster_to_supply_closet, 114, 48841025).
raw_performed(i_p98_a1, participant_returns_duster_to_supply_closet, 115, 48845051).
raw_performed(i_p98_a1, participant_returns_duster_to_supply_closet, 116, 48848721).

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

