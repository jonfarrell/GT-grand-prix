require "application_system_test_case"

class GrandprixesTest < ApplicationSystemTestCase
  setup do
    @grandprix = grandprixes(:one)
  end

  test "visiting the index" do
    visit grandprixes_url
    assert_selector "h1", text: "Grandprixes"
  end

  test "creating a Grandprix" do
    visit grandprixes_url
    click_on "New Grandprix"

    fill_in "Description", with: @grandprix.description
    fill_in "Name", with: @grandprix.name
    click_on "Create Grandprix"

    assert_text "Grandprix was successfully created"
    click_on "Back"
  end

  test "updating a Grandprix" do
    visit grandprixes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @grandprix.description
    fill_in "Name", with: @grandprix.name
    click_on "Update Grandprix"

    assert_text "Grandprix was successfully updated"
    click_on "Back"
  end

  test "destroying a Grandprix" do
    visit grandprixes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grandprix was successfully destroyed"
  end
end
