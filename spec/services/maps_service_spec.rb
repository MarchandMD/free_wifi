describe 'MapsService' do
  describe 'get_places' do
    it 'returns a list of places' do
      service = MapsService.new
      params = {
        categories: "catering",
        conditions: "internet_access",
        limit: 500,
        filter: "circle:-105.270546,40.014984,16000"
      }

      response = service.get_places(params)
    end
  end
end
