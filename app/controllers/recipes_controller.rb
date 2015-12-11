class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.order("created_at")

    respond_to do |format|
      format.html { render }
      format.json { render json: @recipes.select(:id, :title, :description).to_json }
    end
  end

  def new
    @recipe = Recipe.new
    1.times {@recipe.steps.build}
    1.times {@recipe.includings.build}
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

    respond_to do |format|
      format.html { render }
      format.json { render json: @recipe.select(:id, :title, :description).to_json }
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
      params.require(:recipe).permit(:title, :description, :cook_time, :prep_time, :image,
                                      steps_attributes: [:id, :body],
                                      includings_attributes: [:id, :amount, :measure_type, ingredients: [:name]])
  end

  #
  # "recipe"=>{"title"=>"adasfsdfsjkfnk", "description"=>"asfnsd,mfnsd,mfdn", "cook_time"=>"10", "prep_time"=>"210", "steps_attributes"=>{"0"=>{"body"=>"adasdhskjdhkj"}}, "includings_attributes"=>{"0"=>{"amount"=>"10", "measure_type"=>"gssdf", "ingredients"=>{"name"=>"sfsdffsd"}}}}, "commit"=>"Create Recipe"}


  def find_recipe
    @recipe = Recipe.find params[:id]
  end

end
