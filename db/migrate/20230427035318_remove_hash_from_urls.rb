class RemoveHashFromUrls < ActiveRecord::Migration[5.2]
  def change
    remove_column :urls, :hash, :string
  end
end
