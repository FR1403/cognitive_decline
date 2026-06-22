% ======================================================================
% Paziente 5
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
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 39091).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321534).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 141540).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504615).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 205578).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p5_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p5_a1, participant_retrieves_broom_from_supply_closet, 1, 40177836).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 2, 40177908).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 3, 40206284).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 4, 40217363).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 5, 40224278).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 6, 40229871).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 7, 40239651).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 8, 40251421).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 9, 40280431).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 10, 40296048).
raw_performed(i_p5_a1, participant_sweeps_kitchen_floor, 11, 40307773).
raw_performed(i_p5_a1, participant_retrieves_dust_pan_and_brush_from_closet, 12, 40309862).
raw_performed(i_p5_a1, participant_returns_broom_to_supply_closet, 13, 40309862).
raw_performed(i_p5_a1, participant_uses_dust_pan_and_brush, 14, 40318671).
raw_performed(i_p5_a1, participant_uses_dust_pan_and_brush, 15, 40321231).
raw_performed(i_p5_a1, participant_uses_dust_pan_and_brush, 16, 40331285).
raw_performed(i_p5_a1, participant_uses_dust_pan_and_brush, 17, 40338872).
raw_performed(i_p5_a1, participant_uses_dust_pan_and_brush, 18, 40345922).
raw_performed(i_p5_a1, participant_retrieves_duster_from_supply_closet, 19, 40354691).
raw_performed(i_p5_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 20, 40354691).
raw_performed(i_p5_a1, participant_dusts_dining_room, 21, 40407435).
raw_performed(i_p5_a1, participant_dusts_dining_room, 22, 40414431).
raw_performed(i_p5_a1, participant_dusts_dining_room, 23, 40415061).
raw_performed(i_p5_a1, participant_dusts_dining_room, 24, 40425778).
raw_performed(i_p5_a1, participant_dusts_dining_room, 25, 40426411).
raw_performed(i_p5_a1, participant_dusts_dining_room, 26, 40431050).
raw_performed(i_p5_a1, participant_dusts_dining_room, 27, 40458051).
raw_performed(i_p5_a1, participant_dusts_dining_room, 28, 40461934).
raw_performed(i_p5_a1, participant_dusts_dining_room, 29, 40465313).
raw_performed(i_p5_a1, participant_dusts_dining_room, 30, 40473732).
raw_performed(i_p5_a1, participant_dusts_dining_room, 31, 40477281).
raw_performed(i_p5_a1, participant_dusts_dining_room, 32, 40477912).
raw_performed(i_p5_a1, participant_dusts_dining_room, 33, 40478802).
raw_performed(i_p5_a1, participant_dusts_dining_room, 34, 40500584).
raw_performed(i_p5_a1, participant_dusts_dining_room, 35, 40505579).
raw_performed(i_p5_a1, participant_dusts_dining_room, 36, 40515364).
raw_performed(i_p5_a1, participant_dusts_dining_room, 37, 40517175).
raw_performed(i_p5_a1, participant_dusts_dining_room, 38, 40521613).
raw_performed(i_p5_a1, participant_dusts_dining_room, 39, 40522168).
raw_performed(i_p5_a1, participant_dusts_dining_room, 40, 40525312).
raw_performed(i_p5_a1, participant_dusts_living_room, 41, 40526694).
raw_performed(i_p5_a1, participant_dusts_living_room, 42, 40530751).
raw_performed(i_p5_a1, participant_dusts_living_room, 43, 40533679).
raw_performed(i_p5_a1, participant_dusts_living_room, 44, 40537453).
raw_performed(i_p5_a1, participant_dusts_living_room, 45, 40540444).
raw_performed(i_p5_a1, participant_dusts_living_room, 46, 40553659).
raw_performed(i_p5_a1, participant_dusts_living_room, 47, 40563449).
raw_performed(i_p5_a1, participant_dusts_living_room, 48, 40565332).
raw_performed(i_p5_a1, participant_dusts_living_room, 49, 40567612).
raw_performed(i_p5_a1, participant_dusts_living_room, 50, 40568718).
raw_performed(i_p5_a1, participant_dusts_living_room, 51, 40580710).
raw_performed(i_p5_a1, participant_dusts_living_room, 52, 40584491).
raw_performed(i_p5_a1, participant_dusts_living_room, 53, 40585120).
raw_performed(i_p5_a1, participant_dusts_living_room, 54, 40592772).
raw_performed(i_p5_a1, participant_dusts_living_room, 55, 40611652).
raw_performed(i_p5_a1, participant_dusts_living_room, 56, 40646852).
raw_performed(i_p5_a1, participant_dusts_living_room, 57, 40696301).
raw_performed(i_p5_a1, participant_dusts_living_room, 58, 40707211).
raw_performed(i_p5_a1, participant_dusts_living_room, 59, 40715971).
raw_performed(i_p5_a1, participant_dusts_living_room, 60, 40719980).
raw_performed(i_p5_a1, participant_dusts_living_room, 61, 40725528).
raw_performed(i_p5_a1, participant_dusts_living_room, 62, 40733372).
raw_performed(i_p5_a1, participant_dusts_living_room, 63, 40735411).
raw_performed(i_p5_a1, participant_dusts_living_room, 64, 40741042).
raw_performed(i_p5_a1, participant_dusts_living_room, 65, 40743194).
raw_performed(i_p5_a1, participant_returns_duster_to_supply_closet, 66, 40749414).

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

