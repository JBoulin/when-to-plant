class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]

  def index
    @plants = Plant.all
    if params[:query].present?
      @plants = Plant.search_by_name_and_description(params[:query])
    else
      @plants = Plant.all
    end
  end

  def show
  end

  def create
    @plant = Plant.new(list_params)
    @plant.save
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :description, :nom_scientifique, :famille, :categorie, :type_semis,
                                  :conseil_semis, :conseil_culture, :periode_semis, :periode_recoltes, :culture,
                                  :exposition, :besoin_eau, :nature_sol, :qualite_sol, :hauteur, :maladie, :ecart_rang,
                                  :temperature, :difficulte, :photos, :query)
  end
end
