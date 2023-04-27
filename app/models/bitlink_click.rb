
require 'date'

class BitlinkClick < ApplicationRecord
  validates_presence_of :bitlink, :user_agent,
                        :timestamp, :referrer,
                        :remote_ip

  def self.find_links_from_2021
    bitlink_hash(self.where("timestamp LIKE ?", "%2021%"))
  end

  def self.bitlink_hash(collection)
    hash = {}
    collection.each do |bitlink|
      if hash[bitlink.bitlink.chars.last(7).join]
        hash[bitlink.bitlink.chars.last(7).join] += 1
      else
        hash[bitlink.bitlink.chars.last(7).join] = 1
      end
    end
    [hash]
    # [Url.link_hash_names(hash)]
  end
end
