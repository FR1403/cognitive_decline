% ======================================================================
% Paziente 312
% Attività: Wash hands with soap at the kitchen sink.
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

action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 7).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 5).
action_type(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 5).

expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 1).
expected_count(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 1).

action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_moves_to_the_kitchen, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_turns_on_water, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_uses_hand_soap, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_washes_hands, 240000).
action_gap(wash_hands_with_soap_at_the_kitchen_sink, participant_dries_hands, 240000).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p312_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p312_a11, participant_wets_the_sponge, 1, 53671265).
raw_performed(i_p312_a11, participant_wets_the_sponge, 2, 53673738).
raw_performed(i_p312_a11, participant_wets_the_sponge, 3, 53678652).
raw_performed(i_p312_a11, participant_wets_the_sponge, 4, 53683573).
raw_performed(i_p312_a11, participant_washes_the_countertops, 5, 53684477).
raw_performed(i_p312_a11, participant_washes_the_countertops, 6, 53698386).
raw_performed(i_p312_a11, participant_washes_the_countertops, 7, 53701366).
raw_performed(i_p312_a11, participant_washes_the_countertops, 8, 53705500).
raw_performed(i_p312_a11, participant_washes_the_countertops, 9, 53713831).
raw_performed(i_p312_a11, participant_washes_the_countertops, 10, 53714212).
raw_performed(i_p312_a11, participant_washes_the_countertops, 11, 53719643).
raw_performed(i_p312_a11, participant_washes_the_countertops, 12, 53723090).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 13, 53727921).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 14, 53727956).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 15, 53730394).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 16, 53732849).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 17, 53735309).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 18, 53737779).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 19, 53762393).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 20, 53762410).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 21, 53764859).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 22, 53773776).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 23, 53774681).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 24, 53777142).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 25, 53779607).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 26, 53784519).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 27, 53786980).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 28, 53794408).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 29, 53796863).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 30, 53799324).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 31, 53809177).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 32, 53814085).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 33, 53816547).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 34, 53819011).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 35, 53821466).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 36, 53823926).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 37, 53828838).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 38, 53831299).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 39, 53833763).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 40, 53833789).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 41, 53836227).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 42, 53836247).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 43, 53838681).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 44, 53841149).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 45, 53843604).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 46, 53846066).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 47, 53848522).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 48, 53853498).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 49, 53855950).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 50, 53858431).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 51, 53860892).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 52, 53863344).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 53, 53865804).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 54, 53865825).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 55, 53868267).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 56, 53870726).
raw_performed(i_p312_a11, participant_rinses_out_the_sponge, 57, 53875645).

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

