require "edamam/recipe"

class SearchController < ApplicationController
  def new
  end

  def results
    @results = Edamam::Recipe.search(params[:search][:q]).map do |result|
      Recipe.new(result['recipe'])
    end
    render :results
  end
end
