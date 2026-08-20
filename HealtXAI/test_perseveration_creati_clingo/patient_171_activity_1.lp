% ======================================================================
% Paziente 171
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

action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_broom_from_supply_closet, 9078).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_duster_from_supply_closet, 68036).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_retrieves_dust_pan_and_brush_from_closet, 37696).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_sweeps_kitchen_floor, 271388).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_uses_dust_pan_and_brush, 109438).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_living_room, 122668).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_dusts_dining_room, 432609).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_broom_to_supply_closet, 26902).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participant_returns_duster_to_supply_closet, 21027).
action_gap(sweep_the_kitchen_and_dust_the_living_room, participants_returns_dust_pan_and_brush_to_supply_closet, 222487).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p171_a1, sweep_the_kitchen_and_dust_the_living_room).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p171_a1, participant_retrieves_broom_from_supply_closet, 1, 51543600).
raw_performed(i_p171_a1, participant_retrieves_dust_pan_and_brush_from_closet, 2, 51545276).
raw_performed(i_p171_a1, participant_retrieves_duster_from_supply_closet, 3, 51558910).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 4, 51560173).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 5, 51561206).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 6, 51564419).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 7, 51569335).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 8, 51570582).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 9, 51572776).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 10, 51585346).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 11, 51630969).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 12, 51635642).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 13, 51636257).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 14, 51642006).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 15, 51653358).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 16, 51656660).
raw_performed(i_p171_a1, participant_sweeps_kitchen_floor, 17, 51656679).
raw_performed(i_p171_a1, participant_uses_dust_pan_and_brush, 18, 51659283).
raw_performed(i_p171_a1, participant_uses_dust_pan_and_brush, 19, 51664149).
raw_performed(i_p171_a1, participant_uses_dust_pan_and_brush, 20, 51664737).
raw_performed(i_p171_a1, participant_uses_dust_pan_and_brush, 21, 51682197).
raw_performed(i_p171_a1, participant_uses_dust_pan_and_brush, 22, 51682870).
raw_performed(i_p171_a1, participants_returns_dust_pan_and_brush_to_supply_closet, 23, 51683690).
raw_performed(i_p171_a1, participant_returns_broom_to_supply_closet, 24, 51691666).
raw_performed(i_p171_a1, participant_dusts_dining_room, 25, 51696504).
raw_performed(i_p171_a1, participant_dusts_dining_room, 26, 51711710).
raw_performed(i_p171_a1, participant_dusts_dining_room, 27, 51711724).
raw_performed(i_p171_a1, participant_dusts_dining_room, 28, 51716933).
raw_performed(i_p171_a1, participant_dusts_dining_room, 29, 51719922).
raw_performed(i_p171_a1, participant_dusts_dining_room, 30, 51745590).
raw_performed(i_p171_a1, participant_dusts_dining_room, 31, 51746577).
raw_performed(i_p171_a1, participant_dusts_dining_room, 32, 51753246).
raw_performed(i_p171_a1, participant_dusts_dining_room, 33, 51756970).
raw_performed(i_p171_a1, participant_dusts_dining_room, 34, 51758026).
raw_performed(i_p171_a1, participant_dusts_dining_room, 35, 51764413).
raw_performed(i_p171_a1, participant_dusts_dining_room, 36, 51770500).
raw_performed(i_p171_a1, participant_dusts_dining_room, 37, 51783355).
raw_performed(i_p171_a1, participant_dusts_dining_room, 38, 51798596).
raw_performed(i_p171_a1, participant_dusts_dining_room, 39, 51802247).
raw_performed(i_p171_a1, participant_dusts_dining_room, 40, 51802263).
raw_performed(i_p171_a1, participant_dusts_dining_room, 41, 51808279).
raw_performed(i_p171_a1, participant_dusts_dining_room, 42, 51812172).
raw_performed(i_p171_a1, participant_dusts_dining_room, 43, 51818442).
raw_performed(i_p171_a1, participant_dusts_dining_room, 44, 51831187).
raw_performed(i_p171_a1, participant_dusts_dining_room, 45, 51834408).
raw_performed(i_p171_a1, participant_dusts_living_room, 46, 51835150).
raw_performed(i_p171_a1, participant_dusts_dining_room, 47, 51837471).
raw_performed(i_p171_a1, participant_dusts_dining_room, 48, 51858899).
raw_performed(i_p171_a1, participant_dusts_living_room, 49, 51866165).
raw_performed(i_p171_a1, participant_dusts_dining_room, 50, 51867243).
raw_performed(i_p171_a1, participant_dusts_dining_room, 51, 51871878).
raw_performed(i_p171_a1, participant_dusts_dining_room, 52, 51885234).
raw_performed(i_p171_a1, participant_dusts_dining_room, 53, 51891296).
raw_performed(i_p171_a1, participant_dusts_dining_room, 54, 51902937).
raw_performed(i_p171_a1, participant_dusts_dining_room, 55, 51907902).
raw_performed(i_p171_a1, participant_dusts_dining_room, 56, 51920645).
raw_performed(i_p171_a1, participant_dusts_living_room, 57, 51922886).
raw_performed(i_p171_a1, participant_dusts_dining_room, 58, 51948583).
raw_performed(i_p171_a1, participant_dusts_dining_room, 59, 51949472).
raw_performed(i_p171_a1, participant_dusts_living_room, 60, 51957675).
raw_performed(i_p171_a1, participant_dusts_living_room, 61, 51974524).
raw_performed(i_p171_a1, participant_dusts_living_room, 62, 51978505).
raw_performed(i_p171_a1, participant_dusts_living_room, 63, 51982567).
raw_performed(i_p171_a1, participant_dusts_living_room, 64, 51988415).
raw_performed(i_p171_a1, participant_dusts_living_room, 65, 51997029).
raw_performed(i_p171_a1, participant_dusts_living_room, 66, 51997924).
raw_performed(i_p171_a1, participant_dusts_living_room, 67, 52000750).
raw_performed(i_p171_a1, participant_dusts_living_room, 68, 52015079).
raw_performed(i_p171_a1, participant_dusts_living_room, 69, 52017313).
raw_performed(i_p171_a1, participant_dusts_living_room, 70, 52030359).
raw_performed(i_p171_a1, participant_dusts_living_room, 71, 52033181).
raw_performed(i_p171_a1, participant_dusts_living_room, 72, 52040894).
raw_performed(i_p171_a1, participant_dusts_living_room, 73, 52048485).
raw_performed(i_p171_a1, participant_dusts_living_room, 74, 52057879).
raw_performed(i_p171_a1, participant_dusts_living_room, 75, 52059580).
raw_performed(i_p171_a1, participant_dusts_living_room, 76, 52061087).
raw_performed(i_p171_a1, participant_dusts_living_room, 77, 52071932).
raw_performed(i_p171_a1, participant_dusts_living_room, 78, 52073629).
raw_performed(i_p171_a1, participant_dusts_living_room, 79, 52075869).
raw_performed(i_p171_a1, participant_dusts_living_room, 80, 52081449).
raw_performed(i_p171_a1, participant_dusts_living_room, 81, 52085157).
raw_performed(i_p171_a1, participant_dusts_living_room, 82, 52087654).
raw_performed(i_p171_a1, participant_dusts_living_room, 83, 52121431).
raw_performed(i_p171_a1, participant_dusts_living_room, 84, 52126440).
raw_performed(i_p171_a1, participant_dusts_living_room, 85, 52130491).
raw_performed(i_p171_a1, participant_dusts_living_room, 86, 52171469).
raw_performed(i_p171_a1, participant_dusts_living_room, 87, 52178458).
raw_performed(i_p171_a1, participant_dusts_living_room, 88, 52181571).
raw_performed(i_p171_a1, participant_dusts_living_room, 89, 52184868).
raw_performed(i_p171_a1, participant_dusts_living_room, 90, 52208704).
raw_performed(i_p171_a1, participant_dusts_living_room, 91, 52218042).
raw_performed(i_p171_a1, participant_dusts_living_room, 92, 52296843).
raw_performed(i_p171_a1, participant_dusts_living_room, 93, 52301557).
raw_performed(i_p171_a1, participant_dusts_living_room, 94, 52307582).
raw_performed(i_p171_a1, participant_dusts_living_room, 95, 52317212).
raw_performed(i_p171_a1, participant_dusts_living_room, 96, 52327628).
raw_performed(i_p171_a1, participant_dusts_living_room, 97, 52343542).
raw_performed(i_p171_a1, participant_dusts_living_room, 98, 52352894).
raw_performed(i_p171_a1, participant_dusts_living_room, 99, 52370067).
raw_performed(i_p171_a1, participant_dusts_living_room, 100, 52372971).
raw_performed(i_p171_a1, participant_dusts_living_room, 101, 52379285).
raw_performed(i_p171_a1, participant_dusts_living_room, 102, 52397911).
raw_performed(i_p171_a1, participant_dusts_living_room, 103, 52404514).
raw_performed(i_p171_a1, participant_dusts_living_room, 104, 52407108).
raw_performed(i_p171_a1, participant_dusts_living_room, 105, 52410925).
raw_performed(i_p171_a1, participant_dusts_living_room, 106, 52417491).
raw_performed(i_p171_a1, participant_dusts_living_room, 107, 52420948).
raw_performed(i_p171_a1, participant_dusts_living_room, 108, 52427066).
raw_performed(i_p171_a1, participant_dusts_living_room, 109, 52427905).
raw_performed(i_p171_a1, participant_dusts_dining_room, 110, 52430149).
raw_performed(i_p171_a1, participant_dusts_dining_room, 111, 52433923).
raw_performed(i_p171_a1, participant_returns_duster_to_supply_closet, 112, 52491823).

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

