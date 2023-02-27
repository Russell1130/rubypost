require 'rails_helper'
require 'spec_helper'

RSpec.describe 'Hotel requests' do
  describe 'Hotels API', type: :request do
    it 'returns a status message Ok if the request is successful' do
      get('http://localhost:3000/api/v1/hotels')

      json = JSON.parse(response.body)

      expect(json['status']).to eql('ok')
    end
  end
end
