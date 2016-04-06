class GooglesController < ApplicationController
  before_action :client 
  def index
    spots = client.spots(40.7435131,-111.932173, :types => 'restaurant')
    random = rand(8)
    @spots = spots[random]
  end

  private

  def client
    @client = GooglePlaces::Client.new(ENV['API_KEY'])
  end
end
