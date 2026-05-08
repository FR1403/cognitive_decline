% ======================================================================
% Paziente 95
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

instance(i_p95_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p95_a11, participant_wets_the_sponge, 1, 39432012).
raw_performed(i_p95_a11, participant_washes_the_countertops, 2, 39457602).
raw_performed(i_p95_a11, participant_washes_the_countertops, 3, 39468313).
raw_performed(i_p95_a11, participant_washes_the_countertops, 4, 39475862).
raw_performed(i_p95_a11, participant_washes_the_countertops, 5, 39480112).
raw_performed(i_p95_a11, participant_wets_the_sponge, 6, 39490278).
raw_performed(i_p95_a11, participant_wets_the_sponge, 7, 39490307).
raw_performed(i_p95_a11, participant_wets_the_sponge, 8, 39494050).
raw_performed(i_p95_a11, participant_wets_the_sponge, 9, 39494079).
raw_performed(i_p95_a11, participant_wets_the_sponge, 10, 39497890).
raw_performed(i_p95_a11, participant_wets_the_sponge, 11, 39497917).
raw_performed(i_p95_a11, participant_wets_the_sponge, 12, 39501703).
raw_performed(i_p95_a11, participant_wets_the_sponge, 13, 39505471).
raw_performed(i_p95_a11, participant_wets_the_sponge, 14, 39505497).
raw_performed(i_p95_a11, participant_washes_the_countertops, 15, 39506068).
raw_performed(i_p95_a11, participant_washes_the_countertops, 16, 39506092).
raw_performed(i_p95_a11, participant_washes_the_countertops, 17, 39511139).
raw_performed(i_p95_a11, participant_wets_the_sponge, 18, 39518512).
raw_performed(i_p95_a11, participant_wets_the_sponge, 19, 39518539).
raw_performed(i_p95_a11, participant_washes_the_countertops, 20, 39520103).
raw_performed(i_p95_a11, participant_washes_the_countertops, 21, 39520127).
raw_performed(i_p95_a11, participant_washes_the_countertops, 22, 39526351).
raw_performed(i_p95_a11, participant_wets_the_sponge, 23, 39533447).
raw_performed(i_p95_a11, participant_wets_the_sponge, 24, 39533476).
raw_performed(i_p95_a11, participant_washes_the_countertops, 25, 39533985).
raw_performed(i_p95_a11, participant_wets_the_sponge, 26, 39545091).
raw_performed(i_p95_a11, participant_wets_the_sponge, 27, 39545118).
raw_performed(i_p95_a11, participant_wets_the_sponge, 28, 39548931).
raw_performed(i_p95_a11, participant_wets_the_sponge, 29, 39548957).
raw_performed(i_p95_a11, participant_wets_the_sponge, 30, 39552821).
raw_performed(i_p95_a11, participant_wets_the_sponge, 31, 39552847).
raw_performed(i_p95_a11, participant_washes_the_countertops, 32, 39553192).
raw_performed(i_p95_a11, participant_washes_the_countertops, 33, 39558940).
raw_performed(i_p95_a11, participant_washes_the_countertops, 34, 39565234).
raw_performed(i_p95_a11, participant_washes_the_countertops, 35, 39570412).
raw_performed(i_p95_a11, participant_washes_the_countertops, 36, 39573424).
raw_performed(i_p95_a11, participant_wets_the_sponge, 37, 39576054).
raw_performed(i_p95_a11, participant_wets_the_sponge, 38, 39576081).
raw_performed(i_p95_a11, participant_washes_the_countertops, 39, 39577434).
raw_performed(i_p95_a11, participant_washes_the_countertops, 40, 39585696).
raw_performed(i_p95_a11, participant_washes_the_countertops, 41, 39589712).
raw_performed(i_p95_a11, participant_wets_the_sponge, 42, 39592923).
raw_performed(i_p95_a11, participant_wets_the_sponge, 43, 39592951).
raw_performed(i_p95_a11, participant_washes_the_countertops, 44, 39593711).
raw_performed(i_p95_a11, participant_washes_the_countertops, 45, 39608832).
raw_performed(i_p95_a11, participant_washes_the_countertops, 46, 39613072).
raw_performed(i_p95_a11, participant_washes_the_countertops, 47, 39624580).
raw_performed(i_p95_a11, participant_rinses_out_the_sponge, 48, 39638392).
raw_performed(i_p95_a11, participant_rinses_out_the_sponge, 49, 39643802).
raw_performed(i_p95_a11, participant_rinses_out_the_sponge, 50, 39643830).
raw_performed(i_p95_a11, participant_dries_the_countertops, 51, 39644412).
raw_performed(i_p95_a11, participant_dries_the_countertops, 52, 39651870).
raw_performed(i_p95_a11, participant_dries_the_countertops, 53, 39657399).

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

