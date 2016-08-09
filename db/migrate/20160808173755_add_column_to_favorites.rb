class AddColumnToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :notes, :string
  end
end
