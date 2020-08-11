class PetsController < ApplicationController
  def index
    # Récupérer tous les pets et les stocker dans une variable d'instance
    @pets = Pet.all
  end
end
