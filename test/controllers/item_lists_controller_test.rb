require 'test_helper'

class ItemListsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get item_lists_index_url
    assert_response :success
  end

  test 'should get show' do
    get item_lists_show_url
    assert_response :success
  end

  test 'should get new' do
    get item_lists_new_url
    assert_response :success
  end

  test 'should get create' do
    get item_lists_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get item_lists_destroy_url
    assert_response :success
  end
end
