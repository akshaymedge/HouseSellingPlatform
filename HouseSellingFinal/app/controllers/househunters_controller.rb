class HousehuntersController < ApplicationController
  before_action :set_househunter, only: [:show, :edit, :update, :destroy]

  # GET /househunters
  # GET /househunters.json
  # session[:current_user_id] = Househunter.id
  def index
    @househunters = Househunter.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @househunters }
    end
  end

  # GET /househunters/1
  # GET /househunters/1.json
  def show
    @househunter = Househunter.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @househunter }
    end
  end

  # GET /househunters/new
  def new
    @househunter = Househunter.new
  end

  # GET /househunters/1/edit
  def edit
    @househunter = Househunter.find(params[:id])
  end

  # POST /househunters
  # POST /househunters.json
  def create
    @househunter = Househunter.new(househunter_params)

    respond_to do |format|
      if @househunter.save
        format.html { redirect_to @househunter, notice: 'Househunter was successfully created.' }
        format.json { render :show, status: :created, location: @househunter }
      else
        format.html { render :new }
        format.json { render json: @househunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /househunters/1
  # PATCH/PUT /househunters/1.json
  def update
    respond_to do |format|
      if @househunter.update(househunter_params)
        format.html { redirect_to @househunter, notice: 'Househunter was successfully updated.' }
        format.json { render :show, status: :ok, location: @househunter }
      else
        format.html { render :edit }
        format.json { render json: @househunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /househunters/1
  # DELETE /househunters/1.json
  def destroy
    @househunter = Househunter.find(params[:id])
    @househunter.destroy
    respond_to do |format|
      format.html { redirect_to househunters_path, notice: 'Househunter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_househunter
      @househunter = Househunter.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to :action => 'index'
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def househunter_params
      params.require(:househunter).permit(:email, :name, :password, :phone, :contactmethod)
    end
end
