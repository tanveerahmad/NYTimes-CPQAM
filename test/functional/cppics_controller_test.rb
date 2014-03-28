require 'test_helper'

class CppicsControllerTest < ActionController::TestCase
  setup do
    @cppic = cppics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cppics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cppic" do
    assert_difference('Cppic.count') do
      post :create, cppic: { cell: @cppic.cell, email: @cppic.email, first_name: @cppic.first_name, last_name: @cppic.last_name, phone: @cppic.phone }
    end

    assert_redirected_to cppic_path(assigns(:cppic))
  end

  test "should show cppic" do
    get :show, id: @cppic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cppic
    assert_response :success
  end

  test "should update cppic" do
    put :update, id: @cppic, cppic: { cell: @cppic.cell, email: @cppic.email, first_name: @cppic.first_name, last_name: @cppic.last_name, phone: @cppic.phone }
    assert_redirected_to cppic_path(assigns(:cppic))
  end

  test "should destroy cppic" do
    assert_difference('Cppic.count', -1) do
      delete :destroy, id: @cppic
    end

    assert_redirected_to cppics_path
  end
end
