require 'test_helper'

class EmotionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emotions_index_url
    assert_response :success
  end

  test "should get create" do
    get emotions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get emotions_destroy_url
    assert_response :success
  end

end
