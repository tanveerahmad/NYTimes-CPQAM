class CpPressRunsController < ApplicationController
  # GET /cp_press_runs
  # GET /cp_press_runs.json
  def index
    @cp_press_runs = CpPressRun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cp_press_runs }
    end
  end

  # GET /cp_press_runs/1
  # GET /cp_press_runs/1.json
  def show
    @cp_press_run = CpPressRun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cp_press_run }
    end
  end

  # GET /cp_press_runs/new
  # GET /cp_press_runs/new.json
  def new
    @cp_press_run = CpPressRun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cp_press_run }
    end
  end

  # GET /cp_press_runs/1/edit
  def edit
    @cp_press_run = CpPressRun.find(params[:id])
  end

  # POST /cp_press_runs
  # POST /cp_press_runs.json
  def create
    @cp_press_run = CpPressRun.new(params[:cp_press_run])

    respond_to do |format|
      if @cp_press_run.save
        format.html { redirect_to @cp_press_run, notice: 'Cp press run was successfully created.' }
        format.json { render json: @cp_press_run, status: :created, location: @cp_press_run }
      else
        format.html { render action: "new" }
        format.json { render json: @cp_press_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cp_press_runs/1
  # PUT /cp_press_runs/1.json
  def update
    @cp_press_run = CpPressRun.find(params[:id])

    respond_to do |format|
      if @cp_press_run.update_attributes(params[:cp_press_run])
        format.html { redirect_to @cp_press_run, notice: 'Cp press run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cp_press_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp_press_runs/1
  # DELETE /cp_press_runs/1.json
  def destroy
    @cp_press_run = CpPressRun.find(params[:id])
    @cp_press_run.destroy

    respond_to do |format|
      format.html { redirect_to cp_press_runs_url }
      format.json { head :no_content }
    end
  end
end
