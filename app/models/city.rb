class City < ApplicationRecord
  def self.sorting_all(sorting_params)
    cities = City.all
    sorting_params.permit!
    sorting_params = sorting_params.to_h
    sorting_params.each do |p|
      cities = cities.order("#{p.last[:arg]} #{p.last[:order]}")
    end
    return cities
  end
end
