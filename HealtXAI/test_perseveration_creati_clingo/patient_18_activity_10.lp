% ======================================================================
% Paziente 18
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

instance(i_p18_a11, wash_hands_with_soap_at_the_kitchen_sink).

% raw_performed(Instance, Action, Order, TimeMs)

raw_performed(i_p18_a11, participant_wets_the_sponge, 1, 54004473).
raw_performed(i_p18_a11, participant_washes_the_countertops, 2, 54019559).
raw_performed(i_p18_a11, participant_washes_the_countertops, 3, 54043470).
raw_performed(i_p18_a11, participant_washes_the_countertops, 4, 54046338).
raw_performed(i_p18_a11, participant_washes_the_countertops, 5, 54054571).
raw_performed(i_p18_a11, participant_washes_the_countertops, 6, 54057233).
raw_performed(i_p18_a11, participant_washes_the_countertops, 7, 54069703).
raw_performed(i_p18_a11, participant_washes_the_countertops, 8, 54078845).
raw_performed(i_p18_a11, participant_washes_the_countertops, 9, 54080768).
raw_performed(i_p18_a11, participant_washes_the_countertops, 10, 54082437).
raw_performed(i_p18_a11, participant_washes_the_countertops, 11, 54086062).
raw_performed(i_p18_a11, participant_washes_the_countertops, 12, 54090909).
raw_performed(i_p18_a11, participant_washes_the_countertops, 13, 54093943).
raw_performed(i_p18_a11, participant_washes_the_countertops, 14, 54097599).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 15, 54103241).
raw_performed(i_p18_a11, participant_washes_the_countertops, 16, 54119187).
raw_performed(i_p18_a11, participant_washes_the_countertops, 17, 54131699).
raw_performed(i_p18_a11, participant_washes_the_countertops, 18, 54137903).
raw_performed(i_p18_a11, participant_washes_the_countertops, 19, 54162240).
raw_performed(i_p18_a11, participant_washes_the_countertops, 20, 54176428).
raw_performed(i_p18_a11, participant_washes_the_countertops, 21, 54184585).
raw_performed(i_p18_a11, participant_washes_the_countertops, 22, 54198371).
raw_performed(i_p18_a11, participant_washes_the_countertops, 23, 54209747).
raw_performed(i_p18_a11, participant_washes_the_countertops, 24, 54222506).
raw_performed(i_p18_a11, participant_washes_the_countertops, 25, 54235222).
raw_performed(i_p18_a11, participant_washes_the_countertops, 26, 54238429).
raw_performed(i_p18_a11, participant_washes_the_countertops, 27, 54249061).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 28, 54254054).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 29, 54258972).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 30, 54261456).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 31, 54263958).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 32, 54265066).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 33, 54266397).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 34, 54273785).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 35, 54276261).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 36, 54278737).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 37, 54281267).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 38, 54283740).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 39, 54288714).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 40, 54291307).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 41, 54291821).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 42, 54294488).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 43, 54301145).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 44, 54306990).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 45, 54308586).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 46, 54313488).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 47, 54315947).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 48, 54320890).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 49, 54328424).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 50, 54330886).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 51, 54331468).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 52, 54333363).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 53, 54335832).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 54, 54338304).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 55, 54340776).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 56, 54343297).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 57, 54345105).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 58, 54345873).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 59, 54346108).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 60, 54360640).
raw_performed(i_p18_a11, participant_washes_the_countertops, 61, 54361996).
raw_performed(i_p18_a11, participant_washes_the_countertops, 62, 54371329).
raw_performed(i_p18_a11, participant_washes_the_countertops, 63, 54380319).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 64, 54385357).
raw_performed(i_p18_a11, participant_washes_the_countertops, 65, 54400194).
raw_performed(i_p18_a11, participant_washes_the_countertops, 66, 54413947).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 67, 54424937).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 68, 54427385).
raw_performed(i_p18_a11, participant_washes_the_countertops, 69, 54429944).
raw_performed(i_p18_a11, participant_washes_the_countertops, 70, 54440201).
raw_performed(i_p18_a11, participant_washes_the_countertops, 71, 54451807).
raw_performed(i_p18_a11, participant_washes_the_countertops, 72, 54456286).
raw_performed(i_p18_a11, participant_washes_the_countertops, 73, 54460158).
raw_performed(i_p18_a11, participant_washes_the_countertops, 74, 54461636).
raw_performed(i_p18_a11, participant_washes_the_countertops, 75, 54467148).
raw_performed(i_p18_a11, participant_washes_the_countertops, 76, 54476318).
raw_performed(i_p18_a11, participant_washes_the_countertops, 77, 54483133).
raw_performed(i_p18_a11, participant_washes_the_countertops, 78, 54491107).
raw_performed(i_p18_a11, participant_washes_the_countertops, 79, 54492614).
raw_performed(i_p18_a11, participant_washes_the_countertops, 80, 54495231).
raw_performed(i_p18_a11, participant_washes_the_countertops, 81, 54501480).
raw_performed(i_p18_a11, participant_washes_the_countertops, 82, 54502935).
raw_performed(i_p18_a11, participant_washes_the_countertops, 83, 54505256).
raw_performed(i_p18_a11, participant_washes_the_countertops, 84, 54513013).
raw_performed(i_p18_a11, participant_washes_the_countertops, 85, 54513039).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 86, 54518946).
raw_performed(i_p18_a11, participant_washes_the_countertops, 87, 54523743).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 88, 54533745).
raw_performed(i_p18_a11, participant_rinses_out_the_sponge, 89, 54538686).

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

