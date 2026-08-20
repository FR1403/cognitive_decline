% ======================================================================
% Paziente 191
% Attivita: Wash and dry all kitchen countertop surfaces.
% ======================================================================


% ========================
% Level A - Activity model
% ========================

activity(wash_and_dry_all_kitchen_countertop_surfaces).

action(participant_locates_the_sponge).
action(participant_locates_the_dish_detergent).
action(participant_wets_the_sponge).
action(participant_lathers_the_sponge_with_the_detergent).
action(participant_washes_the_countertops).
action(participant_rinses_out_the_sponge).
action(participant_dries_the_countertops).
action(participant_returns_the_sponge_to_the_sponge_drying_dish).

part_of(participant_locates_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_locates_the_dish_detergent, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_wets_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_lathers_the_sponge_with_the_detergent, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_washes_the_countertops, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_rinses_out_the_sponge, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_dries_the_countertops, wash_and_dry_all_kitchen_countertop_surfaces).
part_of(participant_returns_the_sponge_to_the_sponge_drying_dish, wash_and_dry_all_kitchen_countertop_surfaces).

expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_wets_the_sponge, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_lathers_the_sponge_with_the_detergent, dish_detergent).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_washes_the_countertops, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_rinses_out_the_sponge, sponge).
expected_object(wash_and_dry_all_kitchen_countertop_surfaces, participant_dries_the_countertops, sponge).


% ===============================
% Level B - Execution observation
% ===============================

instance(i_p191_a11, wash_and_dry_all_kitchen_countertop_surfaces).

