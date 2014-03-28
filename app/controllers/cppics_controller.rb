class CppicsController < ApplicationController
  # GET /cppics
  # GET /cppics.json
  def index
    @cppics = Cppic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cppics }
    end
  end

  # GET /cppics/1
  # GET /cppics/1.json
  def show
    @cppic = Cppic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cppic }
    end
  end

  # GET /cppics/new
  # GET /cppics/new.json
  def new
    @cppic = Cppic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cppic }
    end
  end

  # GET /cppics/1/edit
  def edit
    @cppic = Cppic.find(params[:id])
  end

  # POST /cppics
  # POST /cppics.json
  def create
    @cppic = Cppic.new(params[:cppic])

    respond_to do |format|
      if @cppic.save
        format.html { redirect_to @cppic, notice: 'Cppic was successfully created.' }
        format.json { render json: @cppic, status: :created, location: @cppic }
      else
        format.html { render action: "new" }
        format.json { render json: @cppic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cppics/1
  # PUT /cppics/1.json
  def update
    @cppic = Cppic.find(params[:id])

    respond_to do |format|
      if @cppic.update_attributes(params[:cppic])
        format.html { redirect_to @cppic, notice: 'Cppic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cppic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cppics/1
  # DELETE /cppics/1.json
  def destroy
    @cppic = Cppic.find(params[:id])
    @cppic.destroy

    respond_to do |format|
      format.html { redirect_to cppics_url }
      format.json { head :no_content }
    end
  end
end
