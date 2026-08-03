% ======================================================================
% Paziente 53
% Attivita: Prepare a cup of soup using the microwave.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(prepare_a_cup_of_soup_using_the_microwave).

action(participant_retrieves_materials_from_cupboard_a).
action(participant_fills_measuring_cup_with_water).
action(participant_boils_water_in_microwave).
action(participant_pours_water_into_cup_of_noodles).
action(participant_retrieves_pitcher_of_water_from_refrigerator).
action(participant_pours_glass_of_water).
action(participant_returns_pitcher_of_water).
action(participant_waits_for_water_to_simmer_in_cup_of_noodles).
action(participant_brings_all_items_to_dining_room_table).

action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 5).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 12).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 8).
action_type(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 7).

expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 1).
expected_count(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 1).

action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_materials_from_cupboard_a, 437605).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_fills_measuring_cup_with_water, 2749284).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_boils_water_in_microwave, 328296).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_water_into_cup_of_noodles, 211844).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_retrieves_pitcher_of_water_from_refrigerator, 302796).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_pours_glass_of_water, 307897).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_returns_pitcher_of_water, 301246).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_waits_for_water_to_simmer_in_cup_of_noodles, 213072).
action_gap(prepare_a_cup_of_soup_using_the_microwave, participant_brings_all_items_to_dining_room_table, 408640).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p53_a7, prepare_a_cup_of_soup_using_the_microwave).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p53_a7, participant_retrieves_materials_from_cupboard_a, 1, 54831854).
raw_performed(i_p53_a7, participant_retrieves_materials_from_cupboard_a, 2, 54856259).
raw_performed(i_p53_a7, participant_fills_measuring_cup_with_water, 3, 54866099).
raw_performed(i_p53_a7, participant_fills_measuring_cup_with_water, 4, 54869021).
raw_performed(i_p53_a7, participant_fills_measuring_cup_with_water, 5, 54873000).
raw_performed(i_p53_a7, participant_fills_measuring_cup_with_water, 6, 54876079).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 7, 54885077).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 8, 54888607).
raw_performed(i_p53_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 9, 54902497).
raw_performed(i_p53_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 10, 54906270).
raw_performed(i_p53_a7, participant_retrieves_pitcher_of_water_from_refrigerator, 11, 54908059).
raw_performed(i_p53_a7, participant_returns_pitcher_of_water, 12, 54921000).
raw_performed(i_p53_a7, participant_pours_glass_of_water, 13, 54921190).
raw_performed(i_p53_a7, participant_returns_pitcher_of_water, 14, 54924429).
raw_performed(i_p53_a7, participant_returns_pitcher_of_water, 15, 54924750).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 16, 54958092).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 17, 54958159).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 18, 54961019).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 19, 54962039).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 20, 54964030).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 21, 54983350).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 22, 54984033).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 23, 54985029).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 24, 55003023).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 25, 55012693).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 26, 55056349).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 27, 55059403).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 28, 55088018).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 29, 55113061).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 30, 55117060).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 31, 55160705).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 32, 55163426).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 33, 55172824).
raw_performed(i_p53_a7, participant_boils_water_in_microwave, 34, 55174037).
raw_performed(i_p53_a7, participant_pours_water_into_cup_of_noodles, 35, 55183068).
raw_performed(i_p53_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 36, 55192021).
raw_performed(i_p53_a7, participant_waits_for_water_to_simmer_in_cup_of_noodles, 37, 55196053).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 38, 55198734).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 39, 55199614).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 40, 55200186).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 41, 55204096).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 42, 55222811).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 43, 55225346).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 44, 55276004).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 45, 55278007).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 46, 55279065).
raw_performed(i_p53_a7, participant_brings_all_items_to_dining_room_table, 47, 55280294).

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

