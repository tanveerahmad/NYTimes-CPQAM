class CpForemenController < ApplicationController
  # GET /cp_foremen
  # GET /cp_foremen.json
  def index
    @cp_foremen = CpForeman.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cp_foremen }
    end
  end

  # GET /cp_foremen/1
  # GET /cp_foremen/1.json
  def show
    @cp_foreman = CpForeman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cp_foreman }
    end
  end

  # GET /cp_foremen/new
  # GET /cp_foremen/new.json
  def new
    @cp_foreman = CpForeman.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cp_foreman }
    end
  end

  # GET /cp_foremen/1/edit
  def edit
    @cp_foreman = CpForeman.find(params[:id])
  end

  # POST /cp_foremen
  # POST /cp_foremen.json
  def create
    @cp_foreman = CpForeman.new(params[:cp_foreman])

    respond_to do |format|
      if @cp_foreman.save
        format.html { redirect_to @cp_foreman, notice: 'Cp foreman was successfully created.' }
        format.json { render json: @cp_foreman, status: :created, location: @cp_foreman }
      else
        format.html { render action: "new" }
        format.json { render json: @cp_foreman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cp_foremen/1
  # PUT /cp_foremen/1.json
  def update
    @cp_foreman = CpForeman.find(params[:id])

    respond_to do |format|
      if @cp_foreman.update_attributes(params[:cp_foreman])
        format.html { redirect_to @cp_foreman, notice: 'Cp foreman was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cp_foreman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp_foremen/1
  # DELETE /cp_foremen/1.json
  def destroy
    @cp_foreman = CpForeman.find(params[:id])
    @cp_foreman.destroy

    respond_to do |format|
      format.html { redirect_to cp_foremen_url }
      format.json { head :no_content }
    end
  end
end
