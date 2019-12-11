require 'rails_helper'

RSpec.describe 'amazon_cloud_fronts API', type: :request do
  let!(:amazon_cloud_fronts) { create_list(:amazon_cloud_front, 10) }
  describe 'GET /service/AmazonCloudFront/region/:region' do
    before { get "/service/AmazonCloudFront/region/us-east-1" }

    context 'when the record exists' do
      it 'returns the on demand' do
        expect(json).not_to be_empty
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
