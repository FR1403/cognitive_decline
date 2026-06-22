% ======================================================================
% Paziente 56
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

instance(i_p56_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p56_a1, participant_retrieves_broom_from_supply_closet, 1, 47246260).
raw_performed(i_p56_a1, participant_retrieves_duster_from_supply_closet, 2, 47246260).
raw_performed(i_p56_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 47246260).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 4, 47261431).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 5, 47261431).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 6, 47262052).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 7, 47262052).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 8, 47270132).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 9, 47270132).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 10, 47283383).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 11, 47283383).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 12, 47290842).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 13, 47290842).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 14, 47297103).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 15, 47297103).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 16, 47301249).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 17, 47301249).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 18, 47302108).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 19, 47302108).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 20, 47306386).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 21, 47306386).
raw_performed(i_p56_a1, participant_sweeps_kitchen_floor, 22, 47309862).
raw_performed(i_p56_a1, participant_uses_dust_pan_and_brush, 23, 47309862).
raw_performed(i_p56_a1, participant_returns_broom_to_supply_closet, 24, 47319989).
raw_performed(i_p56_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 25, 47349744).
raw_performed(i_p56_a1, participant_dusts_living_room, 26, 47367427).
raw_performed(i_p56_a1, participant_dusts_living_room, 27, 47382422).
raw_performed(i_p56_a1, participant_dusts_living_room, 28, 47424802).
raw_performed(i_p56_a1, participant_dusts_living_room, 29, 47428669).
raw_performed(i_p56_a1, participant_dusts_living_room, 30, 47431893).
raw_performed(i_p56_a1, participant_dusts_living_room, 31, 47436298).
raw_performed(i_p56_a1, participant_dusts_living_room, 32, 47440160).
raw_performed(i_p56_a1, participant_dusts_living_room, 33, 47447104).
raw_performed(i_p56_a1, participant_dusts_living_room, 34, 47447121).
raw_performed(i_p56_a1, participant_dusts_dining_room, 35, 47451041).
raw_performed(i_p56_a1, participant_dusts_living_room, 36, 47455329).
raw_performed(i_p56_a1, participant_dusts_living_room, 37, 47455366).
raw_performed(i_p56_a1, participant_dusts_living_room, 38, 47455893).
raw_performed(i_p56_a1, participant_dusts_dining_room, 39, 47462982).
raw_performed(i_p56_a1, participant_dusts_dining_room, 40, 47467942).
raw_performed(i_p56_a1, participant_dusts_dining_room, 41, 47468784).
raw_performed(i_p56_a1, participant_dusts_dining_room, 42, 47476461).
raw_performed(i_p56_a1, participant_dusts_dining_room, 43, 47480697).
raw_performed(i_p56_a1, participant_dusts_dining_room, 44, 47483774).
raw_performed(i_p56_a1, participant_dusts_dining_room, 45, 47488091).
raw_performed(i_p56_a1, participant_dusts_dining_room, 46, 47488722).
raw_performed(i_p56_a1, participant_returns_duster_to_supply_closet, 47, 47499276).

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

