% ======================================================================
% Paziente 250
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

instance(i_p250_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p250_a1, participant_retrieves_broom_from_supply_closet, 1, 35448049).
raw_performed(i_p250_a1, participant_retrieves_duster_from_supply_closet, 2, 35448049).
raw_performed(i_p250_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 35448049).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 4, 35459005).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 5, 35459005).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 6, 35463092).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 7, 35463092).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 8, 35472008).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 9, 35472008).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 10, 35479034).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 11, 35479034).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 12, 35479037).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 13, 35479037).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 14, 35481001).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 15, 35481001).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 16, 35494069).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 17, 35494069).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 18, 35510072).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 19, 35510072).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 20, 35512082).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 21, 35512082).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 22, 35513044).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 23, 35513044).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 24, 35519000).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 25, 35519000).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 26, 35524080).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 27, 35524080).
raw_performed(i_p250_a1, participant_sweeps_kitchen_floor, 28, 35529029).
raw_performed(i_p250_a1, participant_uses_dust_pan_and_brush, 29, 35529029).
raw_performed(i_p250_a1, participant_returns_broom_to_supply_closet, 30, 35533014).
raw_performed(i_p250_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 31, 35536000).
raw_performed(i_p250_a1, participant_dusts_dining_room, 32, 35588035).
raw_performed(i_p250_a1, participant_dusts_dining_room, 33, 35590002).
raw_performed(i_p250_a1, participant_dusts_dining_room, 34, 35592080).
raw_performed(i_p250_a1, participant_dusts_dining_room, 35, 35596005).
raw_performed(i_p250_a1, participant_dusts_dining_room, 36, 35598082).
raw_performed(i_p250_a1, participant_dusts_dining_room, 37, 35601054).
raw_performed(i_p250_a1, participant_dusts_dining_room, 38, 35607037).
raw_performed(i_p250_a1, participant_dusts_dining_room, 39, 35609024).
raw_performed(i_p250_a1, participant_dusts_dining_room, 40, 35611012).
raw_performed(i_p250_a1, participant_dusts_dining_room, 41, 35612018).
raw_performed(i_p250_a1, participant_dusts_living_room, 42, 35614047).
raw_performed(i_p250_a1, participant_dusts_living_room, 43, 35620000).
raw_performed(i_p250_a1, participant_dusts_living_room, 44, 35626009).
raw_performed(i_p250_a1, participant_dusts_dining_room, 45, 35633025).
raw_performed(i_p250_a1, participant_dusts_dining_room, 46, 35633030).
raw_performed(i_p250_a1, participant_dusts_dining_room, 47, 35634031).
raw_performed(i_p250_a1, participant_dusts_living_room, 48, 35636021).
raw_performed(i_p250_a1, participant_dusts_dining_room, 49, 35636024).
raw_performed(i_p250_a1, participant_dusts_living_room, 50, 35636084).
raw_performed(i_p250_a1, participant_dusts_living_room, 51, 35639000).
raw_performed(i_p250_a1, participant_dusts_living_room, 52, 35639003).
raw_performed(i_p250_a1, participant_dusts_living_room, 53, 35640074).
raw_performed(i_p250_a1, participant_dusts_living_room, 54, 35649008).
raw_performed(i_p250_a1, participant_dusts_living_room, 55, 35653020).
raw_performed(i_p250_a1, participant_dusts_living_room, 56, 35667083).
raw_performed(i_p250_a1, participant_dusts_living_room, 57, 35669030).
raw_performed(i_p250_a1, participant_dusts_living_room, 58, 35701072).
raw_performed(i_p250_a1, participant_dusts_living_room, 59, 35709022).
raw_performed(i_p250_a1, participant_dusts_living_room, 60, 35714015).
raw_performed(i_p250_a1, participant_dusts_living_room, 61, 35718056).
raw_performed(i_p250_a1, participant_dusts_living_room, 62, 35719061).
raw_performed(i_p250_a1, participant_dusts_dining_room, 63, 35721007).
raw_performed(i_p250_a1, participant_dusts_dining_room, 64, 35723014).
raw_performed(i_p250_a1, participant_dusts_dining_room, 65, 35723093).
raw_performed(i_p250_a1, participant_dusts_dining_room, 66, 35729035).
raw_performed(i_p250_a1, participant_returns_duster_to_supply_closet, 67, 35735012).

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

