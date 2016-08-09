class RemoveColumnProviderIdFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :provider_id, :integer
  end
end
