class RecipesController < ApplicationController

  def index

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  end

  private

  def recipe_params
      params.require(:recipe).permit([:title, :description, :cook_time, :prep_time])
  end

end
