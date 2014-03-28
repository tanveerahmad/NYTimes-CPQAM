require 'test_helper'

class CpScoreSheetSectionsControllerTest < ActionController::TestCase
  setup do
    @cp_score_sheet_section = cp_score_sheet_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cp_score_sheet_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cp_score_sheet_section" do
    assert_difference('CpScoreSheetSection.count') do
      post :create, cp_score_sheet_section: { color_page: @cp_score_sheet_section.color_page, score_sheet_config_id: @cp_score_sheet_section.score_sheet_config_id, section_name: @cp_score_sheet_section.section_name }
    end

    assert_redirected_to cp_score_sheet_section_path(assigns(:cp_score_sheet_section))
  end

  test "should show cp_score_sheet_section" do
    get :show, id: @cp_score_sheet_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cp_score_sheet_section
    assert_response :success
  end

  test "should update cp_score_sheet_section" do
    put :update, id: @cp_score_sheet_section, cp_score_sheet_section: { color_page: @cp_score_sheet_section.color_page, score_sheet_config_id: @cp_score_sheet_section.score_sheet_config_id, section_name: @cp_score_sheet_section.section_name }
    assert_redirected_to cp_score_sheet_section_path(assigns(:cp_score_sheet_section))
  end

  test "should destroy cp_score_sheet_section" do
    assert_difference('CpScoreSheetSection.count', -1) do
      delete :destroy, id: @cp_score_sheet_section
    end

    assert_redirected_to cp_score_sheet_sections_path
  end
end
