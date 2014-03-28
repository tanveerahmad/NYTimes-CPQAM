class CpScoreSheetSectionsController < ApplicationController
  # GET /cp_score_sheet_sections
  # GET /cp_score_sheet_sections.json
  def index
    @cp_score_sheet_sections = CpScoreSheetSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cp_score_sheet_sections }
    end
  end

  # GET /cp_score_sheet_sections/1
  # GET /cp_score_sheet_sections/1.json
  def show
    @cp_score_sheet_section = CpScoreSheetSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cp_score_sheet_section }
    end
  end

  # GET /cp_score_sheet_sections/new
  # GET /cp_score_sheet_sections/new.json
  def new
    @cp_score_sheet_section = CpScoreSheetSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cp_score_sheet_section }
    end
  end

  # GET /cp_score_sheet_sections/1/edit
  def edit
    @cp_score_sheet_section = CpScoreSheetSection.find(params[:id])
  end

  # POST /cp_score_sheet_sections
  # POST /cp_score_sheet_sections.json
  def create
    @cp_score_sheet_section = CpScoreSheetSection.new(params[:cp_score_sheet_section])

    respond_to do |format|
      if @cp_score_sheet_section.save
        format.html { redirect_to @cp_score_sheet_section, notice: 'Cp score sheet section was successfully created.' }
        format.json { render json: @cp_score_sheet_section, status: :created, location: @cp_score_sheet_section }
      else
        format.html { render action: "new" }
        format.json { render json: @cp_score_sheet_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cp_score_sheet_sections/1
  # PUT /cp_score_sheet_sections/1.json
  def update
    @cp_score_sheet_section = CpScoreSheetSection.find(params[:id])

    respond_to do |format|
      if @cp_score_sheet_section.update_attributes(params[:cp_score_sheet_section])
        format.html { redirect_to @cp_score_sheet_section, notice: 'Cp score sheet section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cp_score_sheet_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp_score_sheet_sections/1
  # DELETE /cp_score_sheet_sections/1.json
  def destroy
    @cp_score_sheet_section = CpScoreSheetSection.find(params[:id])
    @cp_score_sheet_section.destroy

    respond_to do |format|
      format.html { redirect_to cp_score_sheet_sections_url }
      format.json { head :no_content }
    end
  end
end
