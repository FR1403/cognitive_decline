% ======================================================================
% Paziente 84
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

instance(i_p84_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p84_a1, participant_retrieves_broom_from_supply_closet, 1, 52186731).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 2, 52201787).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 3, 52210856).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 4, 52227155).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 5, 52229557).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 6, 52235345).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 7, 52235794).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 8, 52244388).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 9, 52247583).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 10, 52248339).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 11, 52250848).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 12, 52253917).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 13, 52254726).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 14, 52285786).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 15, 52289055).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 16, 52305061).
raw_performed(i_p84_a1, participant_sweeps_kitchen_floor, 17, 52306766).
raw_performed(i_p84_a1, participant_retrieves_dust_pan_and_brush_from_closet, 18, 52313516).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 19, 52314718).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 20, 52317014).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 21, 52317681).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 22, 52321804).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 23, 52322824).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 24, 52324869).
raw_performed(i_p84_a1, participant_uses_dust_pan_and_brush, 25, 52326830).
raw_performed(i_p84_a1, participant_retrieves_duster_from_supply_closet, 26, 52327353).
raw_performed(i_p84_a1, participant_returns_broom_to_supply_closet, 27, 52327353).
raw_performed(i_p84_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 28, 52327353).
raw_performed(i_p84_a1, participant_dusts_living_room, 29, 52359227).
raw_performed(i_p84_a1, participant_dusts_living_room, 30, 52359561).
raw_performed(i_p84_a1, participant_dusts_living_room, 31, 52360508).
raw_performed(i_p84_a1, participant_dusts_living_room, 32, 52362821).
raw_performed(i_p84_a1, participant_dusts_living_room, 33, 52363360).
raw_performed(i_p84_a1, participant_dusts_living_room, 34, 52365185).
raw_performed(i_p84_a1, participant_dusts_living_room, 35, 52379093).
raw_performed(i_p84_a1, participant_dusts_living_room, 36, 52381842).
raw_performed(i_p84_a1, participant_dusts_living_room, 37, 52383979).
raw_performed(i_p84_a1, participant_dusts_living_room, 38, 52385344).
raw_performed(i_p84_a1, participant_dusts_living_room, 39, 52387546).
raw_performed(i_p84_a1, participant_dusts_living_room, 40, 52387941).
raw_performed(i_p84_a1, participant_dusts_living_room, 41, 52389917).
raw_performed(i_p84_a1, participant_dusts_living_room, 42, 52390922).
raw_performed(i_p84_a1, participant_dusts_living_room, 43, 52397570).
raw_performed(i_p84_a1, participant_dusts_living_room, 44, 52399794).
raw_performed(i_p84_a1, participant_dusts_living_room, 45, 52402439).
raw_performed(i_p84_a1, participant_dusts_living_room, 46, 52402734).
raw_performed(i_p84_a1, participant_dusts_living_room, 47, 52406172).
raw_performed(i_p84_a1, participant_dusts_living_room, 48, 52409574).
raw_performed(i_p84_a1, participant_dusts_living_room, 49, 52410560).
raw_performed(i_p84_a1, participant_dusts_living_room, 50, 52423884).
raw_performed(i_p84_a1, participant_dusts_living_room, 51, 52431189).
raw_performed(i_p84_a1, participant_dusts_living_room, 52, 52445106).
raw_performed(i_p84_a1, participant_dusts_living_room, 53, 52453826).
raw_performed(i_p84_a1, participant_dusts_living_room, 54, 52466634).
raw_performed(i_p84_a1, participant_dusts_living_room, 55, 52471914).
raw_performed(i_p84_a1, participant_dusts_living_room, 56, 52473350).
raw_performed(i_p84_a1, participant_dusts_living_room, 57, 52477166).
raw_performed(i_p84_a1, participant_dusts_living_room, 58, 52478146).
raw_performed(i_p84_a1, participant_dusts_living_room, 59, 52479551).
raw_performed(i_p84_a1, participant_dusts_living_room, 60, 52479716).
raw_performed(i_p84_a1, participant_dusts_dining_room, 61, 52481689).
raw_performed(i_p84_a1, participant_dusts_dining_room, 62, 52495053).
raw_performed(i_p84_a1, participant_dusts_dining_room, 63, 52499215).
raw_performed(i_p84_a1, participant_dusts_dining_room, 64, 52500735).
raw_performed(i_p84_a1, participant_dusts_dining_room, 65, 52501124).
raw_performed(i_p84_a1, participant_dusts_dining_room, 66, 52504765).
raw_performed(i_p84_a1, participant_dusts_dining_room, 67, 52510138).
raw_performed(i_p84_a1, participant_dusts_dining_room, 68, 52517193).
raw_performed(i_p84_a1, participant_dusts_dining_room, 69, 52525150).
raw_performed(i_p84_a1, participant_dusts_dining_room, 70, 52531705).
raw_performed(i_p84_a1, participant_dusts_dining_room, 71, 52535965).
raw_performed(i_p84_a1, participant_dusts_dining_room, 72, 52541189).
raw_performed(i_p84_a1, participant_dusts_dining_room, 73, 52543749).
raw_performed(i_p84_a1, participant_dusts_dining_room, 74, 52544163).
raw_performed(i_p84_a1, participant_dusts_dining_room, 75, 52548643).
raw_performed(i_p84_a1, participant_returns_duster_to_supply_closet, 76, 52557786).

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

