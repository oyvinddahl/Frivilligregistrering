require 'test_helper'

class FrivilligsControllerTest < ActionController::TestCase
  setup do
    @frivillig = frivilligs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frivilligs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frivillig" do
    assert_difference('Frivillig.count') do
      post :create, frivillig: @frivillig.attributes
    end

    assert_redirected_to frivillig_path(assigns(:frivillig))
  end

  test "should show frivillig" do
    get :show, id: @frivillig
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frivillig
    assert_response :success
  end

  test "should update frivillig" do
    put :update, id: @frivillig, frivillig: @frivillig.attributes
    assert_redirected_to frivillig_path(assigns(:frivillig))
  end

  test "should destroy frivillig" do
    assert_difference('Frivillig.count', -1) do
      delete :destroy, id: @frivillig
    end

    assert_redirected_to frivilligs_path
  end
end
