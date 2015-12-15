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
    @image = doc.at_css(image_selector)[:src]
    # Ingredient list
    @ingredient_list = doc.css(ingredient_list_selector)
    # Directions
    @directions_list = doc.css(direction_list_selector)

    @recipe             = Recipe.new
    @recipe.title       = @title
    @recipe.description = @description
    @recipe.save

    @directions_list.each do |direction|
      @step           = Step.new
      @step.body      =  direction.text
      @step.recipe_id = @recipe.id
      @step.save unless @step.body == ""
    end

    redirect_to @recipe
  end

  def show

  end

end
