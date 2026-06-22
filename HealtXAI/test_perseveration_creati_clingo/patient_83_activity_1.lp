% ======================================================================
% Paziente 83
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

instance(i_p83_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p83_a1, participant_retrieves_broom_from_supply_closet, 1, 34144945).
raw_performed(i_p83_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34149148).
raw_performed(i_p83_a1, participant_retrieves_duster_from_supply_closet, 3, 34158229).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 4, 34160693).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 5, 34174098).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 6, 34177678).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 7, 34178370).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 8, 34179198).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 9, 34186151).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 10, 34189698).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 11, 34213892).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 12, 34229033).
raw_performed(i_p83_a1, participant_sweeps_kitchen_floor, 13, 34237869).
raw_performed(i_p83_a1, participant_uses_dust_pan_and_brush, 14, 34245488).
raw_performed(i_p83_a1, participant_returns_broom_to_supply_closet, 15, 34269124).
raw_performed(i_p83_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 16, 34278689).
raw_performed(i_p83_a1, participant_dusts_living_room, 17, 34290790).
raw_performed(i_p83_a1, participant_dusts_living_room, 18, 34295470).
raw_performed(i_p83_a1, participant_dusts_living_room, 19, 34295846).
raw_performed(i_p83_a1, participant_dusts_living_room, 20, 34308388).
raw_performed(i_p83_a1, participant_dusts_living_room, 21, 34347409).
raw_performed(i_p83_a1, participant_dusts_living_room, 22, 34353579).
raw_performed(i_p83_a1, participant_dusts_living_room, 23, 34361417).
raw_performed(i_p83_a1, participant_dusts_living_room, 24, 34364587).
raw_performed(i_p83_a1, participant_dusts_living_room, 25, 34368641).
raw_performed(i_p83_a1, participant_dusts_living_room, 26, 34371323).
raw_performed(i_p83_a1, participant_dusts_living_room, 27, 34371839).
raw_performed(i_p83_a1, participant_dusts_living_room, 28, 34373417).
raw_performed(i_p83_a1, participant_dusts_living_room, 29, 34382475).
raw_performed(i_p83_a1, participant_dusts_living_room, 30, 34386310).
raw_performed(i_p83_a1, participant_dusts_living_room, 31, 34386359).
raw_performed(i_p83_a1, participant_dusts_dining_room, 32, 34386674).
raw_performed(i_p83_a1, participant_dusts_dining_room, 33, 34387505).
raw_performed(i_p83_a1, participant_dusts_dining_room, 34, 34388368).
raw_performed(i_p83_a1, participant_dusts_dining_room, 35, 34390244).
raw_performed(i_p83_a1, participant_dusts_dining_room, 36, 34390845).
raw_performed(i_p83_a1, participant_dusts_dining_room, 37, 34395999).
raw_performed(i_p83_a1, participant_dusts_dining_room, 38, 34403591).
raw_performed(i_p83_a1, participant_dusts_dining_room, 39, 34404100).
raw_performed(i_p83_a1, participant_dusts_dining_room, 40, 34405166).
raw_performed(i_p83_a1, participant_dusts_dining_room, 41, 34407586).
raw_performed(i_p83_a1, participant_dusts_dining_room, 42, 34415500).
raw_performed(i_p83_a1, participant_dusts_dining_room, 43, 34422241).
raw_performed(i_p83_a1, participant_dusts_dining_room, 44, 34436293).
raw_performed(i_p83_a1, participant_dusts_dining_room, 45, 34437891).
raw_performed(i_p83_a1, participant_returns_duster_to_supply_closet, 46, 34448160).

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

