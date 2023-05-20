class SearchController < ApplicationController
  def index
    @search_results = SearchFacade.new.search_results(params['category'])[:features] if params.include? 'category'
  end
end
