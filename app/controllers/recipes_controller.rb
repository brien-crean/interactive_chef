class RecipesController < ApplicationController
  before_action :authenticate_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.order("created_at")
    @recipe_scrapes = RecipeScrape.order("created_at")
    respond_to do |format|
      format.html { render }
      format.json { render json: @recipes.select(:id, :title, :description, :image).to_json }
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # consider using selectize.js
    # untested code:
    # recipe_params["includings_attributes"].each_value do |v|
    #   if v["ingredient"].to_i.to_s != v["ingredient"].to_s
    #     ing = Ingredient.create(name: v["ingredient"])
    #     v["ingredient"] = ing.id
    #   end
    # end
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def show
    @comment = Comment.new

    ingredients = [];
    @recipe.includings.each do |including|
      ingredients.push("#{including.amount} #{including.measure_type} #{including.ingredient.name}")
    end


    @full_recipe = {recipe: @recipe, steps: @recipe.steps, ingredients: ingredients }

    respond_to do |format|
      format.html { render }
      format.json { render json: @full_recipe.to_json }
    end

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
    params.require(:recipe).permit(:title, :description, :cook_time, :prep_time, :image, {tag_ids: []},
                                   steps_attributes: [:id, :body, :_destroy],
                                   includings_attributes: [:id, :amount, :measure_type, :ingredient_id, :_destroy])
  end

  def find_recipe
    @recipe = Recipe.find params[:id]
  end

end
