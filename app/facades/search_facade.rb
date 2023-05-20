class SearchFacade
  def search_results(category)
    response = service.search_results(category)
  end

  def service
    MapsService.new
  end

  def select_options
    %w[accommodation activity adult airport amenity beach administrative postal_code political low_emission_zone building camping catering commercial education childcare entertainment healthcare heritage traffic_signals highway leisure man_made natural national_park office parking pet island populated_place production public_transport religion rental service ski sport tourism]
  end
end
