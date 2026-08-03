% ======================================================================
% Paziente 87
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

instance(i_p87_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p87_a1, participant_retrieves_broom_from_supply_closet, 1, 31989036).
raw_performed(i_p87_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 31989036).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 3, 32007044).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 4, 32011004).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 5, 32019006).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 6, 32021096).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 7, 32025027).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 8, 32044057).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 9, 32051086).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 10, 32053011).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 11, 32060045).
raw_performed(i_p87_a1, participant_sweeps_kitchen_floor, 12, 32070026).
raw_performed(i_p87_a1, participant_uses_dust_pan_and_brush, 13, 32076016).
raw_performed(i_p87_a1, participant_uses_dust_pan_and_brush, 14, 32079045).
raw_performed(i_p87_a1, participant_uses_dust_pan_and_brush, 15, 32094048).
raw_performed(i_p87_a1, participant_uses_dust_pan_and_brush, 16, 32097004).
raw_performed(i_p87_a1, participant_returns_broom_to_supply_closet, 17, 32100001).
raw_performed(i_p87_a1, participant_retrieves_duster_from_supply_closet, 18, 32130016).
raw_performed(i_p87_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 19, 32130016).
raw_performed(i_p87_a1, participant_dusts_dining_room, 20, 32137090).
raw_performed(i_p87_a1, participant_dusts_dining_room, 21, 32142089).
raw_performed(i_p87_a1, participant_dusts_dining_room, 22, 32155013).
raw_performed(i_p87_a1, participant_dusts_dining_room, 23, 32156056).
raw_performed(i_p87_a1, participant_dusts_dining_room, 24, 32163046).
raw_performed(i_p87_a1, participant_dusts_dining_room, 25, 32170053).
raw_performed(i_p87_a1, participant_dusts_dining_room, 26, 32174001).
raw_performed(i_p87_a1, participant_dusts_dining_room, 27, 32177007).
raw_performed(i_p87_a1, participant_dusts_dining_room, 28, 32182058).
raw_performed(i_p87_a1, participant_dusts_dining_room, 29, 32183060).
raw_performed(i_p87_a1, participant_dusts_dining_room, 30, 32185006).
raw_performed(i_p87_a1, participant_dusts_dining_room, 31, 32186009).
raw_performed(i_p87_a1, participant_dusts_dining_room, 32, 32187075).
raw_performed(i_p87_a1, participant_dusts_dining_room, 33, 32191005).
raw_performed(i_p87_a1, participant_dusts_dining_room, 34, 32194045).
raw_performed(i_p87_a1, participant_dusts_living_room, 35, 32199085).
raw_performed(i_p87_a1, participant_dusts_living_room, 36, 32200049).
raw_performed(i_p87_a1, participant_dusts_living_room, 37, 32201009).
raw_performed(i_p87_a1, participant_dusts_living_room, 38, 32212000).
raw_performed(i_p87_a1, participant_dusts_living_room, 39, 32220065).
raw_performed(i_p87_a1, participant_dusts_living_room, 40, 32222031).
raw_performed(i_p87_a1, participant_dusts_living_room, 41, 32226006).
raw_performed(i_p87_a1, participant_dusts_living_room, 42, 32231002).
raw_performed(i_p87_a1, participant_dusts_living_room, 43, 32267040).
raw_performed(i_p87_a1, participant_dusts_living_room, 44, 32274014).
raw_performed(i_p87_a1, participant_dusts_living_room, 45, 32278053).
raw_performed(i_p87_a1, participant_dusts_living_room, 46, 32278056).
raw_performed(i_p87_a1, participant_returns_duster_to_supply_closet, 47, 32286002).

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

