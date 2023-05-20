class RestaurantsController < ApplicationController
  def index
    params = {
      categories: "catering",
      conditions: "internet_access",
      limit: 500,
      filter: "circle:-105.270546,40.014984,16000"
    }
    @restaurants = MapsService.new.get_places(params)
  end
end
