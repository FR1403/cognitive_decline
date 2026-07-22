% ======================================================================
% Paziente 354
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

instance(i_p354_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p354_a1, participant_retrieves_dust_pan_and_brush_from_closet, 1, 35089582).
raw_performed(i_p354_a1, participant_retrieves_duster_from_supply_closet, 2, 35089640).
raw_performed(i_p354_a1, participant_retrieves_broom_from_supply_closet, 3, 35094942).
raw_performed(i_p354_a1, participant_dusts_dining_room, 4, 35107785).
raw_performed(i_p354_a1, participant_dusts_living_room, 5, 35107886).
raw_performed(i_p354_a1, participant_dusts_living_room, 6, 35110070).
raw_performed(i_p354_a1, participant_dusts_living_room, 7, 35110182).
raw_performed(i_p354_a1, participant_dusts_living_room, 8, 35112942).
raw_performed(i_p354_a1, participant_dusts_living_room, 9, 35115330).
raw_performed(i_p354_a1, participant_dusts_living_room, 10, 35119065).
raw_performed(i_p354_a1, participant_dusts_living_room, 11, 35127501).
raw_performed(i_p354_a1, participant_dusts_living_room, 12, 35130416).
raw_performed(i_p354_a1, participant_dusts_living_room, 13, 35135549).
raw_performed(i_p354_a1, participant_dusts_living_room, 14, 35142108).
raw_performed(i_p354_a1, participant_dusts_living_room, 15, 35154121).
raw_performed(i_p354_a1, participant_dusts_living_room, 16, 35158107).
raw_performed(i_p354_a1, participant_dusts_living_room, 17, 35158437).
raw_performed(i_p354_a1, participant_dusts_living_room, 18, 35158660).
raw_performed(i_p354_a1, participant_dusts_living_room, 19, 35160616).
raw_performed(i_p354_a1, participant_dusts_living_room, 20, 35163426).
raw_performed(i_p354_a1, participant_dusts_living_room, 21, 35165138).
raw_performed(i_p354_a1, participant_dusts_living_room, 22, 35166453).
raw_performed(i_p354_a1, participant_dusts_living_room, 23, 35167114).
raw_performed(i_p354_a1, participant_dusts_living_room, 24, 35168880).
raw_performed(i_p354_a1, participant_dusts_living_room, 25, 35177067).
raw_performed(i_p354_a1, participant_dusts_living_room, 26, 35177867).
raw_performed(i_p354_a1, participant_dusts_dining_room, 27, 35182122).
raw_performed(i_p354_a1, participant_dusts_living_room, 28, 35182699).
raw_performed(i_p354_a1, participant_dusts_living_room, 29, 35183307).
raw_performed(i_p354_a1, participant_dusts_living_room, 30, 35186311).
raw_performed(i_p354_a1, participant_dusts_dining_room, 31, 35187729).
raw_performed(i_p354_a1, participant_dusts_living_room, 32, 35188013).
raw_performed(i_p354_a1, participant_dusts_dining_room, 33, 35192178).
raw_performed(i_p354_a1, participant_dusts_dining_room, 34, 35204138).
raw_performed(i_p354_a1, participant_dusts_dining_room, 35, 35211968).
raw_performed(i_p354_a1, participant_dusts_dining_room, 36, 35214041).
raw_performed(i_p354_a1, participant_dusts_dining_room, 37, 35215778).
raw_performed(i_p354_a1, participant_dusts_dining_room, 38, 35218333).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 39, 35237441).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 40, 35237590).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 41, 35239906).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 42, 35244614).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 43, 35247639).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 44, 35252522).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 45, 35256577).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 46, 35267652).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 47, 35267979).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 48, 35270398).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 49, 35282556).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 50, 35284811).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 51, 35285963).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 52, 35291769).
raw_performed(i_p354_a1, participant_sweeps_kitchen_floor, 53, 35298068).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 54, 35300071).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 55, 35302374).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 56, 35309408).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 57, 35313598).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 58, 35318392).
raw_performed(i_p354_a1, participant_uses_dust_pan_and_brush, 59, 35327012).
raw_performed(i_p354_a1, participant_returns_duster_to_supply_closet, 60, 35347295).
raw_performed(i_p354_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 61, 35348050).
raw_performed(i_p354_a1, participant_returns_broom_to_supply_closet, 62, 35355131).

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

