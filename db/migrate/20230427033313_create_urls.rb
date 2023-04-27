class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :domain
      t.string :hash

      t.timestamps
    end
  end
end
