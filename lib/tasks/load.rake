require 'csv'
require 'json'
require 'date'

namespace :load do
    desc "Imports encodes/decodes CSV file into an ActiveRecord table"

    task :urls => :environment do
      file = './db/data/encodes.csv'
      CSV.foreach(file, :headers => true) do |row|
        hash = { :long_url => row['long_url'],
                 :domain => row['domain'],
                 :hash_value => row['hash']
                }
        Url.create(hash)
      end
      puts "URL's Complete"
    end

    task :bitlink_clicks => :environment do
      file_path = './db/data/decodes.json'
      data = JSON.parse(File.read(file_path))
      data.each do |row|
        row['timestamp'] = Date.parse(row['timestamp'])
        BitlinkClick.create(row).update_column(:timestamp, row['timestamp'] )
      end
      puts "Bitlink Clicks Complete"
    end
end

