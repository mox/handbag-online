require 'test_helper'

class HandbagsControllerTest < ActionController::TestCase
  setup do
    @handbag = handbags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handbags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handbag" do
    assert_difference('Handbag.count') do
      post :create, :handbag => @handbag.attributes
    end

    assert_redirected_to handbag_path(assigns(:handbag))
  end

  test "should show handbag" do
    get :show, :id => @handbag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @handbag.to_param
    assert_response :success
  end

  test "should update handbag" do
    put :update, :id => @handbag.to_param, :handbag => @handbag.attributes
    assert_redirected_to handbag_path(assigns(:handbag))
  end

  test "should destroy handbag" do
    assert_difference('Handbag.count', -1) do
      delete :destroy, :id => @handbag.to_param
    end

    assert_redirected_to handbags_path
  end
end
