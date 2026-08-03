% ======================================================================
% Paziente 375
% Attivita: Wash and dry all kitchen countertop surfaces.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_and_dry_all_kitchen_countertop_surfaces).

action(participant_locates_the_sponge).
action(participant_locates_the_dish_detergent).
action(participant_wets_the_sponge).
action(participant_lathers_the_sponge_with_the_detergent).
action(participant_washes_the_countertops).
action(participant_rinses_out_the_sponge).
action(participant_dries_the_countertops).
action(participant_returns_the_sponge_to_the_sponge_drying_dish).

action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 10).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 5).
action_type(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 12).

expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 1).
expected_count(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 1).

action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_sponge, 17266).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_locates_the_dish_detergent, 91).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, 276069).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, 103550).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, 156154).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, 123649).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, 100328).
action_gap(wash_and_dry_all_kitchen_countertop_surfaces, participant_returns_the_sponge_to_the_sponge_drying_dish, 4392).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p375_a11, wash_and_dry_all_kitchen_countertop_surfaces).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p375_a11, participant_wets_the_sponge, 1, 52705223).
raw_performed(i_p375_a11, participant_wets_the_sponge, 2, 52707705).
raw_performed(i_p375_a11, participant_wets_the_sponge, 3, 52710184).
raw_performed(i_p375_a11, participant_wets_the_sponge, 4, 52715155).
raw_performed(i_p375_a11, participant_washes_the_countertops, 5, 52722652).
raw_performed(i_p375_a11, participant_washes_the_countertops, 6, 52733810).
raw_performed(i_p375_a11, participant_washes_the_countertops, 7, 52749809).
raw_performed(i_p375_a11, participant_washes_the_countertops, 8, 52752376).
raw_performed(i_p375_a11, participant_wets_the_sponge, 9, 52757243).
raw_performed(i_p375_a11, participant_wets_the_sponge, 10, 52759714).
raw_performed(i_p375_a11, participant_wets_the_sponge, 11, 52762203).
raw_performed(i_p375_a11, participant_wets_the_sponge, 12, 52767131).
raw_performed(i_p375_a11, participant_wets_the_sponge, 13, 52769610).
raw_performed(i_p375_a11, participant_wets_the_sponge, 14, 52772109).
raw_performed(i_p375_a11, participant_wets_the_sponge, 15, 52772142).
raw_performed(i_p375_a11, participant_wets_the_sponge, 16, 52774555).
raw_performed(i_p375_a11, participant_wets_the_sponge, 17, 52774587).
raw_performed(i_p375_a11, participant_rinses_out_the_sponge, 18, 52775000).
raw_performed(i_p375_a11, participant_wets_the_sponge, 19, 52777039).
raw_performed(i_p375_a11, participant_wets_the_sponge, 20, 52779545).
raw_performed(i_p375_a11, participant_wets_the_sponge, 21, 52779577).
raw_performed(i_p375_a11, participant_wets_the_sponge, 22, 52781997).
raw_performed(i_p375_a11, participant_wets_the_sponge, 23, 52784450).
raw_performed(i_p375_a11, participant_wets_the_sponge, 24, 52784468).
raw_performed(i_p375_a11, participant_wets_the_sponge, 25, 52786920).
raw_performed(i_p375_a11, participant_wets_the_sponge, 26, 52786939).
raw_performed(i_p375_a11, participant_wets_the_sponge, 27, 52789400).
raw_performed(i_p375_a11, participant_wets_the_sponge, 28, 52791870).
raw_performed(i_p375_a11, participant_wets_the_sponge, 29, 52791889).
raw_performed(i_p375_a11, participant_wets_the_sponge, 30, 52796807).
raw_performed(i_p375_a11, participant_wets_the_sponge, 31, 52799270).
raw_performed(i_p375_a11, participant_wets_the_sponge, 32, 52801763).
raw_performed(i_p375_a11, participant_wets_the_sponge, 33, 52801803).
raw_performed(i_p375_a11, participant_wets_the_sponge, 34, 52804228).
raw_performed(i_p375_a11, participant_washes_the_countertops, 35, 52804779).
raw_performed(i_p375_a11, participant_wets_the_sponge, 36, 52806744).
raw_performed(i_p375_a11, participant_wets_the_sponge, 37, 52809218).
raw_performed(i_p375_a11, participant_wets_the_sponge, 38, 52809237).
raw_performed(i_p375_a11, participant_wets_the_sponge, 39, 52811666).
raw_performed(i_p375_a11, participant_wets_the_sponge, 40, 52811687).
raw_performed(i_p375_a11, participant_wets_the_sponge, 41, 52821558).
raw_performed(i_p375_a11, participant_wets_the_sponge, 42, 52821601).
raw_performed(i_p375_a11, participant_wets_the_sponge, 43, 52824021).
raw_performed(i_p375_a11, participant_wets_the_sponge, 44, 52826503).
raw_performed(i_p375_a11, participant_wets_the_sponge, 45, 52826573).
raw_performed(i_p375_a11, participant_wets_the_sponge, 46, 52828958).
raw_performed(i_p375_a11, participant_wets_the_sponge, 47, 52828975).
raw_performed(i_p375_a11, participant_wets_the_sponge, 48, 52831426).
raw_performed(i_p375_a11, participant_wets_the_sponge, 49, 52833900).
raw_performed(i_p375_a11, participant_wets_the_sponge, 50, 52833917).
raw_performed(i_p375_a11, participant_wets_the_sponge, 51, 52836398).
raw_performed(i_p375_a11, participant_wets_the_sponge, 52, 52838837).
raw_performed(i_p375_a11, participant_wets_the_sponge, 53, 52838856).
raw_performed(i_p375_a11, participant_wets_the_sponge, 54, 52841306).
raw_performed(i_p375_a11, participant_wets_the_sponge, 55, 52841342).
raw_performed(i_p375_a11, participant_wets_the_sponge, 56, 52843782).
raw_performed(i_p375_a11, participant_wets_the_sponge, 57, 52846252).
raw_performed(i_p375_a11, participant_wets_the_sponge, 58, 52848734).
raw_performed(i_p375_a11, participant_wets_the_sponge, 59, 52851206).
raw_performed(i_p375_a11, participant_washes_the_countertops, 60, 52852051).
raw_performed(i_p375_a11, participant_washes_the_countertops, 61, 52854139).
raw_performed(i_p375_a11, participant_washes_the_countertops, 62, 52860139).
raw_performed(i_p375_a11, participant_washes_the_countertops, 63, 52872451).
raw_performed(i_p375_a11, participant_washes_the_countertops, 64, 52899438).
raw_performed(i_p375_a11, participant_wets_the_sponge, 65, 52903144).
raw_performed(i_p375_a11, participant_wets_the_sponge, 66, 52905611).
raw_performed(i_p375_a11, participant_wets_the_sponge, 67, 52908066).
raw_performed(i_p375_a11, participant_washes_the_countertops, 68, 52909347).
raw_performed(i_p375_a11, participant_washes_the_countertops, 69, 52909366).
raw_performed(i_p375_a11, participant_wets_the_sponge, 70, 52910539).
raw_performed(i_p375_a11, participant_washes_the_countertops, 71, 52914182).
raw_performed(i_p375_a11, participant_washes_the_countertops, 72, 52922732).
raw_performed(i_p375_a11, participant_washes_the_countertops, 73, 52931991).
raw_performed(i_p375_a11, participant_washes_the_countertops, 74, 52933667).
raw_performed(i_p375_a11, participant_washes_the_countertops, 75, 52938488).
raw_performed(i_p375_a11, participant_washes_the_countertops, 76, 52951044).
raw_performed(i_p375_a11, participant_washes_the_countertops, 77, 52953502).
raw_performed(i_p375_a11, participant_washes_the_countertops, 78, 52958258).
raw_performed(i_p375_a11, participant_washes_the_countertops, 79, 52962567).
raw_performed(i_p375_a11, participant_wets_the_sponge, 80, 52974788).
raw_performed(i_p375_a11, participant_wets_the_sponge, 81, 52977277).
raw_performed(i_p375_a11, participant_wets_the_sponge, 82, 52982228).
raw_performed(i_p375_a11, participant_wets_the_sponge, 83, 52984663).
raw_performed(i_p375_a11, participant_washes_the_countertops, 84, 52984712).
raw_performed(i_p375_a11, participant_rinses_out_the_sponge, 85, 52989650).
raw_performed(i_p375_a11, participant_rinses_out_the_sponge, 86, 52992101).
raw_performed(i_p375_a11, participant_rinses_out_the_sponge, 87, 52994572).
raw_performed(i_p375_a11, participant_dries_the_countertops, 88, 52994695).
raw_performed(i_p375_a11, participant_dries_the_countertops, 89, 53014978).
raw_performed(i_p375_a11, participant_dries_the_countertops, 90, 53020374).
raw_performed(i_p375_a11, participant_dries_the_countertops, 91, 53028730).

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

