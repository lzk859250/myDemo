require 'test_helper'

class YahoopostsControllerTest < ActionController::TestCase
  setup do
    @yahoopost = yahooposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yahooposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yahoopost" do
    assert_difference('Yahoopost.count') do
      post :create, :yahoopost => @yahoopost.attributes
    end

    assert_redirected_to yahoopost_path(assigns(:yahoopost))
  end

  test "should show yahoopost" do
    get :show, :id => @yahoopost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @yahoopost.to_param
    assert_response :success
  end

  test "should update yahoopost" do
    put :update, :id => @yahoopost.to_param, :yahoopost => @yahoopost.attributes
    assert_redirected_to yahoopost_path(assigns(:yahoopost))
  end

  test "should destroy yahoopost" do
    assert_difference('Yahoopost.count', -1) do
      delete :destroy, :id => @yahoopost.to_param
    end

    assert_redirected_to yahooposts_path
  end
end
