require "application_system_test_case"

class RacesTest < ApplicationSystemTestCase
  setup do
    @race = races(:one)
  end

  test "visiting the index" do
    visit races_url
    assert_selector "h1", text: "Races"
  end

  test "creating a Race" do
    visit races_url
    click_on "New Race"

    fill_in "Grandprix circuit", with: @race.grandprix_circuit_id
    fill_in "P1", with: @race.p1
    fill_in "P10", with: @race.p10
    fill_in "P11", with: @race.p11
    fill_in "P12", with: @race.p12
    fill_in "P13", with: @race.p13
    fill_in "P14", with: @race.p14
    fill_in "P15", with: @race.p15
    fill_in "P16", with: @race.p16
    fill_in "P17", with: @race.p17
    fill_in "P18", with: @race.p18
    fill_in "P19", with: @race.p19
    fill_in "P2", with: @race.p2
    fill_in "P20", with: @race.p20
    fill_in "P3", with: @race.p3
    fill_in "P4", with: @race.p4
    fill_in "P5", with: @race.p5
    fill_in "P6", with: @race.p6
    fill_in "P7", with: @race.p7
    fill_in "P8", with: @race.p8
    fill_in "P9", with: @race.p9
    click_on "Create Race"

    assert_text "Race was successfully created"
    click_on "Back"
  end

  test "updating a Race" do
    visit races_url
    click_on "Edit", match: :first

    fill_in "Grandprix circuit", with: @race.grandprix_circuit_id
    fill_in "P1", with: @race.p1
    fill_in "P10", with: @race.p10
    fill_in "P11", with: @race.p11
    fill_in "P12", with: @race.p12
    fill_in "P13", with: @race.p13
    fill_in "P14", with: @race.p14
    fill_in "P15", with: @race.p15
    fill_in "P16", with: @race.p16
    fill_in "P17", with: @race.p17
    fill_in "P18", with: @race.p18
    fill_in "P19", with: @race.p19
    fill_in "P2", with: @race.p2
    fill_in "P20", with: @race.p20
    fill_in "P3", with: @race.p3
    fill_in "P4", with: @race.p4
    fill_in "P5", with: @race.p5
    fill_in "P6", with: @race.p6
    fill_in "P7", with: @race.p7
    fill_in "P8", with: @race.p8
    fill_in "P9", with: @race.p9
    click_on "Update Race"

    assert_text "Race was successfully updated"
    click_on "Back"
  end

  test "destroying a Race" do
    visit races_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Race was successfully destroyed"
  end
end
