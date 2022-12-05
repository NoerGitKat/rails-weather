class HomeController < ApplicationController
  def index
    data = CurrentWeatherService.new(latitude: 44.34, longitude: 10.99, units: 'metric').call
    @weather = Weather.new(data)
  end
end
