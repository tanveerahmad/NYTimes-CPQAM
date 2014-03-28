require 'test_helper'

class PageTypesControllerTest < ActionController::TestCase
  setup do
    @page_type = page_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_type" do
    assert_difference('PageType.count') do
      post :create, page_type: { number_of_page: @page_type.number_of_page, page_type: @page_type.page_type }
    end

    assert_redirected_to page_type_path(assigns(:page_type))
  end

  test "should show page_type" do
    get :show, id: @page_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_type
    assert_response :success
  end

  test "should update page_type" do
    put :update, id: @page_type, page_type: { number_of_page: @page_type.number_of_page, page_type: @page_type.page_type }
    assert_redirected_to page_type_path(assigns(:page_type))
  end

  test "should destroy page_type" do
    assert_difference('PageType.count', -1) do
      delete :destroy, id: @page_type
    end

    assert_redirected_to page_types_path
  end
end
