% ======================================================================
% Paziente 158
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

instance(i_p158_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p158_a1, participant_retrieves_broom_from_supply_closet, 1, 34840017).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 2, 34841013).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 3, 34851010).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 4, 34851070).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 5, 34853009).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 6, 34862047).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 7, 34887047).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 8, 34888005).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 9, 34894062).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 10, 34901061).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 11, 34902021).
raw_performed(i_p158_a1, participant_sweeps_kitchen_floor, 12, 34907059).
raw_performed(i_p158_a1, participant_returns_broom_to_supply_closet, 13, 34910081).
raw_performed(i_p158_a1, participant_retrieves_dust_pan_and_brush_from_closet, 14, 34948006).
raw_performed(i_p158_a1, participant_uses_dust_pan_and_brush, 15, 34951086).
raw_performed(i_p158_a1, participant_uses_dust_pan_and_brush, 16, 34961080).
raw_performed(i_p158_a1, participant_retrieves_duster_from_supply_closet, 17, 34969009).
raw_performed(i_p158_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 18, 34969009).
raw_performed(i_p158_a1, participant_dusts_dining_room, 19, 34989024).
raw_performed(i_p158_a1, participant_dusts_dining_room, 20, 35006087).
raw_performed(i_p158_a1, participant_dusts_dining_room, 21, 35017009).
raw_performed(i_p158_a1, participant_dusts_dining_room, 22, 35021045).
raw_performed(i_p158_a1, participant_dusts_dining_room, 23, 35028005).
raw_performed(i_p158_a1, participant_dusts_dining_room, 24, 35029004).
raw_performed(i_p158_a1, participant_dusts_dining_room, 25, 35031065).
raw_performed(i_p158_a1, participant_dusts_dining_room, 26, 35044006).
raw_performed(i_p158_a1, participant_dusts_dining_room, 27, 35050027).
raw_performed(i_p158_a1, participant_dusts_dining_room, 28, 35058032).
raw_performed(i_p158_a1, participant_dusts_dining_room, 29, 35059035).
raw_performed(i_p158_a1, participant_dusts_living_room, 30, 35060094).
raw_performed(i_p158_a1, participant_dusts_dining_room, 31, 35061057).
raw_performed(i_p158_a1, participant_dusts_living_room, 32, 35063005).
raw_performed(i_p158_a1, participant_dusts_living_room, 33, 35063038).
raw_performed(i_p158_a1, participant_dusts_living_room, 34, 35077008).
raw_performed(i_p158_a1, participant_dusts_living_room, 35, 35088070).
raw_performed(i_p158_a1, participant_dusts_living_room, 36, 35090013).
raw_performed(i_p158_a1, participant_dusts_living_room, 37, 35093014).
raw_performed(i_p158_a1, participant_dusts_living_room, 38, 35099072).
raw_performed(i_p158_a1, participant_dusts_living_room, 39, 35103071).
raw_performed(i_p158_a1, participant_dusts_living_room, 40, 35119050).
raw_performed(i_p158_a1, participant_dusts_living_room, 41, 35127066).
raw_performed(i_p158_a1, participant_dusts_living_room, 42, 35135077).
raw_performed(i_p158_a1, participant_dusts_living_room, 43, 35147059).
raw_performed(i_p158_a1, participant_dusts_living_room, 44, 35150007).
raw_performed(i_p158_a1, participant_dusts_living_room, 45, 35150072).
raw_performed(i_p158_a1, participant_returns_duster_to_supply_closet, 46, 35155090).

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

