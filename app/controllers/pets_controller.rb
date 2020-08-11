class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    # Récupérer tous les pets et les stocker dans une variable d'instance
    @pets = Pet.all
  end

  def show
    # puts params => {"controller"=>"pets", "action"=>"show", "id"=>"1"}
  end

  def new
    @pet = Pet.new
  end

  def create
    # 1. Créer un Pet avec les params autorisés
    @pet = Pet.new(pet_params)
    # 2. Le sauvegarder
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
    # 3. Rediriger vers la page de détails du nouveau pet
  end

  def edit
  end

  def update
    @pet.update(pet_params)

    # if @pet.save ....
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :species, :address, :found_date)
  end
end
