class MapsService
  def get_places(params)
    get_url("/v2/places", params)
  end

  def get_url(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.geoapify.com/") do |faraday|
      faraday.params['apiKey'] = ENV['maps_api_key']
    end
  end
end

