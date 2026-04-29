% =================================================================================================
% Paziente 129
% Attività: Place a phone call to a recording and write down the recipe heard.
% =================================================================================================


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

% ===============================
% Level B - Execution observation
% ===============================


instance(i1, place_a_phone_call_to_a_recording_and_write_down_the_recipe_heard).


performed(i1, participant_moves_to_the_dining_room_table).
performed(i1, participant_sits_at_dining_room_table).
performed(i1, participant_hangs_up_the_phone).

% ===========================
% Level C - Anomaly detection
% ===========================


omission(I, X) :-
    part_of(X, A),
    instance(I, A), 
    not performed(I, X).

#show omission/2.
