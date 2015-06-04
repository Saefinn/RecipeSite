class FoodplannersController < ApplicationController
  before_action :set_foodplanner, only: [:show, :edit, :update, :destroy]

  # GET /foodplanners
  # GET /foodplanners.json
  def index
    @foodplanners = Foodplanner.all.order(:date)
  end

  # GET /foodplanners/1
  # GET /foodplanners/1.json
  def show
  end

  # GET /foodplanners/new
  def new
    @foodplanner = Foodplanner.new
  end

  # GET /foodplanners/1/edit
  def edit
  end

  # POST /foodplanners
  # POST /foodplanners.json
  def create
    @foodplanner = Foodplanner.new(foodplanner_params)

    respond_to do |format|
      if @foodplanner.save
        format.html { redirect_to @foodplanner, notice: 'Foodplanner was successfully created.' }
        format.json { render :show, status: :created, location: @foodplanner }
      else
        format.html { render :new }
        format.json { render json: @foodplanner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodplanners/1
  # PATCH/PUT /foodplanners/1.json
  def update
    respond_to do |format|
      if @foodplanner.update(foodplanner_params)
        format.html { redirect_to @foodplanner, notice: 'Foodplanner was successfully updated.' }
        format.json { render :show, status: :ok, location: @foodplanner }
      else
        format.html { render :edit }
        format.json { render json: @foodplanner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodplanners/1
  # DELETE /foodplanners/1.json
  def destroy
    @foodplanner.destroy
    respond_to do |format|
      format.html { redirect_to foodplanners_url, notice: 'Foodplanner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodplanner
      @foodplanner = Foodplanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodplanner_params
      params.require(:foodplanner).permit(:title, :breakfast, :lunch, :dinner, :snacks, :date, :shoppinglist)
    end
end
