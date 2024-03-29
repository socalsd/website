class Admin::SalonsController < ApplicationController
  # GET /salons
  # GET /salons.json
  def index
    @salons = Salon.all
    @breadcrumbs = [["Admin", admin_path], ["Salons", admin_salons_path]]
    @header_title = "All Salons"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @salons }
    end
  end

  # GET /salons/1
  # GET /salons/1.json
  def show
    @salon = Salon.find(params[:id])
    @breadcrumbs = [["Admin", admin_path], ["Salons", admin_salons_path], [@salon.name, nil]]
    @header_title = "Salon"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @salon }
    end
  end

  # GET /salons/new
  # GET /salons/new.json
  def new
    @salon = Salon.new
    @header_title = "New Salon"
    @breadcrumbs = [["Admin", admin_path], ["Salons", admin_salons_path]]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @salon }
    end
  end

  # GET /salons/1/edit
  def edit
    @salon = Salon.find(params[:id])
    @header_title = "Edit Salon"
    @breadcrumbs = [["Admin", admin_path], ["Salons", admin_salons_path]]
  end

  # POST /salons
  # POST /salons.json
  def create
    @salon = Salon.new(params[:salon])

    respond_to do |format|
      if @salon.save
        format.html { redirect_to admin_salon_path(@salon), notice: 'Salon was successfully created.' }
        format.json { render json: @salon, status: :created, location: @salon }
      else
        format.html { render action: "new" }
        format.json { render json: @salon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /salons/1
  # PUT /salons/1.json
  def update
    @salon = Salon.find(params[:id])

    respond_to do |format|
      if @salon.update_attributes(params[:salon])
        format.html { redirect_to admin_salon_path(@salon), notice: 'Salon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @salon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salons/1
  # DELETE /salons/1.json
  def destroy
    @salon = Salon.find(params[:id])
    @salon.destroy

    respond_to do |format|
      format.html { redirect_to admin_salons_url }
      format.json { head :no_content }
    end
  end
end
