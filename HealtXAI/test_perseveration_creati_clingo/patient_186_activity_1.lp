% ======================================================================
% Paziente 186
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

instance(i_p186_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p186_a1, participant_retrieves_broom_from_supply_closet, 1, 31621020).
raw_performed(i_p186_a1, participant_retrieves_duster_from_supply_closet, 2, 31621020).
raw_performed(i_p186_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 31621020).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 4, 31632044).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 5, 31632044).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 6, 31640037).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 7, 31640037).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 8, 31647004).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 9, 31647004).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 10, 31654046).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 11, 31654046).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 12, 31663078).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 13, 31663078).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 14, 31670029).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 15, 31670029).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 16, 31674086).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 17, 31674086).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 18, 31709021).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 19, 31709021).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 20, 31719082).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 21, 31719082).
raw_performed(i_p186_a1, participant_sweeps_kitchen_floor, 22, 31722073).
raw_performed(i_p186_a1, participant_uses_dust_pan_and_brush, 23, 31722073).
raw_performed(i_p186_a1, participant_returns_broom_to_supply_closet, 24, 31723078).
raw_performed(i_p186_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 25, 31723078).
raw_performed(i_p186_a1, participant_dusts_dining_room, 26, 31758059).
raw_performed(i_p186_a1, participant_dusts_dining_room, 27, 31763002).
raw_performed(i_p186_a1, participant_dusts_dining_room, 28, 31771077).
raw_performed(i_p186_a1, participant_dusts_dining_room, 29, 31776081).
raw_performed(i_p186_a1, participant_dusts_living_room, 30, 31777043).
raw_performed(i_p186_a1, participant_dusts_living_room, 31, 31778008).
raw_performed(i_p186_a1, participant_dusts_living_room, 32, 31779054).
raw_performed(i_p186_a1, participant_dusts_living_room, 33, 31786086).
raw_performed(i_p186_a1, participant_dusts_living_room, 34, 31802021).
raw_performed(i_p186_a1, participant_dusts_living_room, 35, 31805077).
raw_performed(i_p186_a1, participant_dusts_living_room, 36, 31810078).
raw_performed(i_p186_a1, participant_dusts_living_room, 37, 31812064).
raw_performed(i_p186_a1, participant_dusts_living_room, 38, 31813026).
raw_performed(i_p186_a1, participant_dusts_dining_room, 39, 31815057).
raw_performed(i_p186_a1, participant_dusts_dining_room, 40, 31816060).
raw_performed(i_p186_a1, participant_dusts_dining_room, 41, 31818048).
raw_performed(i_p186_a1, participant_dusts_dining_room, 42, 31819077).
raw_performed(i_p186_a1, participant_dusts_dining_room, 43, 31825075).
raw_performed(i_p186_a1, participant_dusts_dining_room, 44, 31826039).
raw_performed(i_p186_a1, participant_dusts_dining_room, 45, 31828007).
raw_performed(i_p186_a1, participant_returns_duster_to_supply_closet, 46, 31846022).

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

