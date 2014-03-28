class DefectCausesController < ApplicationController
  # GET /defect_causes
  # GET /defect_causes.json
  def index
    @defect_causes = DefectCause.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @defect_causes }
    end
  end

  # GET /defect_causes/1
  # GET /defect_causes/1.json
  def show
    @defect_cause = DefectCause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @defect_cause }
    end
  end

  # GET /defect_causes/new
  # GET /defect_causes/new.json
  def new
    @defect_cause = DefectCause.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @defect_cause }
    end
  end

  # GET /defect_causes/1/edit
  def edit
    @defect_cause = DefectCause.find(params[:id])
  end

  # POST /defect_causes
  # POST /defect_causes.json
  def create
    @defect_cause = DefectCause.new(params[:defect_cause])

    respond_to do |format|
      if @defect_cause.save
        format.html { redirect_to @defect_cause, notice: 'Defect cause was successfully created.' }
        format.json { render json: @defect_cause, status: :created, location: @defect_cause }
      else
        format.html { render action: "new" }
        format.json { render json: @defect_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /defect_causes/1
  # PUT /defect_causes/1.json
  def update
    @defect_cause = DefectCause.find(params[:id])

    respond_to do |format|
      if @defect_cause.update_attributes(params[:defect_cause])
        format.html { redirect_to @defect_cause, notice: 'Defect cause was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @defect_cause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defect_causes/1
  # DELETE /defect_causes/1.json
  def destroy
    @defect_cause = DefectCause.find(params[:id])
    @defect_cause.destroy

    respond_to do |format|
      format.html { redirect_to defect_causes_url }
      format.json { head :no_content }
    end
  end
end
