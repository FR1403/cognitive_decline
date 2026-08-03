% ======================================================================
% Paziente 105
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

instance(i_p105_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p105_a1, participant_retrieves_broom_from_supply_closet, 1, 48861021).
raw_performed(i_p105_a1, participant_retrieves_duster_from_supply_closet, 2, 48863412).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 3, 48867376).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 4, 48868531).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 5, 48870058).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 6, 48870716).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 7, 48873590).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 8, 48874948).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 9, 48875698).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 10, 48888653).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 11, 48891581).
raw_performed(i_p105_a1, participant_retrieves_dust_pan_and_brush_from_closet, 12, 48897184).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 13, 48898891).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 14, 48901756).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 15, 48906723).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 16, 48928281).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 17, 48930334).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 18, 48930352).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 19, 48934139).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 20, 48952373).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 21, 48963306).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 22, 48963306).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 23, 48964333).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 24, 48964333).
raw_performed(i_p105_a1, participant_sweeps_kitchen_floor, 25, 48965391).
raw_performed(i_p105_a1, participant_uses_dust_pan_and_brush, 26, 48965391).
raw_performed(i_p105_a1, participant_returns_broom_to_supply_closet, 27, 48965999).
raw_performed(i_p105_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 28, 48965999).
raw_performed(i_p105_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 29, 48988501).
raw_performed(i_p105_a1, participant_returns_broom_to_supply_closet, 30, 48991620).
raw_performed(i_p105_a1, participant_dusts_dining_room, 31, 48993122).
raw_performed(i_p105_a1, participant_dusts_dining_room, 32, 48998613).
raw_performed(i_p105_a1, participant_dusts_dining_room, 33, 49003596).
raw_performed(i_p105_a1, participant_dusts_dining_room, 34, 49012373).
raw_performed(i_p105_a1, participant_dusts_dining_room, 35, 49013751).
raw_performed(i_p105_a1, participant_dusts_dining_room, 36, 49024103).
raw_performed(i_p105_a1, participant_dusts_dining_room, 37, 49024481).
raw_performed(i_p105_a1, participant_dusts_dining_room, 38, 49030813).
raw_performed(i_p105_a1, participant_dusts_dining_room, 39, 49034936).
raw_performed(i_p105_a1, participant_dusts_dining_room, 40, 49041752).
raw_performed(i_p105_a1, participant_dusts_dining_room, 41, 49043643).
raw_performed(i_p105_a1, participant_dusts_dining_room, 42, 49046309).
raw_performed(i_p105_a1, participant_dusts_dining_room, 43, 49053983).
raw_performed(i_p105_a1, participant_dusts_dining_room, 44, 49054833).
raw_performed(i_p105_a1, participant_dusts_dining_room, 45, 49057739).
raw_performed(i_p105_a1, participant_dusts_dining_room, 46, 49064928).
raw_performed(i_p105_a1, participant_dusts_dining_room, 47, 49068301).
raw_performed(i_p105_a1, participant_dusts_living_room, 48, 49070744).
raw_performed(i_p105_a1, participant_dusts_dining_room, 49, 49071121).
raw_performed(i_p105_a1, participant_dusts_living_room, 50, 49075031).
raw_performed(i_p105_a1, participant_dusts_living_room, 51, 49076866).
raw_performed(i_p105_a1, participant_dusts_living_room, 52, 49084688).
raw_performed(i_p105_a1, participant_dusts_living_room, 53, 49090834).
raw_performed(i_p105_a1, participant_dusts_living_room, 54, 49093988).
raw_performed(i_p105_a1, participant_dusts_living_room, 55, 49094954).
raw_performed(i_p105_a1, participant_dusts_living_room, 56, 49103830).
raw_performed(i_p105_a1, participant_dusts_living_room, 57, 49118963).
raw_performed(i_p105_a1, participant_dusts_living_room, 58, 49118991).
raw_performed(i_p105_a1, participant_dusts_living_room, 59, 49119008).
raw_performed(i_p105_a1, participant_dusts_dining_room, 60, 49122394).
raw_performed(i_p105_a1, participant_dusts_dining_room, 61, 49124456).
raw_performed(i_p105_a1, participant_returns_duster_to_supply_closet, 62, 49152333).
raw_performed(i_p105_a1, participant_returns_duster_to_supply_closet, 63, 49158928).

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

