require 'csv'

namespace :property_task do
  desc "TODO"
  task import_states_csv: :environment do
  CSV.foreach('states.csv', headers: true) do |row|
      State.create! row.to_hash
    end
  end

  desc "TODO"
  task import_cities_csv: :environment do
    CSV.foreach('cities.csv', headers: true) do |row|
      City.create! row.to_hash
    end
  end

end
