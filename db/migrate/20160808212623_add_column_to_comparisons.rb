class AddColumnToComparisons < ActiveRecord::Migration
  def change
    add_column :comparisons, :user_id, :integer
  end
end
