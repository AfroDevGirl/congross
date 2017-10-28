require 'test_helper'

class CommitteEsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @committee = committees(:one)
  end

  test "should get index" do
    get committees_index_url
    assert_response :success
  end

  test "should get new" do
    get new_committee_url
    assert_response :success
  end

  test "should create committee" do
    assert_difference('Committees.count') do
      post committees_index_url, params: { committee: { chamber: @committee.chamber, name: @committee.name, propublica_id: @committee.propublica_id, url: @committee.url } }
    end

    assert_redirected_to committee_url(Committees.last)
  end

  test "should show committee" do
    get committee_url(@committee)
    assert_response :success
  end

  test "should get edit" do
    get edit_committee_url(@committee)
    assert_response :success
  end

  test "should update committee" do
    patch committee_url(@committee), params: { committee: { chamber: @committee.chamber, name: @committee.name, propublica_id: @committee.propublica_id, url: @committee.url } }
    assert_redirected_to committee_url(@committee)
  end

  test "should destroy committee" do
    assert_difference('Committees.count', -1) do
      delete committee_url(@committee)
    end

    assert_redirected_to committees_index_url
  end
end
