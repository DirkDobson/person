class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update 
    @plant = Plant.find(params[:id])

    if @plant.update(plant_params)
      redirect_to plant_path(@plant.id)
    else
      render :edit
    end
  end

  def destroy 
    Plant.find(params[:id]).destroy
    redirect_to plants_path
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :division, :family)
  end
end
