class VisualizationsController < ApplicationController

  def index
    # @response = HTTParty.get('http://bl.ocks.org//mbostock/raw/4090846/world-50m.json')

  end


  def country_data
    # Countries and number of records in that country
    sql = 'SELECT final_cc_cname_di as name, COUNT (*) as num FROM records GROUP BY final_cc_cname_di;'
    country_num = Record.connection.execute(sql)

    features = country_num.map do |record|
      country = Country.find_by(name: record['name'])
      { "type" => "Feature", "properties" => { "name" => record['name'],  "numberRecords" => record['num'] }, "geometry" => { "type" => "Point", "coordinates" => [ country.lng, country.lat ] } }
    end

    render json: features.to_json
  end

end
