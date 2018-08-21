require "application_system_test_case"

class CuisinesTest < ApplicationSystemTestCase
  setup do
    @cuisine = cuisines(:one)
  end

  test "visiting the index" do
    visit cuisines_url
    assert_selector "h1", text: "Cuisines"
  end

  test "creating a Cuisine" do
    visit cuisines_url
    click_on "New Cuisine"

    click_on "Create Cuisine"

    assert_text "Cuisine was successfully created"
    click_on "Back"
  end

  test "updating a Cuisine" do
    visit cuisines_url
    click_on "Edit", match: :first

    click_on "Update Cuisine"

    assert_text "Cuisine was successfully updated"
    click_on "Back"
  end

  test "destroying a Cuisine" do
    visit cuisines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cuisine was successfully destroyed"
  end
end
