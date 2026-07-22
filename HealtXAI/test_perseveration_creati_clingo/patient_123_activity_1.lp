% ======================================================================
% Paziente 123
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

instance(i_p123_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p123_a1, participant_retrieves_broom_from_supply_closet, 1, 34773515).
raw_performed(i_p123_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 34773515).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 3, 34784989).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 4, 34784989).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 5, 34787202).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 6, 34787202).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 7, 34792564).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 8, 34792564).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 9, 34799067).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 10, 34799067).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 11, 34802315).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 12, 34802315).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 13, 34807059).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 14, 34807059).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 15, 34807569).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 16, 34807569).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 17, 34826008).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 18, 34826008).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 19, 34826030).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 20, 34826030).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 21, 34826923).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 22, 34826923).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 23, 34829507).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 24, 34829507).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 25, 34843242).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 26, 34843242).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 27, 34844782).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 28, 34844782).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 29, 34862071).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 30, 34862071).
raw_performed(i_p123_a1, participant_sweeps_kitchen_floor, 31, 34869722).
raw_performed(i_p123_a1, participant_uses_dust_pan_and_brush, 32, 34869722).
raw_performed(i_p123_a1, participant_retrieves_duster_from_supply_closet, 33, 34891963).
raw_performed(i_p123_a1, participant_returns_broom_to_supply_closet, 34, 34891963).
raw_performed(i_p123_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 35, 34891963).
raw_performed(i_p123_a1, participant_dusts_dining_room, 36, 34913536).
raw_performed(i_p123_a1, participant_dusts_dining_room, 37, 34914638).
raw_performed(i_p123_a1, participant_dusts_dining_room, 38, 34928013).
raw_performed(i_p123_a1, participant_dusts_dining_room, 39, 34932002).
raw_performed(i_p123_a1, participant_dusts_dining_room, 40, 34937070).
raw_performed(i_p123_a1, participant_dusts_dining_room, 41, 34942632).
raw_performed(i_p123_a1, participant_dusts_dining_room, 42, 34954069).
raw_performed(i_p123_a1, participant_dusts_dining_room, 43, 34956023).
raw_performed(i_p123_a1, participant_dusts_dining_room, 44, 34962048).
raw_performed(i_p123_a1, participant_dusts_dining_room, 45, 34966040).
raw_performed(i_p123_a1, participant_dusts_dining_room, 46, 34969009).
raw_performed(i_p123_a1, participant_dusts_dining_room, 47, 34974004).
raw_performed(i_p123_a1, participant_dusts_dining_room, 48, 34991781).
raw_performed(i_p123_a1, participant_dusts_dining_room, 49, 35009058).
raw_performed(i_p123_a1, participant_dusts_dining_room, 50, 35021539).
raw_performed(i_p123_a1, participant_dusts_dining_room, 51, 35022061).
raw_performed(i_p123_a1, participant_dusts_living_room, 52, 35026007).
raw_performed(i_p123_a1, participant_dusts_living_room, 53, 35029098).
raw_performed(i_p123_a1, participant_dusts_living_room, 54, 35029546).
raw_performed(i_p123_a1, participant_dusts_living_room, 55, 35037663).
raw_performed(i_p123_a1, participant_dusts_living_room, 56, 35041559).
raw_performed(i_p123_a1, participant_dusts_living_room, 57, 35049394).
raw_performed(i_p123_a1, participant_dusts_living_room, 58, 35053725).
raw_performed(i_p123_a1, participant_dusts_living_room, 59, 35062794).
raw_performed(i_p123_a1, participant_dusts_living_room, 60, 35075062).
raw_performed(i_p123_a1, participant_dusts_living_room, 61, 35079492).
raw_performed(i_p123_a1, participant_dusts_living_room, 62, 35082541).
raw_performed(i_p123_a1, participant_dusts_living_room, 63, 35106075).
raw_performed(i_p123_a1, participant_dusts_living_room, 64, 35116704).
raw_performed(i_p123_a1, participant_dusts_living_room, 65, 35117079).
raw_performed(i_p123_a1, participant_dusts_living_room, 66, 35122016).
raw_performed(i_p123_a1, participant_dusts_living_room, 67, 35123092).
raw_performed(i_p123_a1, participant_dusts_living_room, 68, 35134093).
raw_performed(i_p123_a1, participant_dusts_living_room, 69, 35138072).
raw_performed(i_p123_a1, participant_dusts_living_room, 70, 35148869).
raw_performed(i_p123_a1, participant_dusts_living_room, 71, 35148892).
raw_performed(i_p123_a1, participant_dusts_living_room, 72, 35150854).
raw_performed(i_p123_a1, participant_dusts_living_room, 73, 35162092).
raw_performed(i_p123_a1, participant_dusts_living_room, 74, 35164487).
raw_performed(i_p123_a1, participant_dusts_living_room, 75, 35179046).
raw_performed(i_p123_a1, participant_dusts_living_room, 76, 35181018).
raw_performed(i_p123_a1, participant_dusts_living_room, 77, 35183017).
raw_performed(i_p123_a1, participant_dusts_dining_room, 78, 35184003).
raw_performed(i_p123_a1, participant_dusts_dining_room, 79, 35185298).
raw_performed(i_p123_a1, participant_dusts_dining_room, 80, 35188009).
raw_performed(i_p123_a1, participant_dusts_dining_room, 81, 35188093).
raw_performed(i_p123_a1, participant_dusts_dining_room, 82, 35190043).
raw_performed(i_p123_a1, participant_dusts_dining_room, 83, 35201049).
raw_performed(i_p123_a1, participant_dusts_dining_room, 84, 35207063).
raw_performed(i_p123_a1, participant_dusts_dining_room, 85, 35209374).
raw_performed(i_p123_a1, participant_dusts_dining_room, 86, 35211099).
raw_performed(i_p123_a1, participant_returns_duster_to_supply_closet, 87, 35247036).

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

