class Url < ApplicationRecord
  validates_presence_of :long_url, :domain, :hash_value

  # def self.link_hash_names(hash)
  #   view_value = hash
  #   hash.each do |key, value|
  #     new_key = self.where(hash_value: key)
      
  #     if !new_key.empty?
  #       view_value[self.where(hash_value: 'key')] = value
  #     end
  #   end
  # end
end
