% ======================================================================
% Paziente 229
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

instance(i_p229_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p229_a1, participant_retrieves_broom_from_supply_closet, 1, 49478881).
raw_performed(i_p229_a1, participant_retrieves_duster_from_supply_closet, 2, 49478881).
raw_performed(i_p229_a1, participant_retrieves_dust_pan_and_brush_from_closet, 3, 49494461).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 4, 49528302).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 5, 49528302).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 6, 49535081).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 7, 49535081).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 8, 49548040).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 9, 49548040).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 10, 49560062).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 11, 49560062).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 12, 49570653).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 13, 49570653).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 14, 49575093).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 15, 49575093).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 16, 49576564).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 17, 49576564).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 18, 49579481).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 19, 49579481).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 20, 49584468).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 21, 49584468).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 22, 49590478).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 23, 49590478).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 24, 49594361).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 25, 49594361).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 26, 49635219).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 27, 49635219).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 28, 49645754).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 29, 49645754).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 30, 49646390).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 31, 49646390).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 32, 49685944).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 33, 49685944).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 34, 49696848).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 35, 49696848).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 36, 49698302).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 37, 49698302).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 38, 49705038).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 39, 49705038).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 40, 49706928).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 41, 49706928).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 42, 49706970).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 43, 49706970).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 44, 49710813).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 45, 49710813).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 46, 49712954).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 47, 49712954).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 48, 49713584).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 49, 49713584).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 50, 49717435).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 51, 49717435).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 52, 49721221).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 53, 49721221).
raw_performed(i_p229_a1, participant_sweeps_kitchen_floor, 54, 49721272).
raw_performed(i_p229_a1, participant_uses_dust_pan_and_brush, 55, 49721272).
raw_performed(i_p229_a1, participant_returns_broom_to_supply_closet, 56, 49741101).
raw_performed(i_p229_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 57, 49752471).
raw_performed(i_p229_a1, participant_dusts_dining_room, 58, 49823877).
raw_performed(i_p229_a1, participant_dusts_dining_room, 59, 49833624).
raw_performed(i_p229_a1, participant_dusts_dining_room, 60, 49837237).
raw_performed(i_p229_a1, participant_dusts_dining_room, 61, 49851801).
raw_performed(i_p229_a1, participant_dusts_dining_room, 62, 49859952).
raw_performed(i_p229_a1, participant_dusts_dining_room, 63, 49864951).
raw_performed(i_p229_a1, participant_dusts_dining_room, 64, 49876411).
raw_performed(i_p229_a1, participant_dusts_dining_room, 65, 49880675).
raw_performed(i_p229_a1, participant_dusts_dining_room, 66, 49888183).
raw_performed(i_p229_a1, participant_dusts_living_room, 67, 49892236).
raw_performed(i_p229_a1, participant_dusts_living_room, 68, 49893457).
raw_performed(i_p229_a1, participant_dusts_living_room, 69, 49904062).
raw_performed(i_p229_a1, participant_dusts_living_room, 70, 49911231).
raw_performed(i_p229_a1, participant_dusts_living_room, 71, 49914711).
raw_performed(i_p229_a1, participant_dusts_living_room, 72, 49923242).
raw_performed(i_p229_a1, participant_dusts_living_room, 73, 49926546).
raw_performed(i_p229_a1, participant_dusts_living_room, 74, 49932673).
raw_performed(i_p229_a1, participant_dusts_living_room, 75, 49932697).
raw_performed(i_p229_a1, participant_dusts_living_room, 76, 49939821).
raw_performed(i_p229_a1, participant_dusts_living_room, 77, 49944245).
raw_performed(i_p229_a1, participant_dusts_living_room, 78, 49944269).
raw_performed(i_p229_a1, participant_dusts_living_room, 79, 49951372).
raw_performed(i_p229_a1, participant_dusts_living_room, 80, 49958957).
raw_performed(i_p229_a1, participant_dusts_living_room, 81, 49967084).
raw_performed(i_p229_a1, participant_dusts_living_room, 82, 49967736).
raw_performed(i_p229_a1, participant_dusts_living_room, 83, 50010867).
raw_performed(i_p229_a1, participant_dusts_living_room, 84, 50015998).
raw_performed(i_p229_a1, participant_dusts_living_room, 85, 50022104).
raw_performed(i_p229_a1, participant_dusts_living_room, 86, 50034035).
raw_performed(i_p229_a1, participant_dusts_living_room, 87, 50035476).
raw_performed(i_p229_a1, participant_dusts_living_room, 88, 50052883).
raw_performed(i_p229_a1, participant_dusts_living_room, 89, 50053919).

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

