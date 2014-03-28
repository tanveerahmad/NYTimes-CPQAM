require 'test_helper'

class CpPressesControllerTest < ActionController::TestCase
  setup do
    @cp_press = cp_presses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_presses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_press" do
    assert_difference('CpPress.count') do
      post :create, cp_press: { active: @cp_press.active, description: @cp_press.description, press_name: @cp_press.press_name, timezone_id: @cp_press.timezone_id }
    end

    assert_redirected_to cp_press_path(assigns(:cp_press))
  end

  test "should show cp_press" do
    get :show, id: @cp_press
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_press
    assert_response :success
  end

  test "should update cp_press" do
    put :update, id: @cp_press, cp_press: { active: @cp_press.active, description: @cp_press.description, press_name: @cp_press.press_name, timezone_id: @cp_press.timezone_id }
    assert_redirected_to cp_press_path(assigns(:cp_press))
  end

  test "should destroy cp_press" do
    assert_difference('CpPress.count', -1) do
      delete :destroy, id: @cp_press
    end

    assert_redirected_to cp_presses_path
  end
end
