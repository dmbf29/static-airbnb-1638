require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit '/'

    # checking for an h1 tag with Flats inside of it
    assert_selector "h1", text: "Flats"
  end

  test "visiting the show page" do
    visit '/flats/145'

    # checking for an h1 tag with Flats inside of it
    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
