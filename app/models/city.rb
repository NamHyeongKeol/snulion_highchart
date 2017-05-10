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

  def self.charting_all(charting_params)
    data = {
      series: [{
        name: "City",
        colorByPoint: true,
        data: City.pluck(:name,:population)
      }]
    }
    #charting_params.permit!
    #charting_params = charting_params.to_h
    return data
  end
end
