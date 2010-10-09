require 'test_helper'

class ElectronicPursesControllerTest < ActionController::TestCase
  setup do
    @electronic_purse = electronic_purses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electronic_purses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electronic_purse" do
    assert_difference('ElectronicPurse.count') do
      post :create, :electronic_purse => @electronic_purse.attributes
    end

    assert_redirected_to electronic_purse_path(assigns(:electronic_purse))
  end

  test "should show electronic_purse" do
    get :show, :id => @electronic_purse.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @electronic_purse.to_param
    assert_response :success
  end

  test "should update electronic_purse" do
    put :update, :id => @electronic_purse.to_param, :electronic_purse => @electronic_purse.attributes
    assert_redirected_to electronic_purse_path(assigns(:electronic_purse))
  end

  test "should destroy electronic_purse" do
    assert_difference('ElectronicPurse.count', -1) do
      delete :destroy, :id => @electronic_purse.to_param
    end

    assert_redirected_to electronic_purses_path
  end
end
