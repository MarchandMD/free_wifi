class MapsService
  def get_places(params)
    get_url("/v2/places", params)
  end

  def search_results(category)
    get_url("/v2/places", categories: category)
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.geoapify.com/") do |faraday|
      faraday.params['apiKey'] = ENV.fetch('maps_api_key', nil)
      faraday.params['filter'] = "circle:-105.270546,40.014984,20000"
      faraday.params['limit'] = "500"
      faraday.params['conditions'] = "internet_access.free"
    end
  end
end
