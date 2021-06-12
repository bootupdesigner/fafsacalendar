require "test_helper"

class SingleRegistraionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_registraion = single_registraions(:one)
  end

  test "should get index" do
    get single_registraions_url
    assert_response :success
  end

  test "should get new" do
    get new_single_registraion_url
    assert_response :success
  end

  test "should create single_registraion" do
    assert_difference('SingleRegistraion.count') do
      post single_registraions_url, params: { single_registraion: { attending: @single_registraion.attending, name: @single_registraion.name, one_one_one_id: @single_registraion.one_one_one_id, reason: @single_registraion.reason, user_id: @single_registraion.user_id } }
    end

    assert_redirected_to single_registraion_url(SingleRegistraion.last)
  end

  test "should show single_registraion" do
    get single_registraion_url(@single_registraion)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_registraion_url(@single_registraion)
    assert_response :success
  end

  test "should update single_registraion" do
    patch single_registraion_url(@single_registraion), params: { single_registraion: { attending: @single_registraion.attending, name: @single_registraion.name, one_one_one_id: @single_registraion.one_one_one_id, reason: @single_registraion.reason, user_id: @single_registraion.user_id } }
    assert_redirected_to single_registraion_url(@single_registraion)
  end

  test "should destroy single_registraion" do
    assert_difference('SingleRegistraion.count', -1) do
      delete single_registraion_url(@single_registraion)
    end

    assert_redirected_to single_registraions_url
  end
end
