class BitlinkClicksController < ApplicationController

  def index
    @bitlinks_from_year = BitlinkClick.find_links_from_2021
    # @bitlink_stats = BitlinkClick.bitlink_hash(@bitlinks_from_year)
  end

end
