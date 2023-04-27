class Url < ApplicationRecord
  validates_presence_of :long_url, :domain, :hash_value
end
