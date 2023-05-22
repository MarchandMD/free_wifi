class MapsService
  def get_places(params)
    get_url("/v2/places", params)
  end

  def search_results(params)
    get_url("/v2/places", { categories: params[:category], conditions: params[:conditions], filter: "circle:-105.270546,40.014984,20000" })
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.geoapify.com/") do |faraday|
      faraday.params['apiKey'] = ENV.fetch('maps_api_key', nil)
      faraday.params['limit'] = "500"
    end
  end
end
