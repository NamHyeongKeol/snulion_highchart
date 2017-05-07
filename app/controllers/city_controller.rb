class CityController < ApplicationController
  def index
    @cities = City.all
  end

  def sorting
    @cities = City.sorting_all(params[:sorting_params])

    # app/views/sorting.html.erb가 없으면 없어도 되는 부분
    respond_to do |format|
      format.js
    end
  end
end
