% ======================================================================
% Paziente 280
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

instance(i_p280_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p280_a1, participant_retrieves_broom_from_supply_closet, 1, 48498051).
raw_performed(i_p280_a1, participant_retrieves_duster_from_supply_closet, 2, 48498051).
raw_performed(i_p280_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 48498051).
raw_performed(i_p280_a1, participant_sweeps_kitchen_floor, 4, 48511314).
raw_performed(i_p280_a1, participant_sweeps_kitchen_floor, 5, 48516312).
raw_performed(i_p280_a1, participant_sweeps_kitchen_floor, 6, 48522546).
raw_performed(i_p280_a1, participant_sweeps_kitchen_floor, 7, 48527482).
raw_performed(i_p280_a1, participant_uses_dust_pan_and_brush, 8, 48544992).
raw_performed(i_p280_a1, participant_returns_broom_to_supply_closet, 9, 48548762).
raw_performed(i_p280_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 10, 48567384).
raw_performed(i_p280_a1, participant_dusts_dining_room, 11, 48608615).
raw_performed(i_p280_a1, participant_dusts_dining_room, 12, 48608659).
raw_performed(i_p280_a1, participant_dusts_dining_room, 13, 48615429).
raw_performed(i_p280_a1, participant_dusts_dining_room, 14, 48619126).
raw_performed(i_p280_a1, participant_dusts_dining_room, 15, 48629674).
raw_performed(i_p280_a1, participant_dusts_dining_room, 16, 48639554).
raw_performed(i_p280_a1, participant_dusts_dining_room, 17, 48652585).
raw_performed(i_p280_a1, participant_dusts_dining_room, 18, 48656166).
raw_performed(i_p280_a1, participant_dusts_dining_room, 19, 48659192).
raw_performed(i_p280_a1, participant_dusts_dining_room, 20, 48662191).
raw_performed(i_p280_a1, participant_dusts_dining_room, 21, 48669813).
raw_performed(i_p280_a1, participant_dusts_dining_room, 22, 48673501).
raw_performed(i_p280_a1, participant_dusts_dining_room, 23, 48674362).
raw_performed(i_p280_a1, participant_dusts_dining_room, 24, 48677901).
raw_performed(i_p280_a1, participant_dusts_dining_room, 25, 48678335).
raw_performed(i_p280_a1, participant_dusts_dining_room, 26, 48680984).
raw_performed(i_p280_a1, participant_dusts_dining_room, 27, 48689885).
raw_performed(i_p280_a1, participant_dusts_dining_room, 28, 48695786).
raw_performed(i_p280_a1, participant_dusts_dining_room, 29, 48698071).
raw_performed(i_p280_a1, participant_dusts_dining_room, 30, 48698482).
raw_performed(i_p280_a1, participant_dusts_living_room, 31, 48702382).
raw_performed(i_p280_a1, participant_dusts_living_room, 32, 48702407).
raw_performed(i_p280_a1, participant_dusts_living_room, 33, 48703611).
raw_performed(i_p280_a1, participant_dusts_living_room, 34, 48711233).
raw_performed(i_p280_a1, participant_dusts_living_room, 35, 48718743).
raw_performed(i_p280_a1, participant_dusts_living_room, 36, 48720794).
raw_performed(i_p280_a1, participant_dusts_living_room, 37, 48721199).
raw_performed(i_p280_a1, participant_dusts_living_room, 38, 48725203).
raw_performed(i_p280_a1, participant_dusts_living_room, 39, 48732054).
raw_performed(i_p280_a1, participant_dusts_living_room, 40, 48735994).
raw_performed(i_p280_a1, participant_dusts_living_room, 41, 48764140).
raw_performed(i_p280_a1, participant_dusts_living_room, 42, 48790812).
raw_performed(i_p280_a1, participant_dusts_living_room, 43, 48795082).
raw_performed(i_p280_a1, participant_dusts_living_room, 44, 48804838).
raw_performed(i_p280_a1, participant_dusts_living_room, 45, 48825519).
raw_performed(i_p280_a1, participant_dusts_living_room, 46, 48825899).
raw_performed(i_p280_a1, participant_dusts_living_room, 47, 48832829).
raw_performed(i_p280_a1, participant_dusts_living_room, 48, 48834647).
raw_performed(i_p280_a1, participant_dusts_living_room, 49, 48838310).
raw_performed(i_p280_a1, participant_dusts_living_room, 50, 48845365).
raw_performed(i_p280_a1, participant_dusts_living_room, 51, 48848001).
raw_performed(i_p280_a1, participant_dusts_living_room, 52, 48848014).
raw_performed(i_p280_a1, participant_dusts_living_room, 53, 48875847).
raw_performed(i_p280_a1, participant_dusts_living_room, 54, 48879512).
raw_performed(i_p280_a1, participant_dusts_living_room, 55, 48879525).
raw_performed(i_p280_a1, participant_dusts_living_room, 56, 48879538).
raw_performed(i_p280_a1, participant_dusts_living_room, 57, 48888262).
raw_performed(i_p280_a1, participant_dusts_living_room, 58, 48889102).
raw_performed(i_p280_a1, participant_dusts_living_room, 59, 48892133).
raw_performed(i_p280_a1, participant_dusts_living_room, 60, 48896067).
raw_performed(i_p280_a1, participant_dusts_living_room, 61, 48897051).
raw_performed(i_p280_a1, participant_returns_duster_to_supply_closet, 62, 48966012).

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

