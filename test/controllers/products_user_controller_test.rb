require 'test_helper'

class ProductsUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_user_index_url
    assert_response :success
  end

  test "should get new" do
    get products_user_new_url
    assert_response :success
  end

  test "should get edit" do
    get products_user_edit_url
    assert_response :success
  end

  test "should get create" do
    get products_user_create_url
    assert_response :success
  end

  test "should get destroy" do
    get products_user_destroy_url
    assert_response :success
  end

  test "should get update" do
    get products_user_update_url
    assert_response :success
  end

  test "should get show" do
    get products_user_show_url
    assert_response :success
  end

end
