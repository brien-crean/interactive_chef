class CommentsController < ApplicationController
  before_action :authenticate_user, only: [:create, :destroy]

  def create
    comment_params = params.require(:comment).permit([:body])
    @comment = Comment.new(comment_params)
    @recipe = Recipe.find params[:recipe_id]
    @comment.recipe = @recipe
    @comment.user = current_user

    if @comment.save
      redirect_to recipe_path(@recipe), notice: "Comment created!"
    else
      render '/recipes/show'
    end
  end

  def destroy
    @recipe = Recipe.find params[:recipe_id]
  end
end
