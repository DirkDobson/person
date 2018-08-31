class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
    #render :new this work as well as rendering on the edit page
  end

  def create
    @animal = Animal.new(animal_params) 

    if @animal.save
      redirect_to animals_path
    else
      render :new
    end

  end


  private
  
    def animal_params
      params.require(:animal).permit(:name, :age, :hair_color, :gender, :eye_color, :alive)
    end


end