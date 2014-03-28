class CpScoreSheetConfigsController < ApplicationController
  # GET /cp_score_sheet_configs
  # GET /cp_score_sheet_configs.json
  def index
    @cp_score_sheet_configs = CpScoreSheetConfig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cp_score_sheet_configs }
    end
  end

  # GET /cp_score_sheet_configs/1
  # GET /cp_score_sheet_configs/1.json
  def show
    @cp_score_sheet_config = CpScoreSheetConfig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cp_score_sheet_config }
    end
  end

  # GET /cp_score_sheet_configs/new
  # GET /cp_score_sheet_configs/new.json
  def new
    @cp_score_sheet_config = CpScoreSheetConfig.new
    1.times{@cp_score_sheet_config.cp_score_sheet_sections.build}

  end

  # GET /cp_score_sheet_configs/1/edit
  def edit
    @cp_score_sheet_config = CpScoreSheetConfig.find(params[:id])
  end

  # POST /cp_score_sheet_configs
  # POST /cp_score_sheet_configs.json
  def create
    @cp_score_sheet_config = CpScoreSheetConfig.new(params[:cp_score_sheet_config])

    respond_to do |format|
      if @cp_score_sheet_config.save
        format.html { redirect_to @cp_score_sheet_config, notice: 'Cp score sheet config was successfully created.' }
        format.json { render json: @cp_score_sheet_config, status: :created, location: @cp_score_sheet_config }
      else
        format.html { render action: "new" }
        format.json { render json: @cp_score_sheet_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cp_score_sheet_configs/1
  # PUT /cp_score_sheet_configs/1.json
  def update
    @cp_score_sheet_config = CpScoreSheetConfig.find(params[:id])

    respond_to do |format|
      if @cp_score_sheet_config.update_attributes(params[:cp_score_sheet_config])
        format.html { redirect_to @cp_score_sheet_config, notice: 'Cp score sheet config was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cp_score_sheet_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp_score_sheet_configs/1
  # DELETE /cp_score_sheet_configs/1.json
  def destroy
    @cp_score_sheet_config = CpScoreSheetConfig.find(params[:id])
    @cp_score_sheet_config.destroy

    respond_to do |format|
      format.html { redirect_to cp_score_sheet_configs_url }
      format.json { head :no_content }
    end
  end
end
