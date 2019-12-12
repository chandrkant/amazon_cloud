class ErrorsController < ApplicationController
  def handle_root_not_found
    json_response({message: 'route not found', status: 404}, 404)
  end
end
