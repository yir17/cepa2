require "application_system_test_case"

class MixturesTest < ApplicationSystemTestCase
  setup do
    @mixture = mixtures(:one)
  end

  test "visiting the index" do
    visit mixtures_url
    assert_selector "h1", text: "Mixtures"
  end

  test "creating a Mixture" do
    visit mixtures_url
    click_on "New Mixture"

    fill_in "Percentage", with: @mixture.percentage
    fill_in "Strain", with: @mixture.strain_id
    fill_in "Wine", with: @mixture.wine_id
    click_on "Create Mixture"

    assert_text "Mixture was successfully created"
    click_on "Back"
  end

  test "updating a Mixture" do
    visit mixtures_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @mixture.percentage
    fill_in "Strain", with: @mixture.strain_id
    fill_in "Wine", with: @mixture.wine_id
    click_on "Update Mixture"

    assert_text "Mixture was successfully updated"
    click_on "Back"
  end

  test "destroying a Mixture" do
    visit mixtures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mixture was successfully destroyed"
  end
end
