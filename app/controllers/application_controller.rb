class ApplicationController < ActionController::API

  rescue_from 'ActiveRecord::InvalidForeignKey' do |error|
    render json: error, status: 500
  end

end
