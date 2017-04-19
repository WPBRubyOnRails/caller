require 'test_helper'

class VotersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:guy)
    @voter = voters(:one)
  end

  test "should get index" do
    get voters_url
    assert_response :success
  end

  test "should get new" do
    current_user = @user
    current_user.id = 1
    get new_voter_url
    assert_response :success
  end

  test "should create voter" do
    assert_difference('Voter.count') do
      post voters_url, params: { voter: { first_name: 'Joe', last_name: 'blow', phone_number: '5678901234', user_id: '1' } }
    end

    assert_redirected_to voter_url(Voter.last)
  end

  test "should show voter" do
    get voter_url(@voter)
    assert_response :success
  end

  test "should get edit" do
    get edit_voter_url(@voter)
    assert_response :success
  end

  test "should update voter" do
    patch voter_url(@voter), params: { voter: { first_name: @voter.first_name, last_name: @voter.last_name, phone_number: @voter.phone_number } }
    assert_redirected_to voter_url(@voter)
  end

  test "should destroy voter" do
    assert_difference('Voter.count', -1) do
      delete voter_url(@voter)
    end

    assert_redirected_to voters_url
  end
end
