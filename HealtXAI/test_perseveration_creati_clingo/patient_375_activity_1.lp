% ======================================================================
% Paziente 375
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

instance(i_p375_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p375_a1, participant_retrieves_broom_from_supply_closet, 1, 49206780).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 2, 49214885).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 3, 49218350).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 4, 49221217).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 5, 49230044).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 6, 49246204).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 7, 49247279).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 8, 49256201).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 9, 49257496).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 10, 49267053).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 11, 49268136).
raw_performed(i_p375_a1, participant_sweeps_kitchen_floor, 12, 49272325).
raw_performed(i_p375_a1, participant_retrieves_duster_from_supply_closet, 13, 49283056).
raw_performed(i_p375_a1, participant_retrieves_dust_pan_and_brush_from_closet, 14, 49285026).
raw_performed(i_p375_a1, participant_uses_dust_pan_and_brush, 15, 49285873).
raw_performed(i_p375_a1, participant_uses_dust_pan_and_brush, 16, 49287616).
raw_performed(i_p375_a1, participant_returns_broom_to_supply_closet, 17, 49288147).
raw_performed(i_p375_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 18, 49288925).
raw_performed(i_p375_a1, participant_dusts_living_room, 19, 49300290).
raw_performed(i_p375_a1, participant_dusts_living_room, 20, 49306044).
raw_performed(i_p375_a1, participant_dusts_living_room, 21, 49333199).
raw_performed(i_p375_a1, participant_dusts_living_room, 22, 49337676).
raw_performed(i_p375_a1, participant_dusts_living_room, 23, 49358308).
raw_performed(i_p375_a1, participant_dusts_living_room, 24, 49359609).
raw_performed(i_p375_a1, participant_dusts_living_room, 25, 49366914).
raw_performed(i_p375_a1, participant_dusts_living_room, 26, 49368400).
raw_performed(i_p375_a1, participant_dusts_living_room, 27, 49369442).
raw_performed(i_p375_a1, participant_dusts_dining_room, 28, 49370719).
raw_performed(i_p375_a1, participant_dusts_dining_room, 29, 49373890).
raw_performed(i_p375_a1, participant_dusts_dining_room, 30, 49373927).
raw_performed(i_p375_a1, participant_dusts_dining_room, 31, 49378882).
raw_performed(i_p375_a1, participant_dusts_dining_room, 32, 49382300).
raw_performed(i_p375_a1, participant_dusts_dining_room, 33, 49386985).
raw_performed(i_p375_a1, participant_dusts_dining_room, 34, 49387846).
raw_performed(i_p375_a1, participant_dusts_dining_room, 35, 49396184).
raw_performed(i_p375_a1, participant_dusts_dining_room, 36, 49406199).
raw_performed(i_p375_a1, participant_dusts_dining_room, 37, 49406819).
raw_performed(i_p375_a1, participant_dusts_dining_room, 38, 49413649).
raw_performed(i_p375_a1, participant_dusts_dining_room, 39, 49419249).
raw_performed(i_p375_a1, participant_returns_duster_to_supply_closet, 40, 49441269).

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

