class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.order("created_at")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
      params.require(:recipe).permit([:title, :description, :cook_time, :prep_time])
  end

  def find_recipe
    @recipe = Recipe.find params[:id]
  end

end
