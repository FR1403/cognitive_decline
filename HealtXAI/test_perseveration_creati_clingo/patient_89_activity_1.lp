% ======================================================================
% Paziente 89
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

instance(i_p89_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p89_a1, participant_retrieves_broom_from_supply_closet, 1, 33597001).
raw_performed(i_p89_a1, participant_retrieves_duster_from_supply_closet, 2, 33597001).
raw_performed(i_p89_a1, participant_dusts_dining_room, 3, 33615070).
raw_performed(i_p89_a1, participant_dusts_dining_room, 4, 33624006).
raw_performed(i_p89_a1, participant_dusts_dining_room, 5, 33630014).
raw_performed(i_p89_a1, participant_dusts_dining_room, 6, 33632069).
raw_performed(i_p89_a1, participant_dusts_dining_room, 7, 33638074).
raw_performed(i_p89_a1, participant_dusts_dining_room, 8, 33644055).
raw_performed(i_p89_a1, participant_dusts_dining_room, 9, 33651022).
raw_performed(i_p89_a1, participant_dusts_living_room, 10, 33651084).
raw_performed(i_p89_a1, participant_dusts_living_room, 11, 33652089).
raw_performed(i_p89_a1, participant_dusts_living_room, 12, 33653077).
raw_performed(i_p89_a1, participant_dusts_living_room, 13, 33655064).
raw_performed(i_p89_a1, participant_dusts_living_room, 14, 33658015).
raw_performed(i_p89_a1, participant_dusts_living_room, 15, 33662028).
raw_performed(i_p89_a1, participant_dusts_living_room, 16, 33662092).
raw_performed(i_p89_a1, participant_dusts_living_room, 17, 33664073).
raw_performed(i_p89_a1, participant_dusts_living_room, 18, 33665034).
raw_performed(i_p89_a1, participant_dusts_living_room, 19, 33672038).
raw_performed(i_p89_a1, participant_dusts_living_room, 20, 33674070).
raw_performed(i_p89_a1, participant_dusts_living_room, 21, 33676038).
raw_performed(i_p89_a1, participant_dusts_living_room, 22, 33677004).
raw_performed(i_p89_a1, participant_dusts_living_room, 23, 33682003).
raw_performed(i_p89_a1, participant_dusts_living_room, 24, 33683050).
raw_performed(i_p89_a1, participant_dusts_living_room, 25, 33700057).
raw_performed(i_p89_a1, participant_dusts_living_room, 26, 33707061).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 27, 33712039).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 28, 33723001).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 29, 33726010).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 30, 33739001).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 31, 33744042).
raw_performed(i_p89_a1, participant_sweeps_kitchen_floor, 32, 33758086).
raw_performed(i_p89_a1, participant_retrieves_dust_pan_and_brush_from_closet, 33, 33775057).
raw_performed(i_p89_a1, participant_returns_broom_to_supply_closet, 34, 33775057).
raw_performed(i_p89_a1, participant_returns_duster_to_supply_closet, 35, 33775057).
raw_performed(i_p89_a1, participant_uses_dust_pan_and_brush, 36, 33793066).
raw_performed(i_p89_a1, participant_uses_dust_pan_and_brush, 37, 33802026).
raw_performed(i_p89_a1, participant_uses_dust_pan_and_brush, 38, 33803007).
raw_performed(i_p89_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 39, 33806012).

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

