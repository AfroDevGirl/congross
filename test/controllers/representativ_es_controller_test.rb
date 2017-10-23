require 'test_helper'

class RepresentativEsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representative = representatives(:one)
  end

  test "should get index" do
    get representatives_url
    assert_response :success
  end

  test "should get new" do
    get new_representative_url
    assert_response :success
  end

  test "should create representative" do
    assert_difference('Representative.count') do
      post representatives_url, params: { representative: { first_name: @representative.first_name, last_name: @representative.last_name, middle_name: @representative.middle_name, propublica_id: @representative.propublica_id } }
    end

    assert_redirected_to representative_url(Representative.last)
  end

  test "should show representative" do
    get representative_url(@representative)
    assert_response :success
  end

  test "should get edit" do
    get edit_representative_url(@representative)
    assert_response :success
  end

  test "should update representative" do
    patch representative_url(@representative), params: { representative: { first_name: @representative.first_name, last_name: @representative.last_name, middle_name: @representative.middle_name, propublica_id: @representative.propublica_id } }
    assert_redirected_to representative_url(@representative)
  end

  test "should destroy representative" do
    assert_difference('Representative.count', -1) do
      delete representative_url(@representative)
    end

    assert_redirected_to representatives_url
  end
end
