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



    @directions_array = @directions_list.map {|direction| direction.text}

    @recipe = Recipe.new

    @recipe.title = @title
    @recipe.description = @description
    # @recipe.steps = @directions_array

    # @recipe.image = @image


    # @recipe.save

    # redirect_to @recipe
    render text: @directions_list.class
  end

  def show

  end

end
