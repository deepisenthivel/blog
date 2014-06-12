require 'test_helper'

class HunsControllerTest < ActionController::TestCase
  setup do
    @hun = huns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:huns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hun" do
    assert_difference('Hun.count') do
      post :create, hun: { name: @hun.name }
    end

    assert_redirected_to hun_path(assigns(:hun))
  end

  test "should show hun" do
    get :show, id: @hun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hun
    assert_response :success
  end

  test "should update hun" do
    patch :update, id: @hun, hun: { name: @hun.name }
    assert_redirected_to hun_path(assigns(:hun))
  end

  test "should destroy hun" do
    assert_difference('Hun.count', -1) do
      delete :destroy, id: @hun
    end

    assert_redirected_to huns_path
  end
end
