class PageTypeScoreCriteriaController < ApplicationController
  # GET /page_type_score_criteria
  # GET /page_type_score_criteria.json
  def index
    @page_type_score_criteria = PageTypeScoreCriterium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_type_score_criteria }
    end
  end

  # GET /page_type_score_criteria/1
  # GET /page_type_score_criteria/1.json
  def show
    @page_type_score_criterium = PageTypeScoreCriterium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_type_score_criterium }
    end
  end

  # GET /page_type_score_criteria/new
  # GET /page_type_score_criteria/new.json
  def new
    @page_type_score_criterium = PageTypeScoreCriterium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_type_score_criterium }
    end
  end

  # GET /page_type_score_criteria/1/edit
  def edit
    @page_type_score_criterium = PageTypeScoreCriterium.find(params[:id])
  end

  # POST /page_type_score_criteria
  # POST /page_type_score_criteria.json
  def create
    @page_type_score_criterium = PageTypeScoreCriterium.new(params[:page_type_score_criterium])

    respond_to do |format|
      if @page_type_score_criterium.save
        format.html { redirect_to @page_type_score_criterium, notice: 'Page type score criterium was successfully created.' }
        format.json { render json: @page_type_score_criterium, status: :created, location: @page_type_score_criterium }
      else
        format.html { render action: "new" }
        format.json { render json: @page_type_score_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_type_score_criteria/1
  # PUT /page_type_score_criteria/1.json
  def update
    @page_type_score_criterium = PageTypeScoreCriterium.find(params[:id])

    respond_to do |format|
      if @page_type_score_criterium.update_attributes(params[:page_type_score_criterium])
        format.html { redirect_to @page_type_score_criterium, notice: 'Page type score criterium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_type_score_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_type_score_criteria/1
  # DELETE /page_type_score_criteria/1.json
  def destroy
    @page_type_score_criterium = PageTypeScoreCriterium.find(params[:id])
    @page_type_score_criterium.destroy

    respond_to do |format|
      format.html { redirect_to page_type_score_criteria_url }
      format.json { head :no_content }
    end
  end
end
