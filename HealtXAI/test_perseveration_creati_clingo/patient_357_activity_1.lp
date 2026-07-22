% ======================================================================
% Paziente 357
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

instance(i_p357_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p357_a1, participant_retrieves_broom_from_supply_closet, 1, 48291343).
raw_performed(i_p357_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 48293821).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 3, 48302886).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 4, 48302886).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 5, 48303556).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 6, 48303556).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 7, 48307299).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 8, 48307299).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 9, 48311599).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 10, 48311874).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 11, 48313692).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 12, 48313692).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 13, 48315373).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 14, 48315373).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 15, 48317036).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 16, 48317036).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 17, 48317601).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 18, 48317601).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 19, 48321441).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 20, 48325249).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 21, 48329207).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 22, 48330929).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 23, 48334576).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 24, 48337020).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 25, 48339348).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 26, 48347422).
raw_performed(i_p357_a1, participant_sweeps_kitchen_floor, 27, 48362504).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 28, 48364271).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 29, 48364654).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 30, 48368486).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 31, 48373534).
raw_performed(i_p357_a1, participant_uses_dust_pan_and_brush, 32, 48380665).
raw_performed(i_p357_a1, participant_returns_broom_to_supply_closet, 33, 48388991).
raw_performed(i_p357_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 34, 48395521).
raw_performed(i_p357_a1, participant_retrieves_duster_from_supply_closet, 35, 48397022).
raw_performed(i_p357_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 36, 48404031).
raw_performed(i_p357_a1, participant_dusts_dining_room, 37, 48425718).
raw_performed(i_p357_a1, participant_dusts_dining_room, 38, 48429668).
raw_performed(i_p357_a1, participant_dusts_dining_room, 39, 48444015).
raw_performed(i_p357_a1, participant_dusts_dining_room, 40, 48445252).
raw_performed(i_p357_a1, participant_dusts_dining_room, 41, 48451099).
raw_performed(i_p357_a1, participant_dusts_dining_room, 42, 48453140).
raw_performed(i_p357_a1, participant_dusts_dining_room, 43, 48467655).
raw_performed(i_p357_a1, participant_dusts_dining_room, 44, 48468267).
raw_performed(i_p357_a1, participant_dusts_dining_room, 45, 48471887).
raw_performed(i_p357_a1, participant_dusts_living_room, 46, 48472280).
raw_performed(i_p357_a1, participant_dusts_dining_room, 47, 48472756).
raw_performed(i_p357_a1, participant_dusts_living_room, 48, 48473810).
raw_performed(i_p357_a1, participant_dusts_living_room, 49, 48476972).
raw_performed(i_p357_a1, participant_dusts_living_room, 50, 48479947).
raw_performed(i_p357_a1, participant_dusts_living_room, 51, 48485189).
raw_performed(i_p357_a1, participant_dusts_living_room, 52, 48486699).
raw_performed(i_p357_a1, participant_dusts_living_room, 53, 48491181).
raw_performed(i_p357_a1, participant_dusts_living_room, 54, 48491461).
raw_performed(i_p357_a1, participant_dusts_living_room, 55, 48495349).
raw_performed(i_p357_a1, participant_dusts_living_room, 56, 48495575).
raw_performed(i_p357_a1, participant_dusts_living_room, 57, 48497481).
raw_performed(i_p357_a1, participant_dusts_living_room, 58, 48497542).
raw_performed(i_p357_a1, participant_dusts_living_room, 59, 48499488).
raw_performed(i_p357_a1, participant_dusts_living_room, 60, 48502143).
raw_performed(i_p357_a1, participant_dusts_living_room, 61, 48502939).
raw_performed(i_p357_a1, participant_dusts_living_room, 62, 48507907).
raw_performed(i_p357_a1, participant_dusts_living_room, 63, 48512510).
raw_performed(i_p357_a1, participant_dusts_living_room, 64, 48516059).
raw_performed(i_p357_a1, participant_dusts_living_room, 65, 48519054).
raw_performed(i_p357_a1, participant_dusts_living_room, 66, 48520941).
raw_performed(i_p357_a1, participant_dusts_living_room, 67, 48524320).
raw_performed(i_p357_a1, participant_dusts_living_room, 68, 48526930).
raw_performed(i_p357_a1, participant_dusts_living_room, 69, 48529220).
raw_performed(i_p357_a1, participant_dusts_living_room, 70, 48538788).
raw_performed(i_p357_a1, participant_dusts_living_room, 71, 48555651).
raw_performed(i_p357_a1, participant_dusts_living_room, 72, 48557506).
raw_performed(i_p357_a1, participant_dusts_living_room, 73, 48562449).
raw_performed(i_p357_a1, participant_dusts_living_room, 74, 48563926).
raw_performed(i_p357_a1, participant_dusts_living_room, 75, 48570086).
raw_performed(i_p357_a1, participant_dusts_living_room, 76, 48575723).
raw_performed(i_p357_a1, participant_dusts_living_room, 77, 48580026).
raw_performed(i_p357_a1, participant_dusts_living_room, 78, 48585259).
raw_performed(i_p357_a1, participant_dusts_living_room, 79, 48595977).
raw_performed(i_p357_a1, participant_dusts_living_room, 80, 48596316).
raw_performed(i_p357_a1, participant_dusts_living_room, 81, 48602121).
raw_performed(i_p357_a1, participant_dusts_living_room, 82, 48602799).
raw_performed(i_p357_a1, participant_dusts_living_room, 83, 48610388).
raw_performed(i_p357_a1, participant_dusts_living_room, 84, 48611571).
raw_performed(i_p357_a1, participant_dusts_living_room, 85, 48611629).
raw_performed(i_p357_a1, participant_dusts_dining_room, 86, 48611946).
raw_performed(i_p357_a1, participant_dusts_dining_room, 87, 48617671).
raw_performed(i_p357_a1, participant_dusts_dining_room, 88, 48625374).
raw_performed(i_p357_a1, participant_dusts_dining_room, 89, 48628955).
raw_performed(i_p357_a1, participant_returns_duster_to_supply_closet, 90, 48645385).
raw_performed(i_p357_a1, participant_returns_duster_to_supply_closet, 91, 48649888).
raw_performed(i_p357_a1, participant_returns_duster_to_supply_closet, 92, 48651274).
raw_performed(i_p357_a1, participant_returns_duster_to_supply_closet, 93, 48651901).

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

