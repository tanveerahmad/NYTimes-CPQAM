require 'test_helper'

class DefectCausesControllerTest < ActionController::TestCase
  setup do
    @defect_cause = defect_causes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defect_causes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defect_cause" do
    assert_difference('DefectCause.count') do
      post :create, defect_cause: { defect_cause: @defect_cause.defect_cause, points: @defect_cause.points, score_criterium_id: @defect_cause.score_criterium_id }
    end

    assert_redirected_to defect_cause_path(assigns(:defect_cause))
  end

  test "should show defect_cause" do
    get :show, id: @defect_cause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defect_cause
    assert_response :success
  end

  test "should update defect_cause" do
    put :update, id: @defect_cause, defect_cause: { defect_cause: @defect_cause.defect_cause, points: @defect_cause.points, score_criterium_id: @defect_cause.score_criterium_id }
    assert_redirected_to defect_cause_path(assigns(:defect_cause))
  end

  test "should destroy defect_cause" do
    assert_difference('DefectCause.count', -1) do
      delete :destroy, id: @defect_cause
    end

    assert_redirected_to defect_causes_path
  end
end
