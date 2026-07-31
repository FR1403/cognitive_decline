% ======================================================================
% Paziente 20
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

expected_object(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_dials_the_number_and_listens_to_the_recording, phone).
expected_object(place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard, participant_records_the_recipe, recipe_book_or_digital_device_if_recording_electronically).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p20_a12, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).

performed(i_p20_a12, participant_moves_to_the_dining_room_table, 1).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

