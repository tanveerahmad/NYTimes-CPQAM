class PageTypesController < ApplicationController
  # GET /page_types
  # GET /page_types.json
  def index
    @page_types = PageType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_types }
    end
  end

  # GET /page_types/1
  # GET /page_types/1.json
  def show
    @page_type = PageType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_type }
    end
  end

  # GET /page_types/new
  # GET /page_types/new.json
  def new
    @page_type = PageType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_type }
    end
  end

  # GET /page_types/1/edit
  def edit
    @page_type = PageType.find(params[:id])
  end

  # POST /page_types
  # POST /page_types.json
  def create
    @page_type = PageType.new(params[:page_type])

    respond_to do |format|
      if @page_type.save
        format.html { redirect_to @page_type, notice: 'Page type was successfully created.' }
        format.json { render json: @page_type, status: :created, location: @page_type }
      else
        format.html { render action: "new" }
        format.json { render json: @page_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /page_types/1
  # PUT /page_types/1.json
  def update
    @page_type = PageType.find(params[:id])

    respond_to do |format|
      if @page_type.update_attributes(params[:page_type])
        format.html { redirect_to @page_type, notice: 'Page type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_types/1
  # DELETE /page_types/1.json
  def destroy
    @page_type = PageType.find(params[:id])
    @page_type.destroy

    respond_to do |format|
      format.html { redirect_to page_types_url }
      format.json { head :no_content }
    end
  end
end
