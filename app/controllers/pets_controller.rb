class PetsController < ApplicationController
  def index
    # Récupérer tous les pets et les stocker dans une variable d'instance
    @pets = Pet.all
  end

  def show
    # puts params => {"controller"=>"pets", "action"=>"show", "id"=>"1"}
    @pet = Pet.find(params[:id])
  end
end
