class AmazonCloudFrontsController < ApplicationController
  def index
    json_response(AmazonCloudFront.fetch_api)
  end
  def price_data
    json_response(AmazonCloudFront.response_data(params[:date],params[:region]))
  end
end
