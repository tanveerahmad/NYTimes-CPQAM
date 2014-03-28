class CpPressesController < ApplicationController
  # GET /cp_presses
  # GET /cp_presses.json
  def index
    @cp_presses = CpPress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cp_presses }
    end
  end

  # GET /cp_presses/1
  # GET /cp_presses/1.json
  def show
    @cp_press = CpPress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cp_press }
    end
  end

  # GET /cp_presses/new
  # GET /cp_presses/new.json
  def new
    @cp_press = CpPress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cp_press }
    end
  end

  # GET /cp_presses/1/edit
  def edit
    @cp_press = CpPress.find(params[:id])
  end

  # POST /cp_presses
  # POST /cp_presses.json
  def create
    @cp_press = CpPress.new(params[:cp_press])

    respond_to do |format|
      if @cp_press.save
        format.html { redirect_to @cp_press, notice: 'Cp press was successfully created.' }
        format.json { render json: @cp_press, status: :created, location: @cp_press }
      else
        format.html { render action: "new" }
        format.json { render json: @cp_press.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cp_presses/1
  # PUT /cp_presses/1.json
  def update
    @cp_press = CpPress.find(params[:id])

    respond_to do |format|
      if @cp_press.update_attributes(params[:cp_press])
        format.html { redirect_to @cp_press, notice: 'Cp press was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cp_press.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp_presses/1
  # DELETE /cp_presses/1.json
  def destroy
    @cp_press = CpPress.find(params[:id])
    @cp_press.destroy

    respond_to do |format|
      format.html { redirect_to cp_presses_url }
      format.json { head :no_content }
    end
  end
end
