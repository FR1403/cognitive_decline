% ======================================================================
% Paziente 134
% Attivita: Place a phone call to a recording and write down the recipe heard.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

action(participant_moves_to_the_dining_room_table).
action(participant_sits_at_dining_room_table).
action(participant_locates_the_phone_book).
action(participant_locates_the_phone_number_for_safeway_food_and_drugs).
action(participant_dials_the_number_and_listens_to_the_recording).
action(participant_records_the_recipe).
action(participant_hangs_up_the_phone).

part_of(participant_moves_to_the_dining_room_table, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_sits_at_dining_room_table, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_locates_the_phone_book, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_locates_the_phone_number_for_safeway_food_and_drugs, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_dials_the_number_and_listens_to_the_recording, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_records_the_recipe, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
part_of(participant_hangs_up_the_phone, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_moves_to_the_dining_room_table, 1).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_sits_at_dining_room_table, 2).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_book, 3).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_number_for_safeway_food_and_drugs, 4).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, 5).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, 6).
expected_pos(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_hangs_up_the_phone, 7).

depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, participant_locates_the_phone_number_for_safeway_food_and_drugs).
depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_hangs_up_the_phone, participant_records_the_recipe).
<<<<<<< HEAD
=======
depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_book, participant_sits_at_dining_room_table).
>>>>>>> gap-objects-functions
depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_locates_the_phone_number_for_safeway_food_and_drugs, participant_locates_the_phone_book).
depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, participant_dials_the_number_and_listens_to_the_recording).
depends_on(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_sits_at_dining_room_table, participant_moves_to_the_dining_room_table).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p134_a12, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).
performed(i_p134_a12, participant_sits_at_dining_room_table, 1).


% ===========================
% Level C - Anomaly detection
% ===========================


reversal_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,X,Tx),
    performed(I,Y,Ty),
    Ty < Tx.

reversal(I,Y) :-
    reversal_detail(I,_,Y).

anticipation_omission_detail(I,X,Y) :-
    instance(I,A),
    depends_on(A,Y,X),
    performed(I,Y,_),
    not performed(I,X,_).

anticipation_omission(I,Y) :-
    anticipation_omission_detail(I,_,Y).

#show reversal/2.
#show anticipation_omission/2.

