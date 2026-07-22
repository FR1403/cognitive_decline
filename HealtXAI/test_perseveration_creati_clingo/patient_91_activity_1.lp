% ======================================================================
% Paziente 91
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

instance(i_p91_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p91_a1, participant_retrieves_broom_from_supply_closet, 1, 52368052).
raw_performed(i_p91_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 52368052).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 3, 52379003).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 4, 52379003).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 5, 52382088).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 6, 52382088).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 7, 52385043).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 8, 52385043).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 9, 52394000).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 10, 52394000).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 11, 52398003).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 12, 52398003).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 13, 52403016).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 14, 52403016).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 15, 52408083).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 16, 52408083).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 17, 52410029).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 18, 52410029).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 19, 52424067).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 20, 52424067).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 21, 52453044).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 22, 52453044).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 23, 52459054).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 24, 52459054).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 25, 52460018).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 26, 52460018).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 27, 52484077).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 28, 52484077).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 29, 52486025).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 30, 52486025).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 31, 52489099).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 32, 52489099).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 33, 52503061).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 34, 52503061).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 35, 52504065).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 36, 52504065).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 37, 52511032).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 38, 52511032).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 39, 52514020).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 40, 52514020).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 41, 52533095).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 42, 52533095).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 43, 52536064).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 44, 52536064).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 45, 52544058).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 46, 52544058).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 47, 52551005).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 48, 52551005).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 49, 52555003).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 50, 52555003).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 51, 52561025).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 52, 52561025).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 53, 52568058).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 54, 52568058).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 55, 52582073).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 56, 52582073).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 57, 52584020).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 58, 52584020).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 59, 52586009).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 60, 52586009).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 61, 52593075).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 62, 52593075).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 63, 52619003).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 64, 52619003).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 65, 52620096).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 66, 52620096).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 67, 52626040).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 68, 52626040).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 69, 52633051).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 70, 52633051).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 71, 52637025).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 72, 52637025).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 73, 52642026).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 74, 52642026).
raw_performed(i_p91_a1, participant_sweeps_kitchen_floor, 75, 52645066).
raw_performed(i_p91_a1, participant_uses_dust_pan_and_brush, 76, 52645066).
raw_performed(i_p91_a1, participant_returns_broom_to_supply_closet, 77, 52651031).
raw_performed(i_p91_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 78, 52651031).
raw_performed(i_p91_a1, participant_dusts_dining_room, 79, 52681050).
raw_performed(i_p91_a1, participant_dusts_dining_room, 80, 52693072).
raw_performed(i_p91_a1, participant_dusts_dining_room, 81, 52696004).
raw_performed(i_p91_a1, participant_dusts_dining_room, 82, 52700097).
raw_performed(i_p91_a1, participant_dusts_dining_room, 83, 52707050).
raw_performed(i_p91_a1, participant_dusts_dining_room, 84, 52711026).
raw_performed(i_p91_a1, participant_dusts_dining_room, 85, 52713054).
raw_performed(i_p91_a1, participant_dusts_living_room, 86, 52729084).
raw_performed(i_p91_a1, participant_dusts_dining_room, 87, 52730084).
raw_performed(i_p91_a1, participant_dusts_living_room, 88, 52740062).
raw_performed(i_p91_a1, participant_dusts_living_room, 89, 52743029).
raw_performed(i_p91_a1, participant_dusts_living_room, 90, 52743092).
raw_performed(i_p91_a1, participant_dusts_living_room, 91, 52750080).
raw_performed(i_p91_a1, participant_dusts_living_room, 92, 52757095).
raw_performed(i_p91_a1, participant_dusts_living_room, 93, 52758078).
raw_performed(i_p91_a1, participant_dusts_living_room, 94, 52777022).
raw_performed(i_p91_a1, participant_dusts_living_room, 95, 52784069).
raw_performed(i_p91_a1, participant_dusts_living_room, 96, 52819044).
raw_performed(i_p91_a1, participant_dusts_living_room, 97, 52827054).
raw_performed(i_p91_a1, participant_dusts_living_room, 98, 52828017).
raw_performed(i_p91_a1, participant_dusts_living_room, 99, 52830046).
raw_performed(i_p91_a1, participant_dusts_living_room, 100, 52836014).
raw_performed(i_p91_a1, participant_dusts_living_room, 101, 52837080).
raw_performed(i_p91_a1, participant_dusts_living_room, 102, 52851033).
raw_performed(i_p91_a1, participant_dusts_living_room, 103, 52857085).
raw_performed(i_p91_a1, participant_dusts_living_room, 104, 52858048).
raw_performed(i_p91_a1, participant_returns_duster_to_supply_closet, 105, 52877023).

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

