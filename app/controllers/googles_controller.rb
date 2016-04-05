class GooglesController < ApplicationController
  def index
    binding.pry
  end

  private

  def client
    @client ||= GooglePlaces::Client.new do |config|
      config.api_key = ENV['API_KEY']
    end
  end

end
