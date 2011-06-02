require 'test_helper'

class RandomtesssesControllerTest < ActionController::TestCase
  setup do
    @randomtesss = randomtessses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:randomtessses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create randomtesss" do
    assert_difference('Randomtesss.count') do
      post :create, :randomtesss => @randomtesss.attributes
    end

    assert_redirected_to randomtesss_path(assigns(:randomtesss))
  end

  test "should show randomtesss" do
    get :show, :id => @randomtesss.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @randomtesss.to_param
    assert_response :success
  end

  test "should update randomtesss" do
    put :update, :id => @randomtesss.to_param, :randomtesss => @randomtesss.attributes
    assert_redirected_to randomtesss_path(assigns(:randomtesss))
  end

  test "should destroy randomtesss" do
    assert_difference('Randomtesss.count', -1) do
      delete :destroy, :id => @randomtesss.to_param
    end

    assert_redirected_to randomtessses_path
  end
end
