require 'test_helper'

class CommiteEsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commitee = commitees(:one)
  end

  test "should get index" do
    get commitees_index_url
    assert_response :success
  end

  test "should get new" do
    get new_commitee_url
    assert_response :success
  end

  test "should create commitee" do
    assert_difference('Commitees.count') do
      post commitees_index_url, params: { commitee: { chamber: @commitee.chamber, name: @commitee.name, propublica_id: @commitee.propublica_id, url: @commitee.url } }
    end

    assert_redirected_to commitee_url(Commitees.last)
  end

  test "should show commitee" do
    get commitee_url(@commitee)
    assert_response :success
  end

  test "should get edit" do
    get edit_commitee_url(@commitee)
    assert_response :success
  end

  test "should update commitee" do
    patch commitee_url(@commitee), params: { commitee: { chamber: @commitee.chamber, name: @commitee.name, propublica_id: @commitee.propublica_id, url: @commitee.url } }
    assert_redirected_to commitee_url(@commitee)
  end

  test "should destroy commitee" do
    assert_difference('Commitees.count', -1) do
      delete commitee_url(@commitee)
    end

    assert_redirected_to commitees_index_url
  end
end
