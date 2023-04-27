class CreateBitlinkClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :bitlink_clicks do |t|
      t.string :bitlink
      t.string :user_agent
      t.string :timestamp
      t.string :referrer
      t.string :remote_ip

      t.timestamps
    end
  end
end
