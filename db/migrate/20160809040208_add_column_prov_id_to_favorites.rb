class AddColumnProvIdToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :provider_id, :string
  end
end
