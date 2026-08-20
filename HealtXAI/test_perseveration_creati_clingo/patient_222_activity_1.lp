% ======================================================================
% Paziente 222
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

instance(i_p222_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p222_a1, participant_retrieves_broom_from_supply_closet, 1, 48927731).
raw_performed(i_p222_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48930891).
raw_performed(i_p222_a1, participant_retrieves_duster_from_supply_closet, 3, 48939401).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 4, 48943115).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 5, 48949119).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 6, 48951410).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 7, 48953612).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 8, 48956498).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 9, 48960341).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 10, 48965451).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 11, 48967358).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 12, 48978252).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 13, 48979659).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 14, 48982921).
raw_performed(i_p222_a1, participant_sweeps_kitchen_floor, 15, 48984543).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 16, 48987769).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 17, 48990649).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 18, 48990678).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 19, 48996259).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 20, 48998644).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 21, 49000102).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 22, 49000793).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 23, 49003290).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 24, 49004664).
raw_performed(i_p222_a1, participant_uses_dust_pan_and_brush, 25, 49009536).
raw_performed(i_p222_a1, participant_dusts_dining_room, 26, 49011001).
raw_performed(i_p222_a1, participant_dusts_dining_room, 27, 49012173).
raw_performed(i_p222_a1, participant_dusts_living_room, 28, 49012368).
raw_performed(i_p222_a1, participant_dusts_living_room, 29, 49012684).
raw_performed(i_p222_a1, participant_dusts_living_room, 30, 49014153).
raw_performed(i_p222_a1, participant_dusts_living_room, 31, 49016580).
raw_performed(i_p222_a1, participant_dusts_living_room, 32, 49017812).
raw_performed(i_p222_a1, participant_dusts_living_room, 33, 49019716).
raw_performed(i_p222_a1, participant_dusts_living_room, 34, 49020328).
raw_performed(i_p222_a1, participant_dusts_living_room, 35, 49023503).
raw_performed(i_p222_a1, participant_dusts_living_room, 36, 49026136).
raw_performed(i_p222_a1, participant_dusts_living_room, 37, 49028401).
raw_performed(i_p222_a1, participant_dusts_living_room, 38, 49035014).
raw_performed(i_p222_a1, participant_dusts_living_room, 39, 49035745).
raw_performed(i_p222_a1, participant_dusts_living_room, 40, 49037403).
raw_performed(i_p222_a1, participant_dusts_living_room, 41, 49044571).
raw_performed(i_p222_a1, participant_dusts_living_room, 42, 49046004).
raw_performed(i_p222_a1, participant_dusts_living_room, 43, 49046708).
raw_performed(i_p222_a1, participant_dusts_living_room, 44, 49049916).
raw_performed(i_p222_a1, participant_dusts_living_room, 45, 49050513).
raw_performed(i_p222_a1, participant_dusts_living_room, 46, 49051790).
raw_performed(i_p222_a1, participant_dusts_living_room, 47, 49053046).
raw_performed(i_p222_a1, participant_dusts_living_room, 48, 49053742).
raw_performed(i_p222_a1, participant_dusts_living_room, 49, 49054305).
raw_performed(i_p222_a1, participant_dusts_living_room, 50, 49054744).
raw_performed(i_p222_a1, participant_dusts_dining_room, 51, 49057889).
raw_performed(i_p222_a1, participant_dusts_dining_room, 52, 49062386).
raw_performed(i_p222_a1, participant_dusts_dining_room, 53, 49063639).
raw_performed(i_p222_a1, participant_dusts_dining_room, 54, 49066673).
raw_performed(i_p222_a1, participant_dusts_dining_room, 55, 49068036).
raw_performed(i_p222_a1, participant_dusts_dining_room, 56, 49071139).
raw_performed(i_p222_a1, participant_returns_broom_to_supply_closet, 57, 49097811).
raw_performed(i_p222_a1, participant_returns_duster_to_supply_closet, 58, 49097911).
raw_performed(i_p222_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 59, 49111221).

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

