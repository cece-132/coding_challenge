class BitlinkClick < ApplicationRecord
  validates_presence_of :bitlink, :user_agent,
                        :timestamp, :referrer,
                        :remote_ip
end
