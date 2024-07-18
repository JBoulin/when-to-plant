class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to posts_url, alert: 'Post not found.' # Gérer le cas où le post n'existe pas
  rescue ArgumentError
    redirect_to posts_url, alert: 'Invalid post ID.' # Gérer le cas où l'ID est invalide
  end

  def post_params
    params.require(:post).permit(:titre, :contenu, :categorie, :date_publication, :photos)
  end
end
