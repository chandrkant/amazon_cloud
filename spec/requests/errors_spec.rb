require 'rails_helper'

RSpec.describe 'No route match', type: :request do
  let!(:amazon_cloud_fronts) { create_list(:amazon_cloud_front, 10) }
  describe 'GET /any_unknown_route' do
    before { get "/any_unknown_route" }

    context 'when route dose not exist' do
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
    end
  end
end