performed(i_p191_a11, participant_wets_the_sponge, 1).
performed(i_p191_a11, participant_wets_the_sponge, 2).
performed(i_p191_a11, participant_wets_the_sponge, 3).
performed(i_p191_a11, participant_wets_the_sponge, 4).
performed(i_p191_a11, participant_wets_the_sponge, 5).
performed(i_p191_a11, participant_washes_the_countertops, 6).
performed(i_p191_a11, participant_washes_the_countertops, 7).
performed(i_p191_a11, participant_washes_the_countertops, 8).
performed(i_p191_a11, participant_washes_the_countertops, 9).
performed(i_p191_a11, participant_washes_the_countertops, 10).
performed(i_p191_a11, participant_washes_the_countertops, 11).
performed(i_p191_a11, participant_wets_the_sponge, 12).
performed(i_p191_a11, participant_wets_the_sponge, 13).
performed(i_p191_a11, participant_washes_the_countertops, 14).
performed(i_p191_a11, participant_washes_the_countertops, 15).
performed(i_p191_a11, participant_washes_the_countertops, 16).
performed(i_p191_a11, participant_washes_the_countertops, 17).
performed(i_p191_a11, participant_washes_the_countertops, 18).
performed(i_p191_a11, participant_washes_the_countertops, 19).
performed(i_p191_a11, participant_wets_the_sponge, 20).
performed(i_p191_a11, participant_wets_the_sponge, 21).
performed(i_p191_a11, participant_wets_the_sponge, 22).
performed(i_p191_a11, participant_wets_the_sponge, 23).
performed(i_p191_a11, participant_washes_the_countertops, 24).
performed(i_p191_a11, participant_washes_the_countertops, 25).
performed(i_p191_a11, participant_wets_the_sponge, 26).
performed(i_p191_a11, participant_wets_the_sponge, 27).
performed(i_p191_a11, participant_wets_the_sponge, 28).
performed(i_p191_a11, participant_wets_the_sponge, 29).
performed(i_p191_a11, participant_wets_the_sponge, 30).
performed(i_p191_a11, participant_wets_the_sponge, 31).
performed(i_p191_a11, participant_washes_the_countertops, 32).
performed(i_p191_a11, participant_washes_the_countertops, 33).
performed(i_p191_a11, participant_wets_the_sponge, 34).
performed(i_p191_a11, participant_wets_the_sponge, 35).
performed(i_p191_a11, participant_washes_the_countertops, 36).
performed(i_p191_a11, participant_washes_the_countertops, 37).
performed(i_p191_a11, participant_washes_the_countertops, 38).
performed(i_p191_a11, participant_washes_the_countertops, 39).
performed(i_p191_a11, participant_wets_the_sponge, 40).
performed(i_p191_a11, participant_wets_the_sponge, 41).
performed(i_p191_a11, participant_wets_the_sponge, 42).
performed(i_p191_a11, participant_wets_the_sponge, 43).
performed(i_p191_a11, participant_wets_the_sponge, 44).
performed(i_p191_a11, participant_wets_the_sponge, 45).
performed(i_p191_a11, participant_wets_the_sponge, 46).
performed(i_p191_a11, participant_wets_the_sponge, 47).
performed(i_p191_a11, participant_washes_the_countertops, 48).
performed(i_p191_a11, participant_washes_the_countertops, 49).
performed(i_p191_a11, participant_washes_the_countertops, 50).
performed(i_p191_a11, participant_washes_the_countertops, 51).
performed(i_p191_a11, participant_washes_the_countertops, 52).
performed(i_p191_a11, participant_washes_the_countertops, 53).
performed(i_p191_a11, participant_washes_the_countertops, 54).
performed(i_p191_a11, participant_washes_the_countertops, 55).
performed(i_p191_a11, participant_wets_the_sponge, 56).
performed(i_p191_a11, participant_wets_the_sponge, 57).
performed(i_p191_a11, participant_wets_the_sponge, 58).
performed(i_p191_a11, participant_wets_the_sponge, 59).
performed(i_p191_a11, participant_wets_the_sponge, 60).
performed(i_p191_a11, participant_wets_the_sponge, 61).
performed(i_p191_a11, participant_wets_the_sponge, 62).
performed(i_p191_a11, participant_wets_the_sponge, 63).
performed(i_p191_a11, participant_wets_the_sponge, 64).
performed(i_p191_a11, participant_wets_the_sponge, 65).
performed(i_p191_a11, participant_wets_the_sponge, 66).
performed(i_p191_a11, participant_wets_the_sponge, 67).
performed(i_p191_a11, participant_wets_the_sponge, 68).
performed(i_p191_a11, participant_wets_the_sponge, 69).
performed(i_p191_a11, participant_wets_the_sponge, 70).
performed(i_p191_a11, participant_wets_the_sponge, 71).
performed(i_p191_a11, participant_wets_the_sponge, 72).
performed(i_p191_a11, participant_wets_the_sponge, 73).
performed(i_p191_a11, participant_wets_the_sponge, 74).
performed(i_p191_a11, participant_wets_the_sponge, 75).
performed(i_p191_a11, participant_wets_the_sponge, 76).
performed(i_p191_a11, participant_wets_the_sponge, 77).
performed(i_p191_a11, participant_wets_the_sponge, 78).
performed(i_p191_a11, participant_wets_the_sponge, 79).
performed(i_p191_a11, participant_wets_the_sponge, 80).
performed(i_p191_a11, participant_wets_the_sponge, 81).
performed(i_p191_a11, participant_wets_the_sponge, 82).
performed(i_p191_a11, participant_wets_the_sponge, 83).
performed(i_p191_a11, participant_wets_the_sponge, 84).
performed(i_p191_a11, participant_wets_the_sponge, 85).
performed(i_p191_a11, participant_wets_the_sponge, 86).
performed(i_p191_a11, participant_wets_the_sponge, 87).
performed(i_p191_a11, participant_wets_the_sponge, 88).
performed(i_p191_a11, participant_wets_the_sponge, 89).
performed(i_p191_a11, participant_wets_the_sponge, 90).
performed(i_p191_a11, participant_wets_the_sponge, 91).
performed(i_p191_a11, participant_wets_the_sponge, 92).
performed(i_p191_a11, participant_wets_the_sponge, 93).
performed(i_p191_a11, participant_wets_the_sponge, 94).
performed(i_p191_a11, participant_wets_the_sponge, 95).
performed(i_p191_a11, participant_wets_the_sponge, 96).
performed(i_p191_a11, participant_wets_the_sponge, 97).
performed(i_p191_a11, participant_wets_the_sponge, 98).
performed(i_p191_a11, participant_wets_the_sponge, 99).
performed(i_p191_a11, participant_wets_the_sponge, 100).
performed(i_p191_a11, participant_wets_the_sponge, 101).
performed(i_p191_a11, participant_wets_the_sponge, 102).
performed(i_p191_a11, participant_washes_the_countertops, 103).
performed(i_p191_a11, participant_wets_the_sponge, 104).
performed(i_p191_a11, participant_wets_the_sponge, 105).
performed(i_p191_a11, participant_wets_the_sponge, 106).
performed(i_p191_a11, participant_wets_the_sponge, 107).
performed(i_p191_a11, participant_wets_the_sponge, 108).
performed(i_p191_a11, participant_washes_the_countertops, 109).
performed(i_p191_a11, participant_washes_the_countertops, 110).
performed(i_p191_a11, participant_wets_the_sponge, 111).
performed(i_p191_a11, participant_wets_the_sponge, 112).
performed(i_p191_a11, participant_washes_the_countertops, 113).
performed(i_p191_a11, participant_wets_the_sponge, 114).
performed(i_p191_a11, participant_wets_the_sponge, 115).
performed(i_p191_a11, participant_wets_the_sponge, 116).
performed(i_p191_a11, participant_wets_the_sponge, 117).
performed(i_p191_a11, participant_wets_the_sponge, 118).
performed(i_p191_a11, participant_wets_the_sponge, 119).
performed(i_p191_a11, participant_wets_the_sponge, 120).
performed(i_p191_a11, participant_wets_the_sponge, 121).
performed(i_p191_a11, participant_wets_the_sponge, 122).
performed(i_p191_a11, participant_wets_the_sponge, 123).
performed(i_p191_a11, participant_wets_the_sponge, 124).
performed(i_p191_a11, participant_wets_the_sponge, 125).
performed(i_p191_a11, participant_washes_the_countertops, 126).
performed(i_p191_a11, participant_wets_the_sponge, 127).
performed(i_p191_a11, participant_washes_the_countertops, 128).
performed(i_p191_a11, participant_washes_the_countertops, 129).
performed(i_p191_a11, participant_washes_the_countertops, 130).
performed(i_p191_a11, participant_rinses_out_the_sponge, 131).
performed(i_p191_a11, participant_rinses_out_the_sponge, 132).
performed(i_p191_a11, participant_rinses_out_the_sponge, 133).
performed(i_p191_a11, participant_rinses_out_the_sponge, 134).
performed(i_p191_a11, participant_rinses_out_the_sponge, 135).
performed(i_p191_a11, participant_rinses_out_the_sponge, 136).
performed(i_p191_a11, participant_rinses_out_the_sponge, 137).
performed(i_p191_a11, participant_rinses_out_the_sponge, 138).
performed(i_p191_a11, participant_rinses_out_the_sponge, 139).
performed(i_p191_a11, participant_rinses_out_the_sponge, 140).
performed(i_p191_a11, participant_rinses_out_the_sponge, 141).
performed(i_p191_a11, participant_rinses_out_the_sponge, 142).
performed(i_p191_a11, participant_rinses_out_the_sponge, 143).
performed(i_p191_a11, participant_rinses_out_the_sponge, 144).
performed(i_p191_a11, participant_rinses_out_the_sponge, 145).
performed(i_p191_a11, participant_rinses_out_the_sponge, 146).
performed(i_p191_a11, participant_rinses_out_the_sponge, 147).
performed(i_p191_a11, participant_rinses_out_the_sponge, 148).
performed(i_p191_a11, participant_rinses_out_the_sponge, 149).
performed(i_p191_a11, participant_rinses_out_the_sponge, 150).
performed(i_p191_a11, participant_rinses_out_the_sponge, 151).



% ===========================
% Level C - Anomaly detection
% ===========================


tool_omission(I,X) :-
    instance(I,A),
    performed(I,X,_),
    expected_object(A,X,O),
    not observed_object(I,X,O).

#show tool_omission/2.

