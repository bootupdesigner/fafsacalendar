require "application_system_test_case"

class CounselingsTest < ApplicationSystemTestCase
  setup do
    @counseling = counselings(:one)
  end

  test "visiting the index" do
    visit counselings_url
    assert_selector "h1", text: "Counselings"
  end

  test "creating a Counseling" do
    visit counselings_url
    click_on "New Counseling"

    check "Attending" if @counseling.attending
    fill_in "Meeting", with: @counseling.meeting_id
    fill_in "Name", with: @counseling.name
    fill_in "Reason", with: @counseling.reason
    fill_in "User", with: @counseling.user_id
    click_on "Create Counseling"

    assert_text "Counseling was successfully created"
    click_on "Back"
  end

  test "updating a Counseling" do
    visit counselings_url
    click_on "Edit", match: :first

    check "Attending" if @counseling.attending
    fill_in "Meeting", with: @counseling.meeting_id
    fill_in "Name", with: @counseling.name
    fill_in "Reason", with: @counseling.reason
    fill_in "User", with: @counseling.user_id
    click_on "Update Counseling"

    assert_text "Counseling was successfully updated"
    click_on "Back"
  end

  test "destroying a Counseling" do
    visit counselings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Counseling was successfully destroyed"
  end
end
