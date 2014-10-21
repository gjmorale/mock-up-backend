require 'test_helper'

class LinkSourcesControllerTest < ActionController::TestCase
  setup do
    @link_source = link_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:link_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link_source" do
    assert_difference('LinkSource.count') do
      post :create, link_source: { name: @link_source.name, picture: @link_source.picture }
    end

    assert_redirected_to link_source_path(assigns(:link_source))
  end

  test "should show link_source" do
    get :show, id: @link_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link_source
    assert_response :success
  end

  test "should update link_source" do
    patch :update, id: @link_source, link_source: { name: @link_source.name, picture: @link_source.picture }
    assert_redirected_to link_source_path(assigns(:link_source))
  end

  test "should destroy link_source" do
    assert_difference('LinkSource.count', -1) do
      delete :destroy, id: @link_source
    end

    assert_redirected_to link_sources_path
  end
end
