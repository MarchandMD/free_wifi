class SearchController < ApplicationController
  def index
    if params.include? 'category'
      @search_results = SearchFacade.new.search_results(params['category'])[:features]
    end
    @options = SearchFacade.new.select_options
  end
end
