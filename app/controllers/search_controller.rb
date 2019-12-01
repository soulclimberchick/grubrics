require "edamam/recipe"

class SearchController < ApplicationController
  def new
  end

  def results
    @results = Edamam::Recipe.search(params[:search][:q])
    render :results
  end
end
