class SearchFacade
  def search_results(params)
    service.search_results(params)
  end

  def service
    MapsService.new
  end
end
