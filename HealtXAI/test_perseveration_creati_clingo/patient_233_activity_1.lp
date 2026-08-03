% ======================================================================
% Paziente 233
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

instance(i_p233_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p233_a1, participant_retrieves_broom_from_supply_closet, 1, 32408719).
raw_performed(i_p233_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 32408719).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 3, 32417349).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 4, 32439795).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 5, 32451941).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 6, 32462294).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 7, 32466522).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 8, 32474239).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 9, 32495509).
raw_performed(i_p233_a1, participant_sweeps_kitchen_floor, 10, 32512149).
raw_performed(i_p233_a1, participant_uses_dust_pan_and_brush, 11, 32521329).
raw_performed(i_p233_a1, participant_uses_dust_pan_and_brush, 12, 32538575).
raw_performed(i_p233_a1, participant_dusts_dining_room, 13, 32539009).
raw_performed(i_p233_a1, participant_returns_broom_to_supply_closet, 14, 32539009).
raw_performed(i_p233_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 15, 32539009).
raw_performed(i_p233_a1, participant_dusts_living_room, 16, 32596021).
raw_performed(i_p233_a1, participant_dusts_living_room, 17, 32607378).
raw_performed(i_p233_a1, participant_dusts_living_room, 18, 32615098).
raw_performed(i_p233_a1, participant_dusts_living_room, 19, 32650874).
raw_performed(i_p233_a1, participant_dusts_living_room, 20, 32655683).
raw_performed(i_p233_a1, participant_dusts_living_room, 21, 32685696).
raw_performed(i_p233_a1, participant_dusts_living_room, 22, 32688218).
raw_performed(i_p233_a1, participant_dusts_living_room, 23, 32692041).
raw_performed(i_p233_a1, participant_dusts_living_room, 24, 32692055).
raw_performed(i_p233_a1, participant_dusts_living_room, 25, 32697870).
raw_performed(i_p233_a1, participant_dusts_living_room, 26, 32697888).
raw_performed(i_p233_a1, participant_dusts_living_room, 27, 32698888).
raw_performed(i_p233_a1, participant_dusts_living_room, 28, 32705061).
raw_performed(i_p233_a1, participant_dusts_living_room, 29, 32720420).
raw_performed(i_p233_a1, participant_dusts_living_room, 30, 32724758).
raw_performed(i_p233_a1, participant_dusts_living_room, 31, 32727723).
raw_performed(i_p233_a1, participant_dusts_living_room, 32, 32740172).
raw_performed(i_p233_a1, participant_dusts_living_room, 33, 32743072).
raw_performed(i_p233_a1, participant_dusts_dining_room, 34, 32758692).
raw_performed(i_p233_a1, participant_dusts_dining_room, 35, 32770637).
raw_performed(i_p233_a1, participant_dusts_dining_room, 36, 32772301).
raw_performed(i_p233_a1, participant_dusts_dining_room, 37, 32778480).
raw_performed(i_p233_a1, participant_dusts_dining_room, 38, 32778494).
raw_performed(i_p233_a1, participant_dusts_dining_room, 39, 32785822).
raw_performed(i_p233_a1, participant_dusts_dining_room, 40, 32791044).
raw_performed(i_p233_a1, participant_dusts_dining_room, 41, 32801099).
raw_performed(i_p233_a1, participant_dusts_dining_room, 42, 32823201).
raw_performed(i_p233_a1, participant_dusts_dining_room, 43, 32828538).
raw_performed(i_p233_a1, participant_dusts_dining_room, 44, 32844959).
raw_performed(i_p233_a1, participant_dusts_dining_room, 45, 32847269).
raw_performed(i_p233_a1, participant_dusts_dining_room, 46, 32864847).
raw_performed(i_p233_a1, participant_dusts_dining_room, 47, 32870492).
raw_performed(i_p233_a1, participant_dusts_dining_room, 48, 32880250).
raw_performed(i_p233_a1, participant_dusts_dining_room, 49, 32881961).
raw_performed(i_p233_a1, participant_dusts_dining_room, 50, 32885145).
raw_performed(i_p233_a1, participant_returns_duster_to_supply_closet, 51, 32898066).

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

