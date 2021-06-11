require "application_system_test_case"

class SeminarsTest < ApplicationSystemTestCase
  setup do
    @seminar = seminars(:one)
  end

  test "visiting the index" do
    visit seminars_url
    assert_selector "h1", text: "Seminars"
  end

  test "creating a Seminar" do
    visit seminars_url
    click_on "New Seminar"

    fill_in "End time", with: @seminar.end_time
    fill_in "Start time", with: @seminar.start_time
    fill_in "Title", with: @seminar.title
    fill_in "User", with: @seminar.user_id
    click_on "Create Seminar"

    assert_text "Seminar was successfully created"
    click_on "Back"
  end

  test "updating a Seminar" do
    visit seminars_url
    click_on "Edit", match: :first

    fill_in "End time", with: @seminar.end_time
    fill_in "Start time", with: @seminar.start_time
    fill_in "Title", with: @seminar.title
    fill_in "User", with: @seminar.user_id
    click_on "Update Seminar"

    assert_text "Seminar was successfully updated"
    click_on "Back"
  end

  test "destroying a Seminar" do
    visit seminars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seminar was successfully destroyed"
  end
end
