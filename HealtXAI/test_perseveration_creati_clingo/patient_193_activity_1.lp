% ======================================================================
% Paziente 193
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

instance(i_p193_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p193_a1, participant_retrieves_broom_from_supply_closet, 1, 39074879).
raw_performed(i_p193_a1, participant_retrieves_duster_from_supply_closet, 2, 39074879).
raw_performed(i_p193_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 39074879).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 4, 39089016).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 5, 39095258).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 6, 39099026).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 7, 39102216).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 8, 39102287).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 9, 39116857).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 10, 39124885).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 11, 39131892).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 12, 39135974).
raw_performed(i_p193_a1, participant_sweeps_kitchen_floor, 13, 39143221).
raw_performed(i_p193_a1, participant_uses_dust_pan_and_brush, 14, 39156262).
raw_performed(i_p193_a1, participant_uses_dust_pan_and_brush, 15, 39163873).
raw_performed(i_p193_a1, participant_returns_broom_to_supply_closet, 16, 39223024).
raw_performed(i_p193_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 17, 39223024).
raw_performed(i_p193_a1, participant_dusts_dining_room, 18, 39245282).
raw_performed(i_p193_a1, participant_dusts_dining_room, 19, 39245353).
raw_performed(i_p193_a1, participant_dusts_dining_room, 20, 39245377).
raw_performed(i_p193_a1, participant_dusts_dining_room, 21, 39263571).
raw_performed(i_p193_a1, participant_dusts_dining_room, 22, 39264167).
raw_performed(i_p193_a1, participant_dusts_dining_room, 23, 39278558).
raw_performed(i_p193_a1, participant_dusts_dining_room, 24, 39280010).
raw_performed(i_p193_a1, participant_dusts_dining_room, 25, 39285505).
raw_performed(i_p193_a1, participant_dusts_dining_room, 26, 39288067).
raw_performed(i_p193_a1, participant_dusts_dining_room, 27, 39299112).
raw_performed(i_p193_a1, participant_dusts_living_room, 28, 39300161).
raw_performed(i_p193_a1, participant_dusts_living_room, 29, 39303577).
raw_performed(i_p193_a1, participant_dusts_living_room, 30, 39311775).
raw_performed(i_p193_a1, participant_dusts_living_room, 31, 39321585).
raw_performed(i_p193_a1, participant_dusts_living_room, 32, 39336773).
raw_performed(i_p193_a1, participant_dusts_living_room, 33, 39336797).
raw_performed(i_p193_a1, participant_dusts_living_room, 34, 39341222).
raw_performed(i_p193_a1, participant_dusts_living_room, 35, 39353215).
raw_performed(i_p193_a1, participant_dusts_living_room, 36, 39353858).
raw_performed(i_p193_a1, participant_dusts_dining_room, 37, 39363222).
raw_performed(i_p193_a1, participant_dusts_dining_room, 38, 39364157).
raw_performed(i_p193_a1, participant_dusts_dining_room, 39, 39365431).
raw_performed(i_p193_a1, participant_dusts_dining_room, 40, 39367605).
raw_performed(i_p193_a1, participant_dusts_dining_room, 41, 39368689).
raw_performed(i_p193_a1, participant_dusts_dining_room, 42, 39375618).
raw_performed(i_p193_a1, participant_dusts_dining_room, 43, 39375665).
raw_performed(i_p193_a1, participant_dusts_dining_room, 44, 39376515).
raw_performed(i_p193_a1, participant_dusts_living_room, 45, 39379477).
raw_performed(i_p193_a1, participant_dusts_living_room, 46, 39379601).
raw_performed(i_p193_a1, participant_dusts_living_room, 47, 39380589).
raw_performed(i_p193_a1, participant_dusts_living_room, 48, 39380633).
raw_performed(i_p193_a1, participant_dusts_living_room, 49, 39383669).
raw_performed(i_p193_a1, participant_dusts_living_room, 50, 39391475).
raw_performed(i_p193_a1, participant_dusts_living_room, 51, 39392528).
raw_performed(i_p193_a1, participant_dusts_living_room, 52, 39398757).
raw_performed(i_p193_a1, participant_dusts_living_room, 53, 39398781).
raw_performed(i_p193_a1, participant_dusts_dining_room, 54, 39399372).
raw_performed(i_p193_a1, participant_dusts_dining_room, 55, 39400640).
raw_performed(i_p193_a1, participant_dusts_dining_room, 56, 39403953).
raw_performed(i_p193_a1, participant_dusts_dining_room, 57, 39404732).
raw_performed(i_p193_a1, participant_dusts_dining_room, 58, 39410095).
raw_performed(i_p193_a1, participant_dusts_dining_room, 59, 39412571).
raw_performed(i_p193_a1, participant_dusts_dining_room, 60, 39414003).
raw_performed(i_p193_a1, participant_dusts_dining_room, 61, 39418056).
raw_performed(i_p193_a1, participant_dusts_dining_room, 62, 39422107).
raw_performed(i_p193_a1, participant_dusts_dining_room, 63, 39424874).
raw_performed(i_p193_a1, participant_dusts_dining_room, 64, 39424946).
raw_performed(i_p193_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 65, 39432283).

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

