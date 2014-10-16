require 'test_helper'

class MashUpsControllerTest < ActionController::TestCase
  setup do
    @mash_up = mash_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mash_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mash_up" do
    assert_difference('MashUp.count') do
      post :create, mash_up: { name: @mash_up.name }
    end

    assert_redirected_to mash_up_path(assigns(:mash_up))
  end

  test "should show mash_up" do
    get :show, id: @mash_up
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mash_up
    assert_response :success
  end

  test "should update mash_up" do
    patch :update, id: @mash_up, mash_up: { name: @mash_up.name }
    assert_redirected_to mash_up_path(assigns(:mash_up))
  end

  test "should destroy mash_up" do
    assert_difference('MashUp.count', -1) do
      delete :destroy, id: @mash_up
    end

    assert_redirected_to mash_ups_path
  end
end
