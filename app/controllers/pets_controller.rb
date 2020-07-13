class PetsController < ApplicationController
  before_action :set_animal, only: [:new, :edit]
    
    def index
      @pets = Pet.all
  end

  def show
      @pet = Pet.find(params[:id])
  end

  def new
      @pet = Pet.new
  end

  def create
      @pet = Pet.new(pet_params)
      @pet.save

      flash.notice = "Pet '#{@pet.name}' Created!"

      redirect_to pet_path(@pet)
  end

  def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy     

      flash.notice = "Pet '#{@pet.name}' Deleted!"

      redirect_to pets_path
  end

  def edit
      @pet = Pet.find(params[:id])
  end

  def update
      @pet = Pet.find(params[:id])
      @pet.update(pet_params)

      flash.notice = "Pet '#{@pet.name}' Updated!"

      redirect_to pet_path(@pet)        
  end

  def random
    @random = Pet.offset(rand(Pet.count)).first
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :animal, :bio, :picture)
  end

  def set_animal
    @animal_types = Pet.animals.keys
  end

end
