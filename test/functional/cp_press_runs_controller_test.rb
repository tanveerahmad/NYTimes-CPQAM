require 'test_helper'

class CpPressRunsControllerTest < ActionController::TestCase
  setup do
    @cp_press_run = cp_press_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_press_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_press_run" do
    assert_difference('CpPressRun.count') do
      post :create, cp_press_run: { cprun_name: @cp_press_run.cprun_name, product_id: @cp_press_run.product_id }
    end

    assert_redirected_to cp_press_run_path(assigns(:cp_press_run))
  end

  test "should show cp_press_run" do
    get :show, id: @cp_press_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_press_run
    assert_response :success
  end

  test "should update cp_press_run" do
    put :update, id: @cp_press_run, cp_press_run: { cprun_name: @cp_press_run.cprun_name, product_id: @cp_press_run.product_id }
    assert_redirected_to cp_press_run_path(assigns(:cp_press_run))
  end

  test "should destroy cp_press_run" do
    assert_difference('CpPressRun.count', -1) do
      delete :destroy, id: @cp_press_run
    end

    assert_redirected_to cp_press_runs_path
  end
end
