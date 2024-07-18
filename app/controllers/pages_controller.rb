class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home, :about, :calendrier, :contact, :recrutement, :mentions_legales]

  def home
    @plants = Plant.all.take(3)
    @posts = Post.all.take(2)
  end

  def about
  end

  def calendrier
  end

  def contact
  end

  def mentions_legales
  end

  def recrutement
  end
end
