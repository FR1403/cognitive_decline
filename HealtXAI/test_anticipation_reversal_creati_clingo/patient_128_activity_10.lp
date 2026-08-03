% ======================================================================
% Paziente 128
% Attivita: Wash hands with soap at the kitchen sink.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_hands_with_soap_at_the_kitchen_sink).

action(participant_moves_to_the_kitchen).
action(participant_turns_on_water).
action(participant_uses_hand_soap).
action(participant_washes_hands).
action(participant_dries_hands).

part_of(participant_moves_to_the_kitchen, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_turns_on_water, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_uses_hand_soap, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_washes_hands, wash_hands_with_soap_at_the_kitchen_sink).
part_of(participant_dries_hands, wash_hands_with_soap_at_the_kitchen_sink).

expected_pos(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 1).
expected_pos(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 2).
expected_pos(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 3).
expected_pos(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 4).
expected_pos(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 5).

depends_on(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, participant_washes_hands).
depends_on(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, participant_moves_to_the_kitchen).
<<<<<<< HEAD
depends_on(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, participant_turns_on_water).
=======
depends_on(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, participant_turns_on_water).
>>>>>>> gap-objects-functions
depends_on(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, participant_uses_hand_soap).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p128_a10, wash_hands_with_soap_at_the_kitchen_sink).
performed(i_p128_a10, participant_moves_to_the_kitchen, 1).
performed(i_p128_a10, participant_washes_hands, 2).


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

