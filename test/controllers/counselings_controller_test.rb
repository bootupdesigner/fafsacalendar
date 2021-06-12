require "test_helper"

class CounselingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @counseling = counselings(:one)
  end

  test "should get index" do
    get counselings_url
    assert_response :success
  end

  test "should get new" do
    get new_counseling_url
    assert_response :success
  end

  test "should create counseling" do
    assert_difference('Counseling.count') do
      post counselings_url, params: { counseling: { attending: @counseling.attending, meeting_id: @counseling.meeting_id, name: @counseling.name, reason: @counseling.reason, user_id: @counseling.user_id } }
    end

    assert_redirected_to counseling_url(Counseling.last)
  end

  test "should show counseling" do
    get counseling_url(@counseling)
    assert_response :success
  end

  test "should get edit" do
    get edit_counseling_url(@counseling)
    assert_response :success
  end

  test "should update counseling" do
    patch counseling_url(@counseling), params: { counseling: { attending: @counseling.attending, meeting_id: @counseling.meeting_id, name: @counseling.name, reason: @counseling.reason, user_id: @counseling.user_id } }
    assert_redirected_to counseling_url(@counseling)
  end

  test "should destroy counseling" do
    assert_difference('Counseling.count', -1) do
      delete counseling_url(@counseling)
    end

    assert_redirected_to counselings_url
  end
end
