% ======================================================================
% Paziente 382
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

instance(i_p382_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p382_a1, participant_retrieves_broom_from_supply_closet, 1, 38622701).
raw_performed(i_p382_a1, participant_retrieves_duster_from_supply_closet, 2, 38622701).
raw_performed(i_p382_a1, participant_dusts_dining_room, 3, 38637617).
raw_performed(i_p382_a1, participant_dusts_dining_room, 4, 38644431).
raw_performed(i_p382_a1, participant_dusts_dining_room, 5, 38647718).
raw_performed(i_p382_a1, participant_dusts_dining_room, 6, 38647742).
raw_performed(i_p382_a1, participant_dusts_dining_room, 7, 38655308).
raw_performed(i_p382_a1, participant_dusts_dining_room, 8, 38658792).
raw_performed(i_p382_a1, participant_dusts_dining_room, 9, 38660044).
raw_performed(i_p382_a1, participant_dusts_dining_room, 10, 38663492).
raw_performed(i_p382_a1, participant_dusts_dining_room, 11, 38663564).
raw_performed(i_p382_a1, participant_dusts_living_room, 12, 38664509).
raw_performed(i_p382_a1, participant_dusts_living_room, 13, 38670343).
raw_performed(i_p382_a1, participant_dusts_living_room, 14, 38671808).
raw_performed(i_p382_a1, participant_dusts_living_room, 15, 38674483).
raw_performed(i_p382_a1, participant_dusts_living_room, 16, 38695497).
raw_performed(i_p382_a1, participant_returns_duster_to_supply_closet, 17, 38699157).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 18, 38699205).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 19, 38707811).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 20, 38710838).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 21, 38714935).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 22, 38718251).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 23, 38722456).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 24, 38729462).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 25, 38733452).
raw_performed(i_p382_a1, participant_sweeps_kitchen_floor, 26, 38734083).
raw_performed(i_p382_a1, participant_returns_broom_to_supply_closet, 27, 38737278).

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

