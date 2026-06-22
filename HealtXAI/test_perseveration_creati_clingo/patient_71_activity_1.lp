% ======================================================================
% Paziente 71
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
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 39091).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 321534).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 141540).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 159196).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 504615).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26492).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 22029).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 205578).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p71_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p71_a1, participant_retrieves_broom_from_supply_closet, 1, 35242283).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 2, 35267284).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 3, 35271929).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 4, 35274584).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 5, 35275096).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 6, 35284414).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 7, 35286713).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 8, 35291377).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 9, 35310981).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 10, 35322792).
raw_performed(i_p71_a1, participant_sweeps_kitchen_floor, 11, 35323448).
raw_performed(i_p71_a1, participant_retrieves_dust_pan_and_brush_from_closet, 12, 35326932).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 13, 35328514).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 14, 35334425).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 15, 35342488).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 16, 35343648).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 17, 35348846).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 18, 35349457).
raw_performed(i_p71_a1, participant_uses_dust_pan_and_brush, 19, 35351327).
raw_performed(i_p71_a1, participant_retrieves_duster_from_supply_closet, 20, 35364483).
raw_performed(i_p71_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 21, 35368583).
raw_performed(i_p71_a1, participant_returns_broom_to_supply_closet, 22, 35368719).
raw_performed(i_p71_a1, participant_dusts_living_room, 23, 35381626).
raw_performed(i_p71_a1, participant_dusts_living_room, 24, 35385412).
raw_performed(i_p71_a1, participant_dusts_living_room, 25, 35392145).
raw_performed(i_p71_a1, participant_dusts_living_room, 26, 35403088).
raw_performed(i_p71_a1, participant_dusts_living_room, 27, 35404447).
raw_performed(i_p71_a1, participant_dusts_living_room, 28, 35423071).
raw_performed(i_p71_a1, participant_dusts_living_room, 29, 35467362).
raw_performed(i_p71_a1, participant_dusts_living_room, 30, 35469066).
raw_performed(i_p71_a1, participant_dusts_living_room, 31, 35482959).
raw_performed(i_p71_a1, participant_dusts_living_room, 32, 35483798).
raw_performed(i_p71_a1, participant_dusts_living_room, 33, 35505690).
raw_performed(i_p71_a1, participant_dusts_living_room, 34, 35508567).
raw_performed(i_p71_a1, participant_dusts_living_room, 35, 35508971).
raw_performed(i_p71_a1, participant_dusts_living_room, 36, 35512127).
raw_performed(i_p71_a1, participant_dusts_living_room, 37, 35514044).
raw_performed(i_p71_a1, participant_dusts_living_room, 38, 35522093).
raw_performed(i_p71_a1, participant_dusts_living_room, 39, 35524253).
raw_performed(i_p71_a1, participant_dusts_living_room, 40, 35525094).
raw_performed(i_p71_a1, participant_dusts_dining_room, 41, 35532427).
raw_performed(i_p71_a1, participant_dusts_dining_room, 42, 35533445).
raw_performed(i_p71_a1, participant_dusts_dining_room, 43, 35535478).
raw_performed(i_p71_a1, participant_dusts_dining_room, 44, 35546591).
raw_performed(i_p71_a1, participant_dusts_dining_room, 45, 35551499).
raw_performed(i_p71_a1, participant_dusts_dining_room, 46, 35555480).
raw_performed(i_p71_a1, participant_dusts_dining_room, 47, 35558951).
raw_performed(i_p71_a1, participant_dusts_dining_room, 48, 35565521).
raw_performed(i_p71_a1, participant_dusts_dining_room, 49, 35569869).
raw_performed(i_p71_a1, participant_dusts_dining_room, 50, 35574520).
raw_performed(i_p71_a1, participant_dusts_dining_room, 51, 35576048).
raw_performed(i_p71_a1, participant_dusts_dining_room, 52, 35576418).
raw_performed(i_p71_a1, participant_dusts_dining_room, 53, 35584418).
raw_performed(i_p71_a1, participant_dusts_dining_room, 54, 35586164).
raw_performed(i_p71_a1, participant_dusts_dining_room, 55, 35592765).
raw_performed(i_p71_a1, participant_dusts_dining_room, 56, 35596012).
raw_performed(i_p71_a1, participant_dusts_dining_room, 57, 35601685).
raw_performed(i_p71_a1, participant_dusts_dining_room, 58, 35604535).
raw_performed(i_p71_a1, participant_dusts_dining_room, 59, 35609308).
raw_performed(i_p71_a1, participant_dusts_dining_room, 60, 35611236).
raw_performed(i_p71_a1, participant_dusts_dining_room, 61, 35619524).

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

