
namespace :country do

  desc 'populate latitude and longitude'
  task :lat_long => :environment do

    Country.all.each do |country|

      @response = HTTParty.get ('http://maps.google.com/maps/api/geocode/json?address='+ country.name.gsub(' ', '+').downcase)
      begin
        puts '...'  + country.name
        location = @response['results'].first['geometry']['location']

        country.lat = location['lat']
        country.lng = location['lng']
        country.save
        sleep 1
      rescue
        puts 'could not find Lat Long for ' + country.name
      end
    end

  end

  desc 'populate country table'
  task :generate_countries => :environment do
    Country.delete_all
    puts '...workin'
    sql = 'SELECT final_cc_cname_di FROM records GROUP BY final_cc_cname_di;'
    countries = Record.connection.execute(sql).map{ |country_name| country_name['final_cc_cname_di'] }.uniq
    countries.each do |country|
      puts country
      Country.create({name: country})
    end
  end

end


# bin/rake country:generate_countries
# bin/rake country:lat_long
