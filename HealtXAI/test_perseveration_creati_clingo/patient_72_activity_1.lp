% ======================================================================
% Paziente 72
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

instance(i_p72_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p72_a1, participant_retrieves_broom_from_supply_closet, 1, 34731122).
raw_performed(i_p72_a1, participant_retrieves_duster_from_supply_closet, 2, 34731122).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 3, 34731191).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 4, 34738760).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 5, 34744722).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 6, 34754444).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 7, 34756082).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 8, 34770520).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 9, 34781780).
raw_performed(i_p72_a1, participant_sweeps_kitchen_floor, 10, 34783224).
raw_performed(i_p72_a1, participant_returns_broom_to_supply_closet, 11, 34785639).
raw_performed(i_p72_a1, participant_dusts_dining_room, 12, 34798125).
raw_performed(i_p72_a1, participant_dusts_dining_room, 13, 34798173).
raw_performed(i_p72_a1, participant_dusts_dining_room, 14, 34819651).
raw_performed(i_p72_a1, participant_dusts_dining_room, 15, 34821852).
raw_performed(i_p72_a1, participant_dusts_dining_room, 16, 34829858).
raw_performed(i_p72_a1, participant_dusts_dining_room, 17, 34833587).
raw_performed(i_p72_a1, participant_dusts_dining_room, 18, 34834215).
raw_performed(i_p72_a1, participant_dusts_dining_room, 19, 34845064).
raw_performed(i_p72_a1, participant_dusts_dining_room, 20, 34845088).
raw_performed(i_p72_a1, participant_dusts_dining_room, 21, 34849036).
raw_performed(i_p72_a1, participant_dusts_dining_room, 22, 34849084).
raw_performed(i_p72_a1, participant_dusts_living_room, 23, 34853393).
raw_performed(i_p72_a1, participant_dusts_living_room, 24, 34853441).
raw_performed(i_p72_a1, participant_dusts_dining_room, 25, 34853465).
raw_performed(i_p72_a1, participant_dusts_living_room, 26, 34854213).
raw_performed(i_p72_a1, participant_dusts_living_room, 27, 34857164).
raw_performed(i_p72_a1, participant_dusts_living_room, 28, 34861422).
raw_performed(i_p72_a1, participant_dusts_living_room, 29, 34864322).
raw_performed(i_p72_a1, participant_dusts_living_room, 30, 34865150).
raw_performed(i_p72_a1, participant_dusts_living_room, 31, 34865174).
raw_performed(i_p72_a1, participant_dusts_living_room, 32, 34868676).
raw_performed(i_p72_a1, participant_dusts_living_room, 33, 34870148).
raw_performed(i_p72_a1, participant_dusts_living_room, 34, 34874002).
raw_performed(i_p72_a1, participant_dusts_living_room, 35, 34878108).
raw_performed(i_p72_a1, participant_dusts_living_room, 36, 34879138).
raw_performed(i_p72_a1, participant_dusts_living_room, 37, 34922995).
raw_performed(i_p72_a1, participant_dusts_living_room, 38, 34930234).
raw_performed(i_p72_a1, participant_dusts_living_room, 39, 34948183).
raw_performed(i_p72_a1, participant_dusts_living_room, 40, 34951883).
raw_performed(i_p72_a1, participant_dusts_living_room, 41, 34952485).
raw_performed(i_p72_a1, participant_dusts_living_room, 42, 34959351).
raw_performed(i_p72_a1, participant_dusts_living_room, 43, 34960285).
raw_performed(i_p72_a1, participant_dusts_living_room, 44, 34966958).
raw_performed(i_p72_a1, participant_dusts_living_room, 45, 34968403).
raw_performed(i_p72_a1, participant_dusts_living_room, 46, 34972078).
raw_performed(i_p72_a1, participant_dusts_dining_room, 47, 34972102).
raw_performed(i_p72_a1, participant_dusts_dining_room, 48, 34972224).
raw_performed(i_p72_a1, participant_dusts_dining_room, 49, 34975819).
raw_performed(i_p72_a1, participant_dusts_dining_room, 50, 34979696).
raw_performed(i_p72_a1, participant_dusts_dining_room, 51, 34984278).
raw_performed(i_p72_a1, participant_dusts_dining_room, 52, 34994634).
raw_performed(i_p72_a1, participant_dusts_dining_room, 53, 34999028).
raw_performed(i_p72_a1, participant_dusts_dining_room, 54, 34999537).
raw_performed(i_p72_a1, participant_dusts_living_room, 55, 35003347).
raw_performed(i_p72_a1, participant_dusts_living_room, 56, 35003395).
raw_performed(i_p72_a1, participant_dusts_dining_room, 57, 35003419).
raw_performed(i_p72_a1, participant_dusts_living_room, 58, 35004372).
raw_performed(i_p72_a1, participant_dusts_living_room, 59, 35009334).
raw_performed(i_p72_a1, participant_dusts_dining_room, 60, 35009962).
raw_performed(i_p72_a1, participant_retrieves_dust_pan_and_brush_from_closet, 61, 35017136).
raw_performed(i_p72_a1, participant_returns_duster_to_supply_closet, 62, 35017136).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 63, 35025574).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 64, 35028107).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 65, 35028692).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 66, 35039427).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 67, 35043489).
raw_performed(i_p72_a1, participant_uses_dust_pan_and_brush, 68, 35045201).
raw_performed(i_p72_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 69, 35047570).

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

