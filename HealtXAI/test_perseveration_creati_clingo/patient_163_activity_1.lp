% ======================================================================
% Paziente 163
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

instance(i_p163_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p163_a1, participant_retrieves_broom_from_supply_closet, 1, 51347011).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 2, 51359066).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 3, 51372020).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 4, 51382028).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 5, 51389044).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 6, 51392039).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 7, 51400094).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 8, 51407087).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 9, 51417048).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 10, 51427062).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 11, 51430056).
raw_performed(i_p163_a1, participant_sweeps_kitchen_floor, 12, 51434050).
raw_performed(i_p163_a1, participant_returns_broom_to_supply_closet, 13, 51435058).
raw_performed(i_p163_a1, participant_retrieves_dust_pan_and_brush_from_closet, 14, 51442027).
raw_performed(i_p163_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 15, 51465049).
raw_performed(i_p163_a1, participant_retrieves_duster_from_supply_closet, 16, 51479064).
raw_performed(i_p163_a1, participant_dusts_dining_room, 17, 51590079).
raw_performed(i_p163_a1, participant_dusts_dining_room, 18, 51605095).
raw_performed(i_p163_a1, participant_dusts_dining_room, 19, 51610044).
raw_performed(i_p163_a1, participant_dusts_dining_room, 20, 51610049).
raw_performed(i_p163_a1, participant_dusts_dining_room, 21, 51612073).
raw_performed(i_p163_a1, participant_dusts_dining_room, 22, 51617008).
raw_performed(i_p163_a1, participant_dusts_dining_room, 23, 51626032).
raw_performed(i_p163_a1, participant_dusts_dining_room, 24, 51646002).
raw_performed(i_p163_a1, participant_dusts_dining_room, 25, 51648034).
raw_performed(i_p163_a1, participant_dusts_dining_room, 26, 51652014).
raw_performed(i_p163_a1, participant_dusts_dining_room, 27, 51657014).
raw_performed(i_p163_a1, participant_dusts_dining_room, 28, 51662071).
raw_performed(i_p163_a1, participant_dusts_dining_room, 29, 51663076).
raw_performed(i_p163_a1, participant_dusts_dining_room, 30, 51669003).
raw_performed(i_p163_a1, participant_dusts_dining_room, 31, 51672049).
raw_performed(i_p163_a1, participant_dusts_dining_room, 32, 51675046).
raw_performed(i_p163_a1, participant_dusts_dining_room, 33, 51675049).
raw_performed(i_p163_a1, participant_dusts_dining_room, 34, 51677051).
raw_performed(i_p163_a1, participant_dusts_dining_room, 35, 51682075).
raw_performed(i_p163_a1, participant_dusts_living_room, 36, 51683080).
raw_performed(i_p163_a1, participant_dusts_living_room, 37, 51684043).
raw_performed(i_p163_a1, participant_dusts_living_room, 38, 51690004).
raw_performed(i_p163_a1, participant_dusts_living_room, 39, 51713000).
raw_performed(i_p163_a1, participant_dusts_living_room, 40, 51718029).
raw_performed(i_p163_a1, participant_dusts_living_room, 41, 51762014).
raw_performed(i_p163_a1, participant_dusts_living_room, 42, 51770021).
raw_performed(i_p163_a1, participant_dusts_living_room, 43, 51780041).
raw_performed(i_p163_a1, participant_dusts_living_room, 44, 51806065).
raw_performed(i_p163_a1, participant_dusts_living_room, 45, 51806068).
raw_performed(i_p163_a1, participant_dusts_living_room, 46, 51814035).
raw_performed(i_p163_a1, participant_dusts_living_room, 47, 51818098).
raw_performed(i_p163_a1, participant_dusts_living_room, 48, 51819060).
raw_performed(i_p163_a1, participant_dusts_living_room, 49, 51824078).
raw_performed(i_p163_a1, participant_dusts_living_room, 50, 51825004).
raw_performed(i_p163_a1, participant_dusts_living_room, 51, 51826091).
raw_performed(i_p163_a1, participant_dusts_living_room, 52, 51827055).
raw_performed(i_p163_a1, participant_returns_duster_to_supply_closet, 53, 51839050).

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

