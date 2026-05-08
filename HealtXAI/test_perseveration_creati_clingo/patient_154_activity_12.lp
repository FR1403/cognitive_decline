% ======================================================================
% Paziente 154
% Attività: Sort and file a small collection of billing statements.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(sort_and_file_a_small_collection_of_billing_statements).

action(participant_moves_to_the_living_room).
action(participant_gathers_statements_from_bookshelf).
action(participant_moves_to_the_dining_room_table).
action(participant_sits_down_at_the_dining_room_table).
action(participant_sorts_pile_of_statements_into_the_organizer).

action_type(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 7).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 5).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 7).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 8).
action_type(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 5).

expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 1).
expected_count(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 1).

action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_living_room, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_gathers_statements_from_bookshelf, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_moves_to_the_dining_room_table, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sits_down_at_the_dining_room_table, 240000).
action_gap(sort_and_file_a_small_collection_of_billing_statements, participant_sorts_pile_of_statements_into_the_organizer, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p154_a13, sort_and_file_a_small_collection_of_billing_statements).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 1, 38808077).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 2, 38810603).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 3, 38811016).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 4, 38811046).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 5, 38812004).
raw_performed(i_p154_a13, participant_locates_the_laundry_basket, 6, 38816821).
raw_performed(i_p154_a13, participant_locates_the_laundry_basket, 7, 38821002).
raw_performed(i_p154_a13, participant_moves_to_the_couch, 8, 38822055).
raw_performed(i_p154_a13, participant_moves_to_the_couch, 9, 38823153).
raw_performed(i_p154_a13, participant_moves_to_the_couch, 10, 38825054).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 11, 38825098).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 12, 38826021).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 13, 38827014).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 14, 38828635).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 15, 38828823).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 16, 38829076).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 17, 38837057).
raw_performed(i_p154_a13, participant_moves_to_the_hallway_closet, 18, 38838427).
raw_performed(i_p154_a13, participant_moves_to_the_couch, 19, 38839005).
raw_performed(i_p154_a13, participant_moves_to_the_couch, 20, 38841007).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 21, 38841050).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 22, 38842203).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 23, 38849066).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 24, 38850089).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 25, 38858999).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 26, 38882607).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 27, 38913007).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 28, 38932050).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 29, 38950074).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 30, 38953433).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 31, 38960070).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 32, 38970024).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 33, 38981060).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 34, 38982005).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 35, 38984335).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 36, 38992048).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 37, 38992949).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 38, 38998066).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 39, 39001047).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 40, 39007708).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 41, 39010089).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 42, 39016092).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 43, 39019073).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 44, 39021010).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 45, 39032061).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 46, 39032477).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 47, 39037075).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 48, 39046051).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 49, 39050144).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 50, 39053470).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 51, 39055618).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 52, 39058923).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 53, 39059593).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 54, 39063088).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 55, 39063778).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 56, 39069041).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 57, 39071238).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 58, 39073063).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 59, 39074565).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 60, 39093042).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 61, 39094071).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 62, 39099091).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 63, 39103074).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 64, 39103090).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 65, 39111376).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 66, 39114780).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 67, 39118877).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 68, 39119837).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 69, 39127082).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 70, 39127421).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 71, 39135053).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 72, 39138415).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 73, 39146043).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 74, 39146094).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 75, 39157052).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 76, 39161011).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 77, 39164842).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 78, 39168106).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 79, 39183186).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 80, 39187644).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 81, 39189530).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 82, 39191311).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 83, 39194050).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 84, 39202714).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 85, 39206907).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 86, 39207308).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 87, 39251011).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 88, 39252898).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 89, 39256258).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 90, 39262927).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 91, 39265031).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 92, 39265485).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 93, 39270009).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 94, 39273004).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 95, 39277200).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 96, 39277862).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 97, 39283059).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 98, 39283759).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 99, 39286504).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 100, 39289467).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 101, 39297089).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 102, 39302000).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 103, 39304098).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 104, 39305136).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 105, 39308000).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 106, 39310426).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 107, 39310821).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 108, 39312085).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 109, 39315066).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 110, 39318004).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 111, 39323033).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 112, 39336004).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 113, 39340044).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 114, 39343017).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 115, 39344007).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 116, 39349070).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 117, 39351065).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 118, 39352383).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 119, 39362002).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 120, 39362446).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 121, 39377027).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 122, 39377120).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 123, 39393080).
raw_performed(i_p154_a13, participant_sortsfolds_the_laundry, 124, 39394048).

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

