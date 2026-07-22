% ======================================================================
% Paziente 140
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

instance(i_p140_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p140_a1, participant_retrieves_broom_from_supply_closet, 1, 50841015).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 2, 50846566).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 3, 50847179).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 4, 50849079).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 5, 50852647).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 6, 50854385).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 7, 50862615).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 8, 50870658).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 9, 50875442).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 10, 50881091).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 11, 50898180).
raw_performed(i_p140_a1, participant_sweeps_kitchen_floor, 12, 50898854).
raw_performed(i_p140_a1, participant_retrieves_dust_pan_and_brush_from_closet, 13, 50902832).
raw_performed(i_p140_a1, participant_uses_dust_pan_and_brush, 14, 50903633).
raw_performed(i_p140_a1, participant_uses_dust_pan_and_brush, 15, 50905417).
raw_performed(i_p140_a1, participant_returns_broom_to_supply_closet, 16, 50982626).
raw_performed(i_p140_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 51016533).
raw_performed(i_p140_a1, participant_dusts_dining_room, 18, 51028687).
raw_performed(i_p140_a1, participant_dusts_dining_room, 19, 51036506).
raw_performed(i_p140_a1, participant_dusts_dining_room, 20, 51044522).
raw_performed(i_p140_a1, participant_dusts_dining_room, 21, 51057991).
raw_performed(i_p140_a1, participant_dusts_dining_room, 22, 51062311).
raw_performed(i_p140_a1, participant_dusts_dining_room, 23, 51062706).
raw_performed(i_p140_a1, participant_dusts_dining_room, 24, 51070777).
raw_performed(i_p140_a1, participant_dusts_dining_room, 25, 51086147).
raw_performed(i_p140_a1, participant_dusts_dining_room, 26, 51090615).
raw_performed(i_p140_a1, participant_dusts_dining_room, 27, 51092574).
raw_performed(i_p140_a1, participant_dusts_dining_room, 28, 51095282).
raw_performed(i_p140_a1, participant_dusts_dining_room, 29, 51097841).
raw_performed(i_p140_a1, participant_dusts_living_room, 30, 51100665).
raw_performed(i_p140_a1, participant_dusts_living_room, 31, 51108215).
raw_performed(i_p140_a1, participant_dusts_living_room, 32, 51112272).
raw_performed(i_p140_a1, participant_dusts_living_room, 33, 51112903).
raw_performed(i_p140_a1, participant_dusts_living_room, 34, 51120947).
raw_performed(i_p140_a1, participant_dusts_living_room, 35, 51130391).
raw_performed(i_p140_a1, participant_dusts_living_room, 36, 51131449).
raw_performed(i_p140_a1, participant_dusts_living_room, 37, 51132526).
raw_performed(i_p140_a1, participant_dusts_living_room, 38, 51133348).
raw_performed(i_p140_a1, participant_dusts_living_room, 39, 51133950).
raw_performed(i_p140_a1, participant_dusts_dining_room, 40, 51134706).
raw_performed(i_p140_a1, participant_dusts_dining_room, 41, 51136954).
raw_performed(i_p140_a1, participant_dusts_dining_room, 42, 51138162).
raw_performed(i_p140_a1, participant_dusts_dining_room, 43, 51138179).
raw_performed(i_p140_a1, participant_dusts_dining_room, 44, 51144443).
raw_performed(i_p140_a1, participant_dusts_dining_room, 45, 51145166).
raw_performed(i_p140_a1, participant_dusts_dining_room, 46, 51147238).
raw_performed(i_p140_a1, participant_dusts_living_room, 47, 51148597).
raw_performed(i_p140_a1, participant_dusts_living_room, 48, 51149821).
raw_performed(i_p140_a1, participant_dusts_living_room, 49, 51150595).
raw_performed(i_p140_a1, participant_dusts_living_room, 50, 51151126).
raw_performed(i_p140_a1, participant_dusts_living_room, 51, 51152779).
raw_performed(i_p140_a1, participant_dusts_living_room, 52, 51153564).
raw_performed(i_p140_a1, participant_dusts_living_room, 53, 51158349).
raw_performed(i_p140_a1, participant_dusts_living_room, 54, 51158783).
raw_performed(i_p140_a1, participant_dusts_living_room, 55, 51164996).
raw_performed(i_p140_a1, participant_dusts_living_room, 56, 51168152).
raw_performed(i_p140_a1, participant_dusts_living_room, 57, 51232823).
raw_performed(i_p140_a1, participant_dusts_living_room, 58, 51249478).
raw_performed(i_p140_a1, participant_dusts_living_room, 59, 51264722).
raw_performed(i_p140_a1, participant_dusts_living_room, 60, 51282170).
raw_performed(i_p140_a1, participant_dusts_living_room, 61, 51283018).
raw_performed(i_p140_a1, participant_dusts_living_room, 62, 51299533).
raw_performed(i_p140_a1, participant_dusts_living_room, 63, 51302565).
raw_performed(i_p140_a1, participant_dusts_living_room, 64, 51303176).
raw_performed(i_p140_a1, participant_dusts_living_room, 65, 51309751).
raw_performed(i_p140_a1, participant_dusts_living_room, 66, 51310590).
raw_performed(i_p140_a1, participant_dusts_dining_room, 67, 51311741).
raw_performed(i_p140_a1, participant_dusts_dining_room, 68, 51313192).
raw_performed(i_p140_a1, participant_dusts_dining_room, 69, 51313583).
raw_performed(i_p140_a1, participant_dusts_dining_room, 70, 51318283).
raw_performed(i_p140_a1, participant_dusts_dining_room, 71, 51319778).
raw_performed(i_p140_a1, participant_dusts_dining_room, 72, 51321718).
raw_performed(i_p140_a1, participant_dusts_dining_room, 73, 51331695).
raw_performed(i_p140_a1, participant_dusts_dining_room, 74, 51332774).
raw_performed(i_p140_a1, participant_dusts_dining_room, 75, 51337386).
raw_performed(i_p140_a1, participant_dusts_dining_room, 76, 51341090).
raw_performed(i_p140_a1, participant_dusts_dining_room, 77, 51345563).
raw_performed(i_p140_a1, participant_dusts_dining_room, 78, 51345948).
raw_performed(i_p140_a1, participant_dusts_dining_room, 79, 51347479).
raw_performed(i_p140_a1, participant_dusts_dining_room, 80, 51349192).
raw_performed(i_p140_a1, participant_dusts_dining_room, 81, 51358558).
raw_performed(i_p140_a1, participant_dusts_dining_room, 82, 51359395).
raw_performed(i_p140_a1, participant_returns_duster_to_supply_closet, 83, 51377982).

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

