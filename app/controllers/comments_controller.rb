class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    @comments = Comment.all
    if params[:query].present?
      @comments = Comment.search_by_titre_and_contenu(params[:query])
    else
      @comments = Comment.all
    end
  end

  def show
  end

  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.status = "En attente"
    if @comment.save
      redirect_to @post, notice: 'Votre commentaire à bien été envoyé ! Il sera validé par un jardinier confirmé dans les prochaines heures.'
    else
      render 'posts/show', status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to comments_url, notice: 'Comment was successfully destroyed.'
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:titre, :contenu, :status)
  end
end
