class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :update, :destroy]

  def index
    @tips = Tip.all
  end

  def show
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tip = @plant.tips.build(tip_params)
    @tip.user = current_user
    @tip.status = "En attente"
    if @tip.save!
      redirect_to @plant, notice: 'Votre conseil a bien été envoyé !'
    else
      render 'plants/show'
    end
  end

  def update
    if @tip.update(tip_params)
      redirect_to @tip, notice: 'Votre conseil a bien été modifié !'
    else
      render :edit
    end
  end

  def destroy
    @tip.destroy
    redirect_to tips_url, notice: 'Votre conseil a bien été supprimé !'
  end

  private

  def set_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.require(:tip).permit(:titre, :contenu, :user_id, :plant_id, :status)
  end
end
