class ScoreCriteriaController < ApplicationController
  # GET /score_criteria
  # GET /score_criteria.json
  def index
    @score_criteria = ScoreCriterium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @score_criteria }
    end
  end

  # GET /score_criteria/1
  # GET /score_criteria/1.json
  def show
    @score_criterium = ScoreCriterium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @score_criterium }
    end
  end

  # GET /score_criteria/new
  # GET /score_criteria/new.json
  def new
    @score_criterium = ScoreCriterium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @score_criterium }
    end
  end

  # GET /score_criteria/1/edit
  def edit
    @score_criterium = ScoreCriterium.find(params[:id])
  end

  # POST /score_criteria
  # POST /score_criteria.json
  def create
    @score_criterium = ScoreCriterium.new(params[:score_criterium])

    respond_to do |format|
      if @score_criterium.save
        format.html { redirect_to @score_criterium, notice: 'Score criterium was successfully created.' }
        format.json { render json: @score_criterium, status: :created, location: @score_criterium }
      else
        format.html { render action: "new" }
        format.json { render json: @score_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /score_criteria/1
  # PUT /score_criteria/1.json
  def update
    @score_criterium = ScoreCriterium.find(params[:id])

    respond_to do |format|
      if @score_criterium.update_attributes(params[:score_criterium])
        format.html { redirect_to @score_criterium, notice: 'Score criterium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @score_criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_criteria/1
  # DELETE /score_criteria/1.json
  def destroy
    @score_criterium = ScoreCriterium.find(params[:id])
    @score_criterium.destroy

    respond_to do |format|
      format.html { redirect_to score_criteria_url }
      format.json { head :no_content }
    end
  end
end
