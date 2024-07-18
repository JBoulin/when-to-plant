class PlantListsController < ApplicationController
  before_action :set_plant_list, only: [:show, :update, :destroy]

  def index
    @plant_lists = PlantList.all
  end

  def show
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @list = List.find(params[:list_id])
    @plant_list = PlantList.new
    @plant_list.plant = @plant
    @plant_list.list = @list
    if @plant_list.save
      redirect_to @plant, notice: 'La plante a été ajoutée à votre liste'
    else
      render 'plants/show'
    end
  end

  def update
    if @plant_list.update(plant_list_params)
      redirect_to @plant_list, notice: 'PlantList was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @plant_list.destroy
    redirect_to plant_lists_url, notice: 'PlantList was successfully removed.'
  end

  private

  def set_plant_list
    @plant_list = PlantList.find(params[:id])
  end
end
