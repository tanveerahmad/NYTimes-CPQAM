require 'test_helper'

class PageTypeScoreCriteriaControllerTest < ActionController::TestCase
  setup do
    @page_type_score_criterium = page_type_score_criteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_type_score_criteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create page_type_score_criterium" do
    assert_difference('PageTypeScoreCriterium.count') do
      post :create, page_type_score_criterium: { page_type_id: @page_type_score_criterium.page_type_id, score: @page_type_score_criterium.score, score_criteria_id: @page_type_score_criterium.score_criteria_id }
    end

    assert_redirected_to page_type_score_criterium_path(assigns(:page_type_score_criterium))
  end

  test "should show page_type_score_criterium" do
    get :show, id: @page_type_score_criterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @page_type_score_criterium
    assert_response :success
  end

  test "should update page_type_score_criterium" do
    put :update, id: @page_type_score_criterium, page_type_score_criterium: { page_type_id: @page_type_score_criterium.page_type_id, score: @page_type_score_criterium.score, score_criteria_id: @page_type_score_criterium.score_criteria_id }
    assert_redirected_to page_type_score_criterium_path(assigns(:page_type_score_criterium))
  end

  test "should destroy page_type_score_criterium" do
    assert_difference('PageTypeScoreCriterium.count', -1) do
      delete :destroy, id: @page_type_score_criterium
    end

    assert_redirected_to page_type_score_criteria_path
  end
end
