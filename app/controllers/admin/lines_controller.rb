class Admin::LinesController < ApplicationController
  # GET /lines
  # GET /lines.json
  def index
    @lines = Line.all
    @breadcrumbs = [["Admin", admin_path], ["Lines", nil]]
    @header_title = "All Product Lines"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lines }
    end
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
    @line = Line.find(params[:id])
    @header_title = "Product Line"
    @breadcrumbs = [["Admin", admin_path], ["Lines", admin_lines_path], [(@line.name && !@line.name.empty? && @line.name)|| "Unnamed", nil]]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line }
    end
  end

  # GET /lines/new
  # GET /lines/new.json
  def new
    @line = Line.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line }
    end
  end

  # GET /lines/1/edit
  def edit
    @line = Line.find(params[:id])
    @breadcrumbs = [["Admin", admin_path], ["Lines", admin_lines_path], [(@line.name && !@line.name.empty? && @line.name)|| "Unnamed", nil]]
    @header_title = "Edit Product Line"
  end

  # POST /lines
  # POST /lines.json
  def create
    @line = Line.new(params[:line])

    respond_to do |format|
      if @line.save
        format.html { redirect_to admin_line_path(@line), notice: 'Line was successfully created.' }
        format.json { render json: @line, status: :created, location: @line }
      else
        format.html { render action: "new" }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lines/1
  # PUT /lines/1.json
  def update
    @line = Line.find(params[:id])

    respond_to do |format|
      if @line.update_attributes(params[:line])
        format.html { redirect_to admin_line_path(@line), notice: 'Line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @line = Line.find(params[:id])
    @line.destroy

    respond_to do |format|
      format.html { redirect_to admin_lines_url }
      format.json { head :no_content }
    end
  end
end
