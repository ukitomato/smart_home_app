require 'test_helper'

class LightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lights_index_url
    assert_response :success
  end

  test "should get show" do
    get lights_show_url
    assert_response :success
  end

  test "should get new" do
    get lights_new_url
    assert_response :success
  end

  test "should get edit" do
    get lights_edit_url
    assert_response :success
  end

end
