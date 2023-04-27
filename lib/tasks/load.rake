require 'csv'
require 'json'

namespace :load do
    desc "Imports encodes CSV file into an ActiveRecord table"

    task :urls => :environment do
      file = './db/data/encodes.csv'
      CSV.foreach(file, :headers => true) do |row|
        Url.create!(row.to_hash)
      end
      ActiveRecord::Base.connection.reset_pk_sequence!(:urls)
      puts "URL's Complete"
    end

    task :bitlink_clicks => :environment do
      file = './db/data/decodes.json'
      data = JSON.parse(file)
      data.foreach(file) do |row|
        BitlinkClick.create!(row.to_hash)
      end
      ActiveRecord::Base.connection.reset_pk_sequence!(:bitlink_clicks)
      puts "'Items' Complete"
    end
  end
end