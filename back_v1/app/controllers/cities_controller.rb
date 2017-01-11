class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # POST /search
  def search
    city = City.search(params[:search][:city]).first
    ## Display searchSelect table on logs
    # puts session[:searchSelect]
    redirect_to city_path(city, search_params)
  end

  def showByCity
    @city = City.search(params[:name]).first
    @search = {
      city: @city.id,
      smcd: params[:smcd],
      difficulty: params[:difficulty],
      season: params[:season]
    }
    @search.delete :smcd if @search[:smcd] == "all"
    @search.delete :difficulty if @search[:difficulty] == "all"
    @search.delete :season if @search[:season] == "all"
    @recipes = Recipe.where(@search)
    @currentURL = request.url
    render "cities/show"
  end

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @recipes = Recipe.where(city: @city)
    @currentURL = request.url
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
  end

  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:name, :description, :image, :status)
    end

    def search_params
      params.require(:search).permit(:smcd, :difficulty, :season)
    end

end
