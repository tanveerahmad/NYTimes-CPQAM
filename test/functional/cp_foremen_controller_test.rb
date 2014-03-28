require 'test_helper'

class CpForemenControllerTest < ActionController::TestCase
  setup do
    @cp_foreman = cp_foremen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_foremen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_foreman" do
    assert_difference('CpForeman.count') do
      post :create, cp_foreman: { cell: @cp_foreman.cell, email: @cp_foreman.email, first_name: @cp_foreman.first_name, last_name: @cp_foreman.last_name, phone: @cp_foreman.phone }
    end

    assert_redirected_to cp_foreman_path(assigns(:cp_foreman))
  end

  test "should show cp_foreman" do
    get :show, id: @cp_foreman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_foreman
    assert_response :success
  end

  test "should update cp_foreman" do
    put :update, id: @cp_foreman, cp_foreman: { cell: @cp_foreman.cell, email: @cp_foreman.email, first_name: @cp_foreman.first_name, last_name: @cp_foreman.last_name, phone: @cp_foreman.phone }
    assert_redirected_to cp_foreman_path(assigns(:cp_foreman))
  end

  test "should destroy cp_foreman" do
    assert_difference('CpForeman.count', -1) do
      delete :destroy, id: @cp_foreman
    end

    assert_redirected_to cp_foremen_path
  end
end
