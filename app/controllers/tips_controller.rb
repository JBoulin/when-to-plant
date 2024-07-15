class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  def index
    @tips = Tip.all
  end

  def show
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tip = @plant.tips.build(tip_params)
    if @tip.save
      redirect_to @plant, notice: 'Tip was successfully created.'
    else
      render 'plants/show'
    end
  end

  def update
    if @tip.update(tip_params)
      redirect_to @tip, notice: 'Tip was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tip.destroy
    redirect_to tips_url, notice: 'Tip was successfully destroyed.'
  end

  private

  def set_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.require(:tip).permit(:titre, :contenu, :user_id, :plant_id, :status)
  end
end
