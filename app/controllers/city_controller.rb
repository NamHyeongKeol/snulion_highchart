class CityController < ApplicationController
  def index
    @cities = City.all
  end

  def sorting
    @cities = City.sorting_all(params[:sorting_params])
  end
end
