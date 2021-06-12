require "application_system_test_case"

class SingleRegistraionsTest < ApplicationSystemTestCase
  setup do
    @single_registraion = single_registraions(:one)
  end

  test "visiting the index" do
    visit single_registraions_url
    assert_selector "h1", text: "Single Registraions"
  end

  test "creating a Single registraion" do
    visit single_registraions_url
    click_on "New Single Registraion"

    check "Attending" if @single_registraion.attending
    fill_in "Name", with: @single_registraion.name
    fill_in "One one one", with: @single_registraion.one_one_one_id
    fill_in "Reason", with: @single_registraion.reason
    fill_in "User", with: @single_registraion.user_id
    click_on "Create Single registraion"

    assert_text "Single registraion was successfully created"
    click_on "Back"
  end

  test "updating a Single registraion" do
    visit single_registraions_url
    click_on "Edit", match: :first

    check "Attending" if @single_registraion.attending
    fill_in "Name", with: @single_registraion.name
    fill_in "One one one", with: @single_registraion.one_one_one_id
    fill_in "Reason", with: @single_registraion.reason
    fill_in "User", with: @single_registraion.user_id
    click_on "Update Single registraion"

    assert_text "Single registraion was successfully updated"
    click_on "Back"
  end

  test "destroying a Single registraion" do
    visit single_registraions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single registraion was successfully destroyed"
  end
end
