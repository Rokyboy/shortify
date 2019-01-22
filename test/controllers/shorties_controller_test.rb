require 'test_helper'

class ShortiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shorty = shorties(:one)
  end

  test "should get index" do
    get shorties_url
    assert_response :success
  end

  test "should get new" do
    get new_shorty_url
    assert_response :success
  end

  test "should create shorty" do
    assert_difference('Shorty.count') do
      post shorties_url, params: { shorty: {  } }
    end

    assert_redirected_to shorty_url(Shorty.last)
  end

  test "should show shorty" do
    get shorty_url(@shorty)
    assert_response :success
  end

  test "should get edit" do
    get edit_shorty_url(@shorty)
    assert_response :success
  end

  test "should update shorty" do
    patch shorty_url(@shorty), params: { shorty: {  } }
    assert_redirected_to shorty_url(@shorty)
  end

  test "should destroy shorty" do
    assert_difference('Shorty.count', -1) do
      delete shorty_url(@shorty)
    end

    assert_redirected_to shorties_url
  end
end
