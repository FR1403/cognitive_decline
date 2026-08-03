% ======================================================================
% Paziente 251
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

instance(i_p251_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p251_a1, participant_retrieves_broom_from_supply_closet, 1, 50789009).
raw_performed(i_p251_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 50789009).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 3, 50800001).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 4, 50800001).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 5, 50811055).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 6, 50811055).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 7, 50816055).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 8, 50816055).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 9, 50818042).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 10, 50818042).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 11, 50822064).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 12, 50822064).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 13, 50829005).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 14, 50829005).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 15, 50840039).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 16, 50840039).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 17, 50843084).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 18, 50843084).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 19, 50850015).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 20, 50850015).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 21, 50866019).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 22, 50866019).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 23, 50874096).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 24, 50874096).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 25, 50878004).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 26, 50878004).
raw_performed(i_p251_a1, participant_sweeps_kitchen_floor, 27, 50891038).
raw_performed(i_p251_a1, participant_uses_dust_pan_and_brush, 28, 50891038).
raw_performed(i_p251_a1, participant_retrieves_duster_from_supply_closet, 29, 50893046).
raw_performed(i_p251_a1, participant_returns_broom_to_supply_closet, 30, 50893046).
raw_performed(i_p251_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 31, 50893046).
raw_performed(i_p251_a1, participant_dusts_living_room, 32, 50920094).
raw_performed(i_p251_a1, participant_dusts_living_room, 33, 50922004).
raw_performed(i_p251_a1, participant_dusts_living_room, 34, 50922069).
raw_performed(i_p251_a1, participant_dusts_living_room, 35, 50925000).
raw_performed(i_p251_a1, participant_dusts_living_room, 36, 50927073).
raw_performed(i_p251_a1, participant_dusts_living_room, 37, 50933023).
raw_performed(i_p251_a1, participant_dusts_living_room, 38, 50937070).
raw_performed(i_p251_a1, participant_dusts_living_room, 39, 50938031).
raw_performed(i_p251_a1, participant_dusts_living_room, 40, 50942030).
raw_performed(i_p251_a1, participant_dusts_living_room, 41, 50947035).
raw_performed(i_p251_a1, participant_dusts_living_room, 42, 50949024).
raw_performed(i_p251_a1, participant_dusts_living_room, 43, 50951083).
raw_performed(i_p251_a1, participant_dusts_living_room, 44, 50952045).
raw_performed(i_p251_a1, participant_dusts_living_room, 45, 50960003).
raw_performed(i_p251_a1, participant_dusts_living_room, 46, 50963054).
raw_performed(i_p251_a1, participant_dusts_living_room, 47, 50963057).
raw_performed(i_p251_a1, participant_dusts_living_room, 48, 50980070).
raw_performed(i_p251_a1, participant_dusts_living_room, 49, 50988022).
raw_performed(i_p251_a1, participant_dusts_living_room, 50, 50995027).
raw_performed(i_p251_a1, participant_dusts_living_room, 51, 50999084).
raw_performed(i_p251_a1, participant_dusts_living_room, 52, 51010014).
raw_performed(i_p251_a1, participant_dusts_living_room, 53, 51017043).
raw_performed(i_p251_a1, participant_dusts_living_room, 54, 51018003).
raw_performed(i_p251_a1, participant_dusts_dining_room, 55, 51018067).
raw_performed(i_p251_a1, participant_dusts_dining_room, 56, 51019078).
raw_performed(i_p251_a1, participant_dusts_dining_room, 57, 51023006).
raw_performed(i_p251_a1, participant_dusts_dining_room, 58, 51032052).
raw_performed(i_p251_a1, participant_dusts_dining_room, 59, 51040045).
raw_performed(i_p251_a1, participant_dusts_dining_room, 60, 51042093).
raw_performed(i_p251_a1, participant_dusts_dining_room, 61, 51047010).
raw_performed(i_p251_a1, participant_dusts_dining_room, 62, 51053053).
raw_performed(i_p251_a1, participant_dusts_dining_room, 63, 51063008).
raw_performed(i_p251_a1, participant_dusts_dining_room, 64, 51072046).
raw_performed(i_p251_a1, participant_dusts_dining_room, 65, 51078094).
raw_performed(i_p251_a1, participant_dusts_living_room, 66, 51079062).
raw_performed(i_p251_a1, participant_dusts_living_room, 67, 51080002).
raw_performed(i_p251_a1, participant_dusts_living_room, 68, 51086006).
raw_performed(i_p251_a1, participant_dusts_living_room, 69, 51087029).
raw_performed(i_p251_a1, participant_dusts_living_room, 70, 51102099).
raw_performed(i_p251_a1, participant_dusts_living_room, 71, 51103067).
raw_performed(i_p251_a1, participant_dusts_living_room, 72, 51108002).
raw_performed(i_p251_a1, participant_dusts_living_room, 73, 51110058).
raw_performed(i_p251_a1, participant_dusts_dining_room, 74, 51111018).
raw_performed(i_p251_a1, participant_dusts_dining_room, 75, 51114080).
raw_performed(i_p251_a1, participant_dusts_living_room, 76, 51118007).
raw_performed(i_p251_a1, participant_dusts_dining_room, 77, 51119080).
raw_performed(i_p251_a1, participant_dusts_living_room, 78, 51124024).
raw_performed(i_p251_a1, participant_dusts_living_room, 79, 51125069).
raw_performed(i_p251_a1, participant_dusts_living_room, 80, 51147008).
raw_performed(i_p251_a1, participant_dusts_living_room, 81, 51154023).
raw_performed(i_p251_a1, participant_dusts_living_room, 82, 51155037).
raw_performed(i_p251_a1, participant_dusts_living_room, 83, 51155092).

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

