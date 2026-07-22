% ======================================================================
% Paziente 189
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

instance(i_p189_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p189_a1, participant_retrieves_broom_from_supply_closet, 1, 33732765).
raw_performed(i_p189_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 33737385).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 3, 33754750).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 4, 33763141).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 5, 33771449).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 6, 33778484).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 7, 33781605).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 8, 33792655).
raw_performed(i_p189_a1, participant_sweeps_kitchen_floor, 9, 33806805).
raw_performed(i_p189_a1, participant_uses_dust_pan_and_brush, 10, 33814100).
raw_performed(i_p189_a1, participant_retrieves_duster_from_supply_closet, 11, 33850301).
raw_performed(i_p189_a1, participant_returns_broom_to_supply_closet, 12, 33853513).
raw_performed(i_p189_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 13, 33855120).
raw_performed(i_p189_a1, participant_dusts_living_room, 14, 33860146).
raw_performed(i_p189_a1, participant_dusts_living_room, 15, 33860671).
raw_performed(i_p189_a1, participant_dusts_living_room, 16, 33876918).
raw_performed(i_p189_a1, participant_dusts_living_room, 17, 33889290).
raw_performed(i_p189_a1, participant_dusts_living_room, 18, 33921031).
raw_performed(i_p189_a1, participant_dusts_living_room, 19, 33927517).
raw_performed(i_p189_a1, participant_dusts_living_room, 20, 33929535).
raw_performed(i_p189_a1, participant_dusts_living_room, 21, 33946763).
raw_performed(i_p189_a1, participant_dusts_living_room, 22, 33947598).
raw_performed(i_p189_a1, participant_dusts_living_room, 23, 33952679).
raw_performed(i_p189_a1, participant_dusts_living_room, 24, 33953978).
raw_performed(i_p189_a1, participant_dusts_living_room, 25, 33956053).
raw_performed(i_p189_a1, participant_dusts_living_room, 26, 33956662).
raw_performed(i_p189_a1, participant_dusts_dining_room, 27, 33958534).
raw_performed(i_p189_a1, participant_dusts_dining_room, 28, 33959070).
raw_performed(i_p189_a1, participant_dusts_dining_room, 29, 33968828).
raw_performed(i_p189_a1, participant_dusts_dining_room, 30, 33969201).
raw_performed(i_p189_a1, participant_dusts_dining_room, 31, 33973186).
raw_performed(i_p189_a1, participant_dusts_dining_room, 32, 33979538).
raw_performed(i_p189_a1, participant_dusts_dining_room, 33, 33986374).
raw_performed(i_p189_a1, participant_dusts_dining_room, 34, 33989984).
raw_performed(i_p189_a1, participant_dusts_dining_room, 35, 33991511).
raw_performed(i_p189_a1, participant_dusts_dining_room, 36, 34001741).
raw_performed(i_p189_a1, participant_dusts_dining_room, 37, 34007124).
raw_performed(i_p189_a1, participant_dusts_dining_room, 38, 34009174).
raw_performed(i_p189_a1, participant_dusts_dining_room, 39, 34016632).
raw_performed(i_p189_a1, participant_dusts_dining_room, 40, 34020679).
raw_performed(i_p189_a1, participant_dusts_living_room, 41, 34023215).
raw_performed(i_p189_a1, participant_dusts_living_room, 42, 34028947).
raw_performed(i_p189_a1, participant_dusts_living_room, 43, 34030089).
raw_performed(i_p189_a1, participant_dusts_living_room, 44, 34032369).
raw_performed(i_p189_a1, participant_dusts_living_room, 45, 34037550).
raw_performed(i_p189_a1, participant_dusts_living_room, 46, 34040681).
raw_performed(i_p189_a1, participant_dusts_living_room, 47, 34045805).
raw_performed(i_p189_a1, participant_dusts_living_room, 48, 34046632).
raw_performed(i_p189_a1, participant_dusts_living_room, 49, 34047242).
raw_performed(i_p189_a1, participant_returns_duster_to_supply_closet, 50, 34066116).

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

