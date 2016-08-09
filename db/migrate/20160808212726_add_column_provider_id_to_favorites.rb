class AddColumnProviderIdToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :provider_id, :integer
  end
end
