% ======================================================================
% Paziente 316
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

instance(i_p316_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p316_a1, participant_retrieves_broom_from_supply_closet, 1, 54156184).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 2, 54163741).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 3, 54166139).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 4, 54169720).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 5, 54175337).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 6, 54186498).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 7, 54194887).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 8, 54205373).
raw_performed(i_p316_a1, participant_sweeps_kitchen_floor, 9, 54207030).
raw_performed(i_p316_a1, participant_retrieves_dust_pan_and_brush_from_closet, 10, 54211112).
raw_performed(i_p316_a1, participant_returns_broom_to_supply_closet, 11, 54211112).
raw_performed(i_p316_a1, participant_uses_dust_pan_and_brush, 12, 54224991).
raw_performed(i_p316_a1, participant_uses_dust_pan_and_brush, 13, 54233710).
raw_performed(i_p316_a1, participant_retrieves_duster_from_supply_closet, 14, 54249958).
raw_performed(i_p316_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 15, 54249958).
raw_performed(i_p316_a1, participant_dusts_living_room, 16, 54307572).
raw_performed(i_p316_a1, participant_dusts_living_room, 17, 54334502).
raw_performed(i_p316_a1, participant_dusts_living_room, 18, 54341222).
raw_performed(i_p316_a1, participant_dusts_living_room, 19, 54352942).
raw_performed(i_p316_a1, participant_dusts_living_room, 20, 54354802).
raw_performed(i_p316_a1, participant_dusts_living_room, 21, 54370547).
raw_performed(i_p316_a1, participant_dusts_living_room, 22, 54370571).
raw_performed(i_p316_a1, participant_dusts_living_room, 23, 54371558).
raw_performed(i_p316_a1, participant_dusts_living_room, 24, 54374330).
raw_performed(i_p316_a1, participant_dusts_dining_room, 25, 54377880).
raw_performed(i_p316_a1, participant_dusts_dining_room, 26, 54379127).
raw_performed(i_p316_a1, participant_dusts_dining_room, 27, 54381663).
raw_performed(i_p316_a1, participant_dusts_dining_room, 28, 54386037).
raw_performed(i_p316_a1, participant_dusts_dining_room, 29, 54386061).
raw_performed(i_p316_a1, participant_dusts_dining_room, 30, 54394624).
raw_performed(i_p316_a1, participant_dusts_dining_room, 31, 54403304).
raw_performed(i_p316_a1, participant_dusts_dining_room, 32, 54403665).
raw_performed(i_p316_a1, participant_dusts_dining_room, 33, 54405362).
raw_performed(i_p316_a1, participant_returns_duster_to_supply_closet, 34, 54411884).

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

