class SearchFacade
  def search_results(category)
    service.search_results(category)
  end

  def service
    MapsService.new
  end
end
