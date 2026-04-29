% ======================================================================
% Paziente 191
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

instance(i_p191_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p191_a11, participant_wets_the_sponge, 1, 39835980).
raw_performed(i_p191_a11, participant_wets_the_sponge, 2, 39838414).
raw_performed(i_p191_a11, participant_wets_the_sponge, 3, 39845799).
raw_performed(i_p191_a11, participant_wets_the_sponge, 4, 39845815).
raw_performed(i_p191_a11, participant_wets_the_sponge, 5, 39848238).
raw_performed(i_p191_a11, participant_washes_the_countertops, 6, 39852523).
raw_performed(i_p191_a11, participant_washes_the_countertops, 7, 39852898).
raw_performed(i_p191_a11, participant_washes_the_countertops, 8, 39867474).
raw_performed(i_p191_a11, participant_washes_the_countertops, 9, 39872301).
raw_performed(i_p191_a11, participant_washes_the_countertops, 10, 39897160).
raw_performed(i_p191_a11, participant_washes_the_countertops, 11, 39911398).
raw_performed(i_p191_a11, participant_wets_the_sponge, 12, 39912198).
raw_performed(i_p191_a11, participant_wets_the_sponge, 13, 39914653).
raw_performed(i_p191_a11, participant_washes_the_countertops, 14, 39917632).
raw_performed(i_p191_a11, participant_washes_the_countertops, 15, 39917647).
raw_performed(i_p191_a11, participant_washes_the_countertops, 16, 39933126).
raw_performed(i_p191_a11, participant_washes_the_countertops, 17, 39934866).
raw_performed(i_p191_a11, participant_washes_the_countertops, 18, 39940742).
raw_performed(i_p191_a11, participant_washes_the_countertops, 19, 39952276).
raw_performed(i_p191_a11, participant_wets_the_sponge, 20, 39959095).
raw_performed(i_p191_a11, participant_wets_the_sponge, 21, 39961585).
raw_performed(i_p191_a11, participant_wets_the_sponge, 22, 39966487).
raw_performed(i_p191_a11, participant_wets_the_sponge, 23, 39968944).
raw_performed(i_p191_a11, participant_washes_the_countertops, 24, 39975240).
raw_performed(i_p191_a11, participant_washes_the_countertops, 25, 39979829).
raw_performed(i_p191_a11, participant_wets_the_sponge, 26, 39983711).
raw_performed(i_p191_a11, participant_wets_the_sponge, 27, 39988629).
raw_performed(i_p191_a11, participant_wets_the_sponge, 28, 39991182).
raw_performed(i_p191_a11, participant_wets_the_sponge, 29, 39991199).
raw_performed(i_p191_a11, participant_wets_the_sponge, 30, 39993634).
raw_performed(i_p191_a11, participant_wets_the_sponge, 31, 39996096).
raw_performed(i_p191_a11, participant_washes_the_countertops, 32, 39996250).
raw_performed(i_p191_a11, participant_washes_the_countertops, 33, 39996264).
raw_performed(i_p191_a11, participant_wets_the_sponge, 34, 40013334).
raw_performed(i_p191_a11, participant_wets_the_sponge, 35, 40015813).
raw_performed(i_p191_a11, participant_washes_the_countertops, 36, 40020425).
raw_performed(i_p191_a11, participant_washes_the_countertops, 37, 40022090).
raw_performed(i_p191_a11, participant_washes_the_countertops, 38, 40032265).
raw_performed(i_p191_a11, participant_washes_the_countertops, 39, 40036930).
raw_performed(i_p191_a11, participant_wets_the_sponge, 40, 40040429).
raw_performed(i_p191_a11, participant_wets_the_sponge, 41, 40040447).
raw_performed(i_p191_a11, participant_wets_the_sponge, 42, 40042904).
raw_performed(i_p191_a11, participant_wets_the_sponge, 43, 40045322).
raw_performed(i_p191_a11, participant_wets_the_sponge, 44, 40045340).
raw_performed(i_p191_a11, participant_wets_the_sponge, 45, 40047788).
raw_performed(i_p191_a11, participant_wets_the_sponge, 46, 40050250).
raw_performed(i_p191_a11, participant_wets_the_sponge, 47, 40050269).
raw_performed(i_p191_a11, participant_washes_the_countertops, 48, 40053314).
raw_performed(i_p191_a11, participant_washes_the_countertops, 49, 40059835).
raw_performed(i_p191_a11, participant_washes_the_countertops, 50, 40062092).
raw_performed(i_p191_a11, participant_washes_the_countertops, 51, 40065997).
raw_performed(i_p191_a11, participant_washes_the_countertops, 52, 40089240).
raw_performed(i_p191_a11, participant_washes_the_countertops, 53, 40098889).
raw_performed(i_p191_a11, participant_washes_the_countertops, 54, 40102208).
raw_performed(i_p191_a11, participant_washes_the_countertops, 55, 40109290).
raw_performed(i_p191_a11, participant_wets_the_sponge, 56, 40111747).
raw_performed(i_p191_a11, participant_wets_the_sponge, 57, 40111770).
raw_performed(i_p191_a11, participant_wets_the_sponge, 58, 40114214).
raw_performed(i_p191_a11, participant_wets_the_sponge, 59, 40119130).
raw_performed(i_p191_a11, participant_wets_the_sponge, 60, 40121584).
raw_performed(i_p191_a11, participant_wets_the_sponge, 61, 40124053).
raw_performed(i_p191_a11, participant_wets_the_sponge, 62, 40126548).
raw_performed(i_p191_a11, participant_wets_the_sponge, 63, 40129005).
raw_performed(i_p191_a11, participant_wets_the_sponge, 64, 40131471).
raw_performed(i_p191_a11, participant_wets_the_sponge, 65, 40133927).
raw_performed(i_p191_a11, participant_wets_the_sponge, 66, 40136416).
raw_performed(i_p191_a11, participant_wets_the_sponge, 67, 40138866).
raw_performed(i_p191_a11, participant_wets_the_sponge, 68, 40143758).
raw_performed(i_p191_a11, participant_wets_the_sponge, 69, 40153597).
raw_performed(i_p191_a11, participant_wets_the_sponge, 70, 40156051).
raw_performed(i_p191_a11, participant_wets_the_sponge, 71, 40158511).
raw_performed(i_p191_a11, participant_wets_the_sponge, 72, 40158532).
raw_performed(i_p191_a11, participant_wets_the_sponge, 73, 40170865).
raw_performed(i_p191_a11, participant_wets_the_sponge, 74, 40173325).
raw_performed(i_p191_a11, participant_wets_the_sponge, 75, 40178245).
raw_performed(i_p191_a11, participant_wets_the_sponge, 76, 40178264).
raw_performed(i_p191_a11, participant_wets_the_sponge, 77, 40180704).
raw_performed(i_p191_a11, participant_wets_the_sponge, 78, 40180723).
raw_performed(i_p191_a11, participant_wets_the_sponge, 79, 40183177).
raw_performed(i_p191_a11, participant_wets_the_sponge, 80, 40183209).
raw_performed(i_p191_a11, participant_wets_the_sponge, 81, 40185628).
raw_performed(i_p191_a11, participant_wets_the_sponge, 82, 40188123).
raw_performed(i_p191_a11, participant_wets_the_sponge, 83, 40190582).
raw_performed(i_p191_a11, participant_wets_the_sponge, 84, 40193035).
raw_performed(i_p191_a11, participant_wets_the_sponge, 85, 40195510).
raw_performed(i_p191_a11, participant_wets_the_sponge, 86, 40195529).
raw_performed(i_p191_a11, participant_wets_the_sponge, 87, 40197965).
raw_performed(i_p191_a11, participant_wets_the_sponge, 88, 40197985).
raw_performed(i_p191_a11, participant_wets_the_sponge, 89, 40200425).
raw_performed(i_p191_a11, participant_wets_the_sponge, 90, 40202908).
raw_performed(i_p191_a11, participant_wets_the_sponge, 91, 40205344).
raw_performed(i_p191_a11, participant_wets_the_sponge, 92, 40207805).
raw_performed(i_p191_a11, participant_wets_the_sponge, 93, 40210265).
raw_performed(i_p191_a11, participant_wets_the_sponge, 94, 40215201).
raw_performed(i_p191_a11, participant_wets_the_sponge, 95, 40217652).
raw_performed(i_p191_a11, participant_wets_the_sponge, 96, 40217672).
raw_performed(i_p191_a11, participant_wets_the_sponge, 97, 40220117).
raw_performed(i_p191_a11, participant_wets_the_sponge, 98, 40220140).
raw_performed(i_p191_a11, participant_wets_the_sponge, 99, 40222578).
raw_performed(i_p191_a11, participant_wets_the_sponge, 100, 40222597).
raw_performed(i_p191_a11, participant_wets_the_sponge, 101, 40225064).
raw_performed(i_p191_a11, participant_wets_the_sponge, 102, 40230007).
raw_performed(i_p191_a11, participant_washes_the_countertops, 103, 40231799).
raw_performed(i_p191_a11, participant_wets_the_sponge, 104, 40232448).
raw_performed(i_p191_a11, participant_wets_the_sponge, 105, 40237365).
raw_performed(i_p191_a11, participant_wets_the_sponge, 106, 40237397).
raw_performed(i_p191_a11, participant_wets_the_sponge, 107, 40239818).
raw_performed(i_p191_a11, participant_wets_the_sponge, 108, 40242281).
raw_performed(i_p191_a11, participant_washes_the_countertops, 109, 40243208).
raw_performed(i_p191_a11, participant_washes_the_countertops, 110, 40243706).
raw_performed(i_p191_a11, participant_wets_the_sponge, 111, 40252155).
raw_performed(i_p191_a11, participant_wets_the_sponge, 112, 40252186).
raw_performed(i_p191_a11, participant_washes_the_countertops, 113, 40252558).
raw_performed(i_p191_a11, participant_wets_the_sponge, 114, 40254619).
raw_performed(i_p191_a11, participant_wets_the_sponge, 115, 40254668).
raw_performed(i_p191_a11, participant_wets_the_sponge, 116, 40259535).
raw_performed(i_p191_a11, participant_wets_the_sponge, 117, 40259558).
raw_performed(i_p191_a11, participant_wets_the_sponge, 118, 40261994).
raw_performed(i_p191_a11, participant_wets_the_sponge, 119, 40264452).
raw_performed(i_p191_a11, participant_wets_the_sponge, 120, 40266921).
raw_performed(i_p191_a11, participant_wets_the_sponge, 121, 40269413).
raw_performed(i_p191_a11, participant_wets_the_sponge, 122, 40271842).
raw_performed(i_p191_a11, participant_wets_the_sponge, 123, 40271866).
raw_performed(i_p191_a11, participant_wets_the_sponge, 124, 40274332).
raw_performed(i_p191_a11, participant_wets_the_sponge, 125, 40276778).
raw_performed(i_p191_a11, participant_washes_the_countertops, 126, 40279217).
raw_performed(i_p191_a11, participant_wets_the_sponge, 127, 40279263).
raw_performed(i_p191_a11, participant_washes_the_countertops, 128, 40285438).
raw_performed(i_p191_a11, participant_washes_the_countertops, 129, 40287570).
raw_performed(i_p191_a11, participant_washes_the_countertops, 130, 40306012).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 131, 40313699).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 132, 40313718).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 133, 40323549).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 134, 40323578).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 135, 40326021).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 136, 40326053).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 137, 40328507).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 138, 40333382).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 139, 40338319).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 140, 40343204).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 141, 40350614).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 142, 40357972).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 143, 40360420).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 144, 40365369).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 145, 40367845).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 146, 40375243).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 147, 40377740).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 148, 40380196).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 149, 40382614).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 150, 40387568).
raw_performed(i_p191_a11, participant_rinses_out_the_sponge, 151, 40392509).

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

