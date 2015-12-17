require 'open-uri'
class ScrapeRecipesController < ApplicationController

  def index

    recipe_scrape = open('http://allrecipes.com/recipe/222002/chef-johns-stuffed-peppers/')

    doc = Nokogiri::HTML(recipe_scrape)

    # All Recipes CSS selectors
    title_selector            =   ".recipe-summary__h1"
    ingredient_list_selector  =   ".added"
      direction_list_selector   =   ".recipe-directions__list--item"
    image_selector            =   ".rec-photo"

    # Title
    @title = doc.at_css(title_selector).text

    # Image
    @image = doc.at_css(image_selector)[:src]

    # Ingredient list
    @ingredient_list = doc.css(ingredient_list_selector)

    # Directions
    @directions_list = doc.css(direction_list_selector)


  end

  def new

  end

  def create

    scrape_url = params[:URL]
    recipe_scrape = open(scrape_url)
    doc = Nokogiri::HTML(recipe_scrape)

    # All Recipes CSS selectors
    title_selector            =   ".recipe-summary__h1"
    description_selector      =   ".submitter__description"
    prep_time_selector        =   ".prepTime__item--time"
    ingredient_list_selector  =   ".added"
    direction_list_selector   =   ".recipe-directions__list--item"
    image_selector            =   ".rec-photo"

    # Title
    @title = doc.at_css(title_selector).text
    @description = doc.at_css(description_selector).text
    # Image
    # @image = doc.at_css(image_selector)[:src]
    @image = doc.at_css(image_selector)[:src]
    # Ingredient list
    @ingredient_list = doc.css(ingredient_list_selector)
    # Directions
    @directions_list = doc.css(direction_list_selector)

    @recipe_scrape             = RecipeScrape.new
    @recipe_scrape.title       = @title
    @recipe_scrape.description = @description
    @recipe_scrape.remote_image_url = @image
    @recipe_scrape.save

    @directions_list.each do |direction|
      @step_scrape           =  StepScrape.new
      @step_scrape.body      =  direction.text
      @step_scrape.recipe_scrape_id = @recipe_scrape.id
      @step_scrape.save unless @step_scrape.body == ""
    end

    @ingredient_list.each do |ingredient|
      @ingredient_scrape                  = IngredientScrape.new
      @ingredient_scrape.ingredient       =  ingredient.text
      @ingredient_scrape.recipe_scrape_id = @recipe_scrape.id
      @ingredient_scrape.save unless @ingredient_scrape.ingredient == "Add all ingredients to list"
    end

    redirect_to scrape_recipe_path(@recipe_scrape)
  end

  def show
    @recipe_scrape = RecipeScrape.find params[:id]
  end

  def destroy
    @recipe_scrape = RecipeScrape.find params[:id]
    @recipe_scrape.destroy
    redirect_to root_path
  end


end
