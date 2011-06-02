require 'test_helper'

class SinapostsControllerTest < ActionController::TestCase
  setup do
    @sinapost = sinaposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sinaposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sinapost" do
    assert_difference('Sinapost.count') do
      post :create, :sinapost => @sinapost.attributes
    end

    assert_redirected_to sinapost_path(assigns(:sinapost))
  end

  test "should show sinapost" do
    get :show, :id => @sinapost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sinapost.to_param
    assert_response :success
  end

  test "should update sinapost" do
    put :update, :id => @sinapost.to_param, :sinapost => @sinapost.attributes
    assert_redirected_to sinapost_path(assigns(:sinapost))
  end

  test "should destroy sinapost" do
    assert_difference('Sinapost.count', -1) do
      delete :destroy, :id => @sinapost.to_param
    end

    assert_redirected_to sinaposts_path
  end
end
