class PlantListsController < ApplicationController
  before_action :set_plant_list, only: [:show, :edit, :update, :destroy]

  def index
    @plant_lists = PlantList.all
  end

  def show
  end

  def create
    @list = List.find(params[:list_id])
    @plant_list = @list.plant_lists.build(plant_list_params)
    if @plant_list.save
      redirect_to @list, notice: 'Plant was successfully added to the list.'
    else
      render 'lists/show'
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

  def plant_list_params
    params.require(:plant_list).permit(:plant_id, :list_id)
  end
end
