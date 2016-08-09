class AddColumnToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :bed_count, :integer
  end
end
