require 'test_helper'

class AmendmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amendment = amendments(:one)
  end

  test "should get index" do
    get amendments_url
    assert_response :success
  end

  test "should get new" do
    get new_amendment_url
    assert_response :success
  end

  test "should create amendment" do
    assert_difference('Amendment.count') do
      post amendments_url, params: { amendment: { sponsor_title: @amendment.sponsor_title } }
    end

    assert_redirected_to amendment_url(Amendment.last)
  end

  test "should show amendment" do
    get amendment_url(@amendment)
    assert_response :success
  end

  test "should get edit" do
    get edit_amendment_url(@amendment)
    assert_response :success
  end

  test "should update amendment" do
    patch amendment_url(@amendment), params: { amendment: { sponsor_title: @amendment.sponsor_title } }
    assert_redirected_to amendment_url(@amendment)
  end

  test "should destroy amendment" do
    assert_difference('Amendment.count', -1) do
      delete amendment_url(@amendment)
    end

    assert_redirected_to amendments_url
  end
end
