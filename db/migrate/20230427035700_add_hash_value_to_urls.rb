class AddHashValueToUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :urls, :hash_value, :string
  end
end
