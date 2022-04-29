require "application_system_test_case"

class GrandprixCircuitsTest < ApplicationSystemTestCase
  setup do
    @grandprix_circuit = grandprix_circuits(:one)
  end

  test "visiting the index" do
    visit grandprix_circuits_url
    assert_selector "h1", text: "Grandprix Circuits"
  end

  test "creating a Grandprix circuit" do
    visit grandprix_circuits_url
    click_on "New Grandprix Circuit"

    fill_in "Description", with: @grandprix_circuit.description
    fill_in "Name", with: @grandprix_circuit.name
    click_on "Create Grandprix circuit"

    assert_text "Grandprix circuit was successfully created"
    click_on "Back"
  end

  test "updating a Grandprix circuit" do
    visit grandprix_circuits_url
    click_on "Edit", match: :first

    fill_in "Description", with: @grandprix_circuit.description
    fill_in "Name", with: @grandprix_circuit.name
    click_on "Update Grandprix circuit"

    assert_text "Grandprix circuit was successfully updated"
    click_on "Back"
  end

  test "destroying a Grandprix circuit" do
    visit grandprix_circuits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grandprix circuit was successfully destroyed"
  end
end
