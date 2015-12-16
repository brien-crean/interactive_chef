class PresentationsController < ApplicationController
  layout 'presentation'

  def show
    @recipe = Recipe.find params[:id]
    
  end

end
