require 'test_helper'

class CpScoreSheetConfigsControllerTest < ActionController::TestCase
  setup do
    @cp_score_sheet_config = cp_score_sheet_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_score_sheet_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_score_sheet_config" do
    assert_difference('CpScoreSheetConfig.count') do
      post :create, cp_score_sheet_config: { bw_page_rated: @cp_score_sheet_config.bw_page_rated, color_page_rated: @cp_score_sheet_config.color_page_rated, foreman_id: @cp_score_sheet_config.foreman_id, issue_date: @cp_score_sheet_config.issue_date, pic_id: @cp_score_sheet_config.pic_id, press_id: @cp_score_sheet_config.press_id, press_run_id: @cp_score_sheet_config.press_run_id, product_id: @cp_score_sheet_config.product_id, total_section: @cp_score_sheet_config.total_section }
    end

    assert_redirected_to cp_score_sheet_config_path(assigns(:cp_score_sheet_config))
  end

  test "should show cp_score_sheet_config" do
    get :show, id: @cp_score_sheet_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_score_sheet_config
    assert_response :success
  end

  test "should update cp_score_sheet_config" do
    put :update, id: @cp_score_sheet_config, cp_score_sheet_config: { bw_page_rated: @cp_score_sheet_config.bw_page_rated, color_page_rated: @cp_score_sheet_config.color_page_rated, foreman_id: @cp_score_sheet_config.foreman_id, issue_date: @cp_score_sheet_config.issue_date, pic_id: @cp_score_sheet_config.pic_id, press_id: @cp_score_sheet_config.press_id, press_run_id: @cp_score_sheet_config.press_run_id, product_id: @cp_score_sheet_config.product_id, total_section: @cp_score_sheet_config.total_section }
    assert_redirected_to cp_score_sheet_config_path(assigns(:cp_score_sheet_config))
  end

  test "should destroy cp_score_sheet_config" do
    assert_difference('CpScoreSheetConfig.count', -1) do
      delete :destroy, id: @cp_score_sheet_config
    end

    assert_redirected_to cp_score_sheet_configs_path
  end
end
