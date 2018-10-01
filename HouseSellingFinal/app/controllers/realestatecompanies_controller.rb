class RealestatecompaniesController < ApplicationController
  before_action :set_realestatecompany, only: [:show, :edit, :update, :destroy]

  # GET /realestatecompanies
  # GET /realestatecompanies.json
  def index
    @realestatecompanies = Realestatecompany.all
  end

  # GET /realestatecompanies/1
  # GET /realestatecompanies/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @realestatecompany }
    end
  end

  # GET /realestatecompanies/new
  def new
    @realestatecompany = Realestatecompany.new
  end

  # GET /realestatecompanies/1/edit
  def edit
    @realestatecompany = Realestatecompany.find(params[:id])
  end

  # POST /realestatecompanies
  # POST /realestatecompanies.json
  def create
    @realestatecompany = Realestatecompany.new(realestatecompany_params)

    respond_to do |format|
      if @realestatecompany.save
        format.html { redirect_to @realestatecompany, notice: 'Realestatecompany was successfully created.' }
        format.json { render :show, status: :created, location: @realestatecompany }
      else
        format.html { render :new }
        format.json { render json: @realestatecompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realestatecompanies/1
  # PATCH/PUT /realestatecompanies/1.json
  def update
    @realestatecompany = Realestatecompany.find(params[:id])

    respond_to do |format|
      if @realestatecompany.update(realestatecompany_params)
        format.html { redirect_to @realestatecompany, notice: 'Realestatecompany was successfully updated.' }
        format.json { render :show, status: :ok, location: @realestatecompany }
      else
        format.html { render :edit }
        format.json { render json: @realestatecompany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realestatecompanies/1
  # DELETE /realestatecompanies/1.json
  def destroy
    @realestatecompany = Realestatecompany.find(params[:id])
    @realestatecompany.destroy
    respond_to do |format|
      format.html { redirect_to realestatecompanies_url, notice: 'Realestatecompany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_realestatecompany
    @realestatecompany = Realestatecompany.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to :action => 'index'
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def realestatecompany_params
    params.require(:realestatecompany).permit(:companyid, :name, :website, :address, :size, :founded, :revenue, :synopsis)
  end
end
